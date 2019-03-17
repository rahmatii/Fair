#ifndef SERVICES_H
#define SERVICES_H

#include <QObject>
#include <QQmlContext>
#include <QVariant>


class QString;
class Services: public QObject
{
    Q_OBJECT
public:
    Services(QQmlContext *ctxt);
    ~Services();
    Q_INVOKABLE void setDataSmartCity(QStringList data , int i);
    Q_INVOKABLE void setDataVirtual(QStringList data , int i);
    Q_INVOKABLE QStringList fillMenu();
    Q_INVOKABLE void addToFile(QString ,int,QStringList);
private:
    QQmlContext *m_ctxt;
};

#endif // SERVICES_H
