/*
    SPDX-FileCopyrightText: zayronxio
    SPDX-License-Identifier: GPL-3.0-or-later
*/
import QtQuick 2.12
import QtQuick.Layouts 1.12
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    id: root

    Plasmoid.preferredRepresentation: Plasmoid.fullRepresentation
    Plasmoid.backgroundHints: PlasmaCore.Types.ConfigurableBackground

    property string dayfulltext: Qt.formatDateTime(new Date(), "dddd")
    property string dayfullNum: Qt.formatDateTime(new Date(), "dd")
    property string mesfulltext: Qt.formatDateTime(new Date(), "MMMM")

    FontLoader {
    id: anton
    source: "../fonts/Montserrat-ExtraBold.ttf"
    }
    Plasmoid.fullRepresentation: ColumnLayout {
        id: base
        Layout.minimumWidth: 300
        Layout.minimumHeight: 300
        Layout.preferredWidth: Layout.minimumWidth
        Layout.preferredHeight: Layout.minimumHeight
        Column {
            Layout.preferredWidth: day.height*3
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Row {
            id: day
            height: (base.height < base.width) ? base.height/3 : base.width/3
            width: (height*3)*.6
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: dayfulltext[0]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                font.weight: "Black"
                color: "white"
            }
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: dayfulltext[1]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                font.weight: Font.Black
                color: "white"
            }
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: dayfulltext[2]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
        }
        Row {
            id: mes
            width: day.width
            height: day.height
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: mesfulltext[0]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: mesfulltext[1]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: mesfulltext[2]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
        }
        Row {
            id: time
            width: day.width
            height: day.height
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: dayfullNum[0]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
            Text {
                width: parent.width/3
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: height/2.5
                text: dayfullNum[1]
                font.capitalization: Font.Capitalize
                font.family: anton.name
                color: "white"
            }
        }
        }
    }
    Timer {
        id: timer
        interval: 8.64e+7-((new Date().getHours()*60*60*1000)+(new Date().getMinutes()*60*1000)+(new Date().getSeconds()*1000)+new Date().getMilliseconds())
        running: true
        repeat: true
        onTriggered: {
            dayfulltext = Qt.formatDateTime(new Date(), "dddd")
            dayfullNum = Qt.formatDateTime(new Date(), "dd")
            mesfulltext = Qt.formatDateTime(new Date(), "MMMM")
            timer.interval = 8.64e+7-((new Date().getHours()*60*60*1000)+(new Date().getMinutes()*60*1000)+(new Date().getSeconds()*1000)+new Date().getMilliseconds())
        }
    }
}
