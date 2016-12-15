import QtQuick 2.0

Rectangle {

    property string text;

    id: rectangle1
    width: 1087
    height: 210
    color: "#000000"

    Row {
        id: row1
        spacing: 10
        Repeater {
        model: 9
        Digit {
        }
      }
    }


    //Component.onCompleted: {
    //    writeString (text);
   // }
 /*
    onTextChanged: {
        writeString (text);
    }

    function writeString (string) {

        for (var n=0; n<string.length;n++) {
            var object;
            object = rectangle1.children[n];
            if (object !== undefined)
                object.state = string[n];
        }
    }*/

}
