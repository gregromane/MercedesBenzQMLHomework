#include <QFile>
#include <QTextStream>
#include <QDebug>

#include "filehandler.h"




fileHandler::fileHandler(QObject *parent)
    : QObject(parent)
{
    // once the object is created open and parse the file so we can access it from memory

    parseFile();
}


fileHandler::~fileHandler()
{

}


QObject *fileHandlerCallBack(QQmlEngine *engine, QJSEngine *scriptEngine)
{
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    fileHandler *fileHandlerInstance = new fileHandler();

    return fileHandlerInstance;
}


/******************************************************************************
 * Function Name: parseFile
 *
 * Function Inputs: None
 *
 * Function Outputs: None
 *
 * Description: This function parses a text file and places it into an array
 *              for use within the gui
 *
 *****************************************************************************/

void fileHandler::parseFile()
{
    QFile file(fileNameAndPath);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        return;
    }

    QTextStream in(&file);

    QString line = in.readLine();

    QString paragraph = "";


    while (!line.isNull())
    {

        paragraph = paragraph + "\n" + line;

        if (line.startsWith(lastCpuToken))
        {
            cpuInfoList << paragraph;

            paragraph = "";
        }

        // qDebug() << "line = " + line;

        line = in.readLine();

    }
}





/******************************************************************************
 * Function Name: getCpuInfo
 *
 * Function Inputs: None
 *
 * Function Outputs: QStringList of each CPU information
 *
 * Description: This function allows the gui to access the array created from
 *              the file
 *
 *****************************************************************************/
QStringList fileHandler::getCpuInfo()
{
    return cpuInfoList;
}


