#ifndef FILEHANDLER_H
#define FILEHANDLER_H

#include <QObject>
#include <QtQml>
#include <QStringList>

extern QObject *fileHandlerCallBack(QQmlEngine *engine, QJSEngine *scriptEngine);

class fileHandler : public QObject
{
    Q_OBJECT

public:

    explicit fileHandler(QObject *parent = 0);
    ~fileHandler();

    Q_INVOKABLE QStringList getCpuInfo();

private:

    const QString fileNameAndPath = "/proc/cpuinfo";
    const QString lastCpuToken = "power management";

    QStringList cpuInfoList;

    void parseFile();
};

#endif // FILEHANDLER_H
