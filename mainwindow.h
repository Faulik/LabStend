#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtCore>
#include <QtGui>
#include <QLabel>

#include <e:/Dev/Git/poppler/poppler/qt5/src/poppler-qt5.h>

#include <tabledata.h>

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

private slots:
    void updateTime();
private:
    Ui::MainWindow *ui;
    QLabel *mcStatusColor;
    QLabel *mcStatusText;
    QLabel *timeStatus;
    QLabel *dateStatus;
    TableDataModel *model1;
    QVector<QVector<double> > plotData1;
};

#endif // MAINWINDOW_H
