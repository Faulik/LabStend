#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtCore>
#include <QtGui>
#include <QLabel>

#include <poppler/qt5/src/poppler-qt5.h>

#include <tabledata.h>
#include <QtCore/QCoreApplication>
#include <QtCore/QDebug>

#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public slots:

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void plotGraph(int section, TableDataModel* model, QCustomPlot *customPlot);
    void buildText(TableDataModel* model);
    void printToPdf();
    void openSerialPort(QString PortName);
    void writeData(const QByteArray &data);
private slots:
    void updateTime();
    void readData();
    void checkPorts();
    void closeSerialPort();
private:
    Ui::MainWindow *ui;
    QLabel *mcStatusColor;
    QLabel *mcStatusText;
    QLabel *timeStatus;
    QLabel *dateStatus;
    TableDataModel *model1;
    QVector<QVector<double> > plotData1;
    QSerialPort *serial;
    QGraphicsScene scene;
protected:
    void closeEvent(QCloseEvent *event);
};

#endif // MAINWINDOW_H
