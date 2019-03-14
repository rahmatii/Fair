#include "services.h"
#include <QFile>
#include <QtCore>
#include <QQmlContext>
#include <QVariant>


Services::Services(QQmlContext *ctxt)
{
    m_ctxt = ctxt;
}

Services::~Services(){}

void Services::setDataSmartCity(QStringList data, int i)
{
    QString counter=QString::number(i);;

    QString filenam="formClub/Data"+counter;
    QString filename=filenam+".txt";
    QFile file( filename );
    QString name="نام و نام خانوادکی: ";
    QString startup="شماره تماس: ";
    QString context="شماره تلگرام: ";
    QString num="محصول مورد علاقه: ";

    if ( file.open(QIODevice::ReadWrite | QIODevice::Text) )
    {

        QTextStream stream( &file );

        stream.setCodec("UTF-8");
        stream << name<< endl;
        stream << data.at(0)<<endl;
        stream << startup << endl;
        stream << data.at(1)<<endl;
        stream << context<<endl;
        stream <<data.at(2)<<endl;
        stream << num<<endl;
        stream <<data.at(3)<<endl;
        stream <<data.at(4)<<endl;
        stream <<data.at(5)<<endl;


    }


}
void Services::setDataVirtual(QStringList data , int i)
{
    QString counter=QString::number(i);;

    QString filenam="formSmartCity/Data"+counter;
    QString filename=filenam+".txt";
    QFile file( filename );
    QString name="نام: ";
    QString num="شماره تلفن: ";
    QString idea="نظرات: ";
    if ( file.open(QIODevice::ReadWrite | QIODevice::Text) )
    {

        QTextStream stream( &file );

        stream.setCodec("UTF-8");
        stream << name<< endl;
        stream << data.at(0)<<endl;
        stream << num << endl;
        stream << data.at(1)<<endl;
        stream << idea<<endl;
        stream <<data.at(2)<<endl;
    }
}

void Services::showDir()
{
    QString path = "C:/Qt/Qt5.9.1"; // assume it is some path

    QDir dir( path );

    dir.setFilter( QDir::AllEntries | QDir::NoDotAndDotDot );

    int total_files = dir.count();
    qDebug()<<"count : "<<total_files;
}
