import QtQuick 2.6

Rectangle {
    property alias mouseArea: mouseArea
    property alias text : lcd.text
    width: 1680
    height: 1050
    color: "#000000"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Row {
        Lcd {
            id: lcd
            text: "000000000"
        }
    }
}
