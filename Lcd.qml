import QtQuick 2.0

Rectangle {

    property string text;
    property variant digits: [];

    width: 1087
    height: 210
    color: "#000000"


    Row {
        id: row1
        Repeater {
            id: rep
            model: 9
            Rectangle {
                y : (model.index>6) ? 50 : 0
                width : (model.index >6) ? 64: 129
                height: 213
                scale : (model.index > 6) ? 0.5 : 1
                Digit {
                    id: dig1
                    Component.onCompleted: {
                        digits.push(dig1);
                    }
                }
            }
        }
    }

    onTextChanged: {
        writeString (text);
    }

    function writeString (string) {
        for (var n=0; n<digits.length;n++) {
            digits[n].state = string[n];
        }
    }
}
