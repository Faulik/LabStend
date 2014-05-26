#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLabel>
#include <QString>
#include <QTimer>
#include <QFile>
#include <QtCore/QCoreApplication>
#include <QtCore/QDebug>

#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>

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

    QTimer *timer = new QTimer(this);
    timer->setInterval(1000);
    connect(timer,SIGNAL(timeout()),this, SLOT(updateTime()));
    timer->start();
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
    Poppler::Page* pdfPage = document->page(0);
    if (pdfPage == 0) {
      return;
    }
    QImage image = pdfPage->renderToImage();
    if (image.isNull()) {
      return;
    }
    ui->label_3->setPixmap(QPixmap::fromImage(image));
    delete pdfPage;

    foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
            qDebug() << "Name        : " << info.portName();
            qDebug() << "Description : " << info.description();
            qDebug() << "Manufacturer: " << info.manufacturer();

            // Example use QSerialPort
            QSerialPort serial;
            serial.setPort(info);
            if (serial.open(QIODevice::ReadWrite))
                serial.close();
        }

    model1 = new TableDataModel(5, 8);
    ui->tableView->setSelectionMode(QAbstractItemView::SingleSelection);
    model1->initTable(model1, ui->tableView);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::updateTime()
{
    timeStatus->setText(QTime::currentTime().toString("hh:mm:ss"));
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
