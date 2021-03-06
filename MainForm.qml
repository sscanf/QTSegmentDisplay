import QtQuick 2.6
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.5

Rectangle {
    property alias mouseArea: mouseArea
    property alias text : lcd.text
    signal startClicked()
    signal stopClicked()

    id : mainWindow
    anchors.fill: parent
    color: "#000000"

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        ColumnLayout {
            x: 34
            y: 28
            width: 299

            Rectangle {
                id: rectangle1
                color: "#ff0000"
                width: 300
                height: 100
                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent
                    onClicked: {
                        lcd.colorLight=rectangle1.color
                    }

                    Text {
                        id: text1
                        x: 68
                        y: 25
                        width: 209
                        height: 26
                        color: "#ffffff"
                        text: qsTr("Click to change color")
                        font.bold: true
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                    }
                }
            }

            Rectangle {
                id              : rectangle2
                color           : "#00ff00"
                width: 300
                height: 100
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lcd.colorLight=rectangle2.color
                    }

                    Text {
                        id    : text2
                        x     : 68
                        y     : 25
                        width : 209
                        height: 26
                        color : "#ffffff"
                        text  : qsTr("Click to change color")
                        horizontalAlignment: Text.AlignHCenter
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            Rectangle {
                id: rectangle3
                color: "#0000ff"
                width: 300
                height: 100
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lcd.colorLight=rectangle3.color
                        console.log (lcd.colorHight);
                    }

                    Text {
                        id    : text3
                        x     : 68
                        y     : 25
                        width : 209
                        height: 26
                        color : "#ffffff"
                        text  : qsTr("Click to change color")
                        horizontalAlignment: Text.AlignHCenter
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }

            RowLayout {
                Layout.minimumWidth: 0
                Layout.fillHeight: true
                Layout.fillWidth: true

                Slider {
                    id                   : sliderHorizontal1
                    Layout.preferredWidth: 300
                    maximumValue         : 20
                    minimumValue         : 1
                    value                : 100
                    onValueChanged: {
                        text4.text = value.toFixed(0);
                        lcd.delay = value.toFixed(0);
                    }
                }

                Text {
                    id: text4
                    color: "#ffffff"
                    text: qsTr("1")
                    font.family: "Courier"
                    verticalAlignment: Text.AlignVCenter
                    Layout.fillWidth: false
                    horizontalAlignment: Text.AlignLeft
                    Layout.preferredWidth: 27
                    font.pixelSize: 29
                }
            }

            RowLayout {
                Layout.fillHeight: false
                Layout.fillWidth: false

                Button {
                    id: start
                    text: qsTr("Start")
                    checkable: false
                    Layout.preferredHeight: 48
                    Layout.preferredWidth: 117
                    onClicked: {
                        mainWindow.startClicked()
                    }
                }

                Button {
                    id: stop
                    text: qsTr("Stop")
                    Layout.preferredHeight: 48
                    Layout.preferredWidth: 117
                    onClicked: {
                        mainWindow.stopClicked()
                    }
                }
            }
            Display {
                id: lcd
            }
        }
    }
}
