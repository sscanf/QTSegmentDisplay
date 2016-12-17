import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    property int counter;

    visible: true
    width: 1680
    height: 1050

    MainForm {
        id: form
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }

    Timer {
        running : true
        repeat  : true
        interval: 10
        onTriggered: {
            counter++;
            var str = counter.toString();
            form.text =  pad(str,9);
        }
    }

    function pad (str, max) {
      return str.length < max ? pad("0" + str, max) : str;
    }
}
