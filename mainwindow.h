#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtCore>
#include <QtGui>
#include <QLabel>

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

private slots:
    void updateTime();
private:
    Ui::MainWindow *ui;
    QLabel *mcStatusColor;
    QLabel *mcStatusText;
    QLabel *timeStatus;
    QLabel *dateStatus;
};

#endif // MAINWINDOW_H
