import QtQuick 2.4
import QtQuick.Window 2.2

import QtQuick.Controls 1.3

import FileHandler 1.0




Window
{
    visible: true

    property alias mouseArea: mouseArea

    width: 1000
    height: 1000


    property var cpuInfoText: []

    property string cpu1Info: ""
    property string cpu2Info: ""
    property string cpu3Info: ""
    property string cpu4Info: ""
    property string cpu5Info: ""
    property string cpu6Info: ""
    property string cpu7Info: ""
    property string cpu8Info: ""
    property string cpu9Info: ""
    property string cpu10Info: ""



    //------------------------------------------------------------------------------
    // populate information for each property string to be displayed in each
    // separate textedit item in each tab
    //------------------------------------------------------------------------------


    Component.onCompleted:
    {
        cpuInfoText = FileHandler.getCpuInfo();

        // console.log("cpuInfoText.length = " + cpuInfoText);
        // console.log("cpuInfoText = " + cpuInfoText);

        for (var i = 0; i < cpuInfoText.length; i++)
        {
            switch (i)
            {
                case 0:
                    cpu1Info = cpuInfoText[i];
                    break;

                case 1:
                    cpu2Info = cpuInfoText[i];
                    break;

                case 2:
                    cpu3Info = cpuInfoText[i];
                    break;

                case 3:
                    cpu4Info = cpuInfoText[i];
                    break;

                case 4:
                    cpu5Info = cpuInfoText[i];
                    break;

                case 5:
                    cpu6Info = cpuInfoText[i];
                    break;

                case 6:
                    cpu7Info = cpuInfoText[i];
                    break;

                case 7:
                    cpu8Info = cpuInfoText[i];
                    break;

                case 8:
                    cpu9Info = cpuInfoText[i];
                    break;

                case 9:
                    cpu10Info = cpuInfoText[i];
                    break;

            }
        }
    }


    MouseArea
    {
        id: mouseArea

        anchors.fill: parent
    }


    TabView
    {
        id: processorTabView

        width: parent.width
        height: parent.height


        Tab
        {
            id: tab1

            title: "CPU 1"

            TextEdit
            {
                id: tab1TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu1Info
            }
        }


        Tab
        {
            id: tab2

            title: "CPU 2"

            // visible:

            TextEdit
            {
                id: tab2TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu2Info
            }
        }



        Tab
        {
            id: tab3

            title: "CPU 3"

            TextEdit
            {
                id: tab3TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu3Info
            }
        }


        Tab
        {
            id: tab4

            title: "CPU 4"

            TextEdit
            {
                id: tab4TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu4Info
            }
        }


        Tab
        {
            id: tab5

            title: "CPU 5"

            TextEdit
            {
                id: tab5TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu5Info
            }
        }


        Tab
        {
            id: tab6

            title: "CPU 6"

            TextEdit
            {
                id: tab6TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu6Info
            }
        }



        Tab
        {
            id: tab7

            title: "CPU 7"

            TextEdit
            {
                id: tab7TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu7Info
            }
        }


        Tab
        {
            id: tab8

            title: "CPU 8"

            TextEdit
            {
                id: tab8TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu8Info
            }
        }

        Tab
        {
            id: tab9

            title: "CPU 9"

            TextEdit
            {
                id: tab9TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu9Info
            }
        }


        Tab
        {
            id: tab10

            title: "CPU 10"

            TextEdit
            {
                id: tab10TextEdit

                width: parent.width
                height: parent.height

                anchors.centerIn: parent

                text: cpu10Info
            }
        }

    }
}
