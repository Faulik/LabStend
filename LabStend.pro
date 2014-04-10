#-------------------------------------------------
#
# Project created by QtCreator 2014-04-10T20:03:15
#
#-------------------------------------------------

QT       += core gui printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = LabStend
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    lib/qcpdocumentobject.cpp \
    lib/qcustomplot.cpp

HEADERS  += mainwindow.h \
    lib/qcpdocumentobject.h \
    lib/qcustomplot.h

FORMS    += mainwindow.ui
