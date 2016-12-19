import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {

    property color colorLight : "#ff0000"
    property variant delay    : 100
    property variant digits   : []
    property string text;

    width : 1087
    height: 210
    color : "#000000"

    Row {
        id: row1

        Repeater {
            id      : rep
            model   : 9
            Rectangle {
                id    :rect1
                y     : (model.index>6) ? 50 : 0
                width : (model.index>6) ? 64 : 129
                height: 213
                scale : (model.index > 6) ? 0.5 : 1
                Digit {
                    colorOFF: 0x1f1f1f
                    colorON : colorToNumber (colorLight);
                    id      : dig1
                    tdelay  : delay
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
        var d=0;
        var padding=0;
        for (var n=0; n<digits.length+padding;n++,d++) {
            digits[d].state = string[n];
            if ( string[n+1] === "." ) {
                digits[d].point(true);
                n+=1;
                padding++;
            } else {
                digits[d].point(false);
            }
        }
    }
}
