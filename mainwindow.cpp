#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLabel>
#include <QTimer>

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
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::updateTime()
{
    timeStatus->setText(QTime::currentTime().toString("hh:mm:ss"));
}
