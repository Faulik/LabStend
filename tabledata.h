#ifndef TABLEDATA_H
#define TABLEDATA_H

#include <QObject>
#include <QMainWindow>
#include "lib/qcustomplot.h"
#include "lib/qcpdocumentobject.h"

class tabledata : public QObject
{
    Q_OBJECT
public:
    explicit tabledata(QObject *parent = 0);

signals:

public slots:

};

class TableDataModel : public QAbstractTableModel
{
 Q_OBJECT

public:
    TableDataModel(int numRows, int numColumns, QObject *parent = 0);
    void initTable(TableDataModel* model, QTableView* table);

    int rowCount(const QModelIndex &parent= QModelIndex()) const;
    int columnCount(const QModelIndex &parent = QModelIndex()) const;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    QVector<double> getRow(int section);
    bool insertColumn(int column, const QModelIndex &parent);
    bool insertRow(int row, const QModelIndex &parent);

    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole);
    void setRow(int section, double *value, TableDataModel* model);

    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
    Qt::ItemFlags flags(const QModelIndex &index) const;
    bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role = Qt::DisplayRole);
private:
    QVector<QVector<double> > doubleData;
    QVector<QString> rowsNames;
    QVector<QString> columnsNames;
    QList<int> selectedRows;
};

#endif // TABLEDATA_H
