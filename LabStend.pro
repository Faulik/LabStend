#-------------------------------------------------
#
# Project created by QtCreator 2014-04-10T20:03:15
#
#-------------------------------------------------

QT       += core gui printsupport serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QMAKE_CXXFLAGS += -Wno-unused-variable -Wno-unused-parameter

TARGET = LabStend
TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    lib/qcpdocumentobject.cpp \
    lib/qcustomplot.cpp \
    tabledata.cpp

HEADERS  += mainwindow.h \
    lib/qcpdocumentobject.h \
    lib/qcustomplot.h \
    tabledata.h

FORMS    += mainwindow.ui

RESOURCES += \
    res.qrc

win32:CONFIG(release, debug|release): LIBS += $$PWD/poppler/qt5/src/libpoppler-qt5.dll
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/poppler/qt5/src/ -llibpoppler-qt5d

INCLUDEPATH += $$PWD/poppler/qt5/src
DEPENDPATH += $$PWD/poppler/qt5/src

win32:CONFIG(release, debug|release): LIBS += $$PWD/poppler/libpoppler.dll
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/poppler/ -llibbpopplerd
else:unix: LIBS += -Lpoppler/ -llibpoppler

INCLUDEPATH += $$PWD/poppler/poppler
DEPENDPATH += $$PWD/poppler/
