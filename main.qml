import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    property real counter;

    visible: true
    width: 1680
    height: 1050

    MainForm {
        id: form
        onStartClicked: {
            timer.start();
        }

        onStopClicked: {
            timer.stop();
        }
    }

    Timer {
        id: timer
        running : true
        repeat  : true
        interval: 10
        onTriggered: {
            counter+=0.01;
            var str = counter.toFixed(2).toString();
            form.text =  pad(str,10);
        }
    }

    function pad (str, max) {
      return str.length < max ? pad(" " + str, max) : str;
    }
}
