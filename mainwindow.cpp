#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLabel>
#include <QString>
#include <QTimer>
#include <QFile>
#include <QMutex>


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    mcStatusText = new QLabel(this);
    mcStatusColor = new QLabel(this);
    timeStatus = new QLabel(this);
    dateStatus = new QLabel(this);

    mcStatusText->setText("MC Status:");
    mcStatusColor->setStyleSheet("background-color:red");
    mcStatusColor->setFixedWidth(15);

    dateStatus->setText(QDate::currentDate().toString("dd.MM.yy"));

    ui->statusBar->addPermanentWidget(timeStatus);
    ui->statusBar->addPermanentWidget(dateStatus);
    ui->statusBar->addPermanentWidget(mcStatusText);
    ui->statusBar->addPermanentWidget(mcStatusColor);

    QFile f;
    f.setFileName(":/res/pdf/Unit 5. Employment trends (1).pdf");
    f.open(QIODevice::ReadOnly);
    QByteArray r=f.readAll();

    Poppler::Document* document = Poppler::Document::loadFromData(r);
    if (document == 0) {
      return;
    }
    QVector<QGraphicsPixmapItem*> items;
    for (int i = 0; i < document->numPages();i++){
        Poppler::Page* pdfPage = document->page(i);
        if (pdfPage == 0) {
            return;
        }
        QImage image = pdfPage->renderToImage();
        image = image.scaledToWidth(858,Qt::SmoothTransformation);
        if (image.isNull()) {
            return;
        }

        items.append(scene.addPixmap(QPixmap::fromImage(image)));
        items[i]->setPos(0, i*image.height());
        delete pdfPage;
    }
    ui->graphicsView->setScene(&scene);
    ui->graphicsView->setAlignment(Qt::AlignTop);
    ui->graphicsView->show();


    model1 = new TableDataModel(5, 8);
    ui->tableView->setSelectionMode(QAbstractItemView::SingleSelection);
    model1->initTable(model1, ui->tableView);

    //init Serial Port
    serial = new QSerialPort(this);
    connect(serial, SIGNAL(readyRead()), this, SLOT(readData()));

    //Timers
    QTimer *timer = new QTimer(this);
    timer->setInterval(1000);
    //bottom line clock
    connect(timer,SIGNAL(timeout()),this, SLOT(updateTime()));
    //port check
    connect(timer,SIGNAL(timeout()),this,SLOT(checkPorts()));
    timer->start();
}

MainWindow::~MainWindow()
{
    delete ui;
}
void MainWindow::closeEvent (QCloseEvent *event){
    qDebug() << "Closing";
}

void MainWindow::updateTime()
{
    timeStatus->setText(QTime::currentTime().toString("hh:mm:ss"));
}
void MainWindow::checkPorts()
{
    if (serial->portName() != "")
    {
        return;
    }
    foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
        if(info.description() == "STM32"){
            openSerialPort(info.portName());
        }
    }
}

void MainWindow::openSerialPort(QString PortName)
{
    serial->setPortName(PortName);
    serial->setBaudRate(QSerialPort::Baud9600);
    serial->setDataBits(QSerialPort::Data8);
    serial->setParity(QSerialPort::NoParity);
    serial->setStopBits(QSerialPort::OneStop);
    serial->setFlowControl(QSerialPort::HardwareControl);
    if (serial->open(QIODevice::ReadWrite)) {
            qDebug() << "Connected to" << PortName;
            mcStatusColor->setStyleSheet("background-color:green");

    } else {
            qDebug() << "Error";
            serial->close();
    }
}
void MainWindow::closeSerialPort(){
    serial->close();
}
void MainWindow::writeData(const QByteArray &data)
{
    serial->write(data);
}
void MainWindow::readData()
{
    QByteArray data = serial->readAll();
    QList<QString> list;
    for(int i=0;i<10;i++){
        qDebug() << data.mid(i*6,6);
        list << data.mid(i*6,6);
    };
    qDebug() << data;
    qDebug() << list;
}

/*
void MainWindow::plotGraph(int section, TableDataModel* model, QCustomPlot *customPlot)
{

    if(section > model->rowCount()){
        return;
    }
    selectedRows << section;
    if(selectedRows.size()>1)
    {
        QVector<double> xAxis = model->getRow(selectedRows[0]);
        QVector<double> yAxis = model->getRow(selectedRows[1]);
        customPlot->addGraph();
        customPlot->graph(0)->setData(xAxis, yAxis);

        customPlot->xAxis->setLabel(model->headerData(selectedRows[0],Qt::Vertical).toString());
        customPlot->yAxis->setLabel(model->headerData(selectedRows[1],Qt::Vertical).toString());

        qSort(xAxis);
        qSort(yAxis);
        ui->xMin_edit->setText(QString::number(xAxis[0]));
        ui->xMax_edit->setText(QString::number(xAxis[xAxis.size()-1]));
        ui->yMin_edit->setText(QString::number(yAxis[0]));
        ui->yMax_edit->setText(QString::number(yAxis[yAxis.size()-1]));
        customPlot->xAxis->setRange(xAxis[0],xAxis[xAxis.size()-1]);
        customPlot->yAxis->setRange(yAxis[0],yAxis[yAxis.size()-1]);

        customPlot->replot();

        selectedRows.clear();
    }

}

void MainWindow::buildText(TableDataModel* model)
{
    QTextCursor cursor(ui->textBrowser->textCursor());
    QTextTableFormat tableFormat;
    tableFormat.setCellPadding(4);
    tableFormat.setCellSpacing(1);
    int rows = model->rowCount();
    int columns = model->columnCount();
    QTextTable *table = cursor.insertTable(rows,columns+1,tableFormat);
    QTextTableCell cell;
    QTextCursor tableCursor;
    QModelIndex index;
    for(int i=0;i<rows;++i){
        for(int k=0;k<columns+1;++k){
            cell = table->cellAt(i,k);
            tableCursor = cell.firstCursorPosition();
            tableCursor.movePosition(QTextCursor::EndOfBlock,QTextCursor::KeepAnchor);
            if(k==0){
                tableCursor.insertText(model->headerData(i,Qt::Vertical).toString());
            }
            else{
                index = model->index(i,k-1);
                tableCursor.insertText(model->data(index).toString());

            }
        }
    }
    cursor.movePosition(QTextCursor::End,QTextCursor::MoveAnchor);
    ui->textBrowser->setTextCursor(cursor);


    double width = 400;
    double height = 300;

    cursor.insertText(QString(QChar::ObjectReplacementCharacter),
                      QCPDocumentObject::generatePlotFormat(ui->customPlot1,width,height));
}
void MainWindow::printToPdf()
{
    QPrinter printer;
    printer.setPageMargins(2,2,2,2,QPrinter::Millimeter);
    printer.setOutputFormat(QPrinter::PdfFormat);
    printer.setPageSize(QPrinter::A4);
    printer.printRange();
    printer.setOutputFileName("D:\\test.pdf");
    printer.newPage();
    ui->textBrowser->print(&printer);
}
*/
