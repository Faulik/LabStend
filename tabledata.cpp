#include "tabledata.h"

tabledata::tabledata(QObject *parent) :
    QObject(parent)
{
}

void TableDataModel::initTable(TableDataModel* model, QTableView* table)
{
    double row[5][8] = {{1,2,3,4,5,6,7,8},
                      {20,20,21,21,22,22,22,23},
                      {5,6,7,8,9,10,11,12},
                      {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8},
                      {0.5,0.5,0.6,0.6,0.7,0.7,0.8,0.8}};

    model -> setHeaderData(0,Qt::Vertical,"Uin");
    model -> setHeaderData(1,Qt::Vertical,"Uout");
    model -> setHeaderData(2,Qt::Vertical,"Iin");
    model -> setHeaderData(3,Qt::Vertical,"t");
    model -> setHeaderData(4,Qt::Vertical,"y");
    model -> setRow(0,row[0],model);
    model -> setRow(1,row[1],model);
    model -> setRow(2, row[2],model);
    model -> setRow(3, row[3],model);
    model -> setRow(4, row[4],model);
    table->setModel(model);
}

TableDataModel::TableDataModel(int numRows, int numColumns, QObject *parent): QAbstractTableModel(parent)
{
    doubleData.resize(numRows);
    columnsNames.resize(numColumns);
    rowsNames.resize(numRows);
    for(int i=0; i<numRows;++i)
    {
        doubleData[i].resize(numColumns);
    }
}

void TableDataModel::setRow(int section, double *value, TableDataModel* model)
{
    int columns = model->columnCount();
    if(columns > section)
    {
        for (int i=0;i<columns;++i)
        {
            QModelIndex index = model->index(section, i);
            model->setData(index, value[i], Qt::EditRole);
        }
    }
}
int TableDataModel::rowCount(const QModelIndex &parent) const
{
    return doubleData.size();
}
int TableDataModel::columnCount(const QModelIndex &parent) const
{
    if(doubleData.size() != 0){
        return doubleData[0].size();
    }
    return 0;
}
QVariant TableDataModel::data(const QModelIndex &index, int role) const
{
    if(!index.isValid() || role != Qt::DisplayRole)
        return QVariant();
    return doubleData[index.row()][index.column()];
}
QVector<double> TableDataModel::getRow(int section)
{
    QVector<double> data;
    if(section < doubleData.size())
    {
        data = doubleData[section];
    }
    return data;
}
QVariant TableDataModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(role != Qt::DisplayRole)
        return QVariant();
    if(role == Qt::DisplayRole && orientation == Qt::Vertical)
    {
        return rowsNames[section];
    }
    if(role == Qt::DisplayRole && orientation == Qt::Horizontal)
    {
        return columnsNames[section];
    }
    return QVariant();
}
Qt::ItemFlags TableDataModel::flags(const QModelIndex &index) const
{
    Qt::ItemFlags flags = QAbstractItemModel::flags(index);
    flags |= (Qt::ItemIsEditable
             |Qt::ItemIsSelectable
             |Qt::ItemIsUserCheckable
             |Qt::ItemIsEnabled
             |Qt::ItemIsDragEnabled
             |Qt::ItemIsDropEnabled);
    return flags;
}
bool TableDataModel::setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role)
{
    if(orientation == Qt::Vertical && section <= doubleData.size())
    {
        rowsNames[section] = value.toString();
        return true;
    }
    if(orientation == Qt::Horizontal && section <=doubleData[0].size())
    {
        columnsNames[section] = value.toString();
        return true;
    }
    return false;
}
bool TableDataModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(index.isValid() && role == Qt::EditRole)
    {
        const int row = index.row();
        const int column = index.column();
        doubleData[row][column] = value.toDouble();
        emit dataChanged(index, index);
        return true;
    }
    return false;
}
