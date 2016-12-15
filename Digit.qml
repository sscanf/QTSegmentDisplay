import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rectangle1

    property string colorON  : "red"
    property string colorOFF : "red"
    x: 0
    color           : "black"
    width           : 170
    height          : 213
    Image { id: a; x: 16; y:  0;   width: parent.width*0.68;source: "imagenes/led-hor.svg" }
    Image { id: f; x: 0;  y:  12;  source: "imagenes/led-ver.svg" }
    Image { id: b; anchors.top: parent.top; anchors.topMargin: 12; anchors.right: parent.right; anchors.rightMargin: 27; source: "imagenes/led-ver.svg" }
    Image { id: g; x: 21; y:  96;  source: "imagenes/led-hor.svg" }
    Image { id: e; x: 0;  y:  108; source: "imagenes/led-ver.svg" }
    Image { id: c; x: 103; anchors.right: parent.right; anchors.rightMargin: 27;anchors.top: parent.top; anchors.topMargin: 108; source: "imagenes/led-ver.svg" }
    Image { id: d; x: 16; y:  191; source: "imagenes/led-hor.svg" }
    Image { id: dp;x: 132;y:  196; source: "imagenes/dp.svg" }

    ColorOverlay { id: ovrA; width: 107;  anchors.fill: a;  source : a;  color : colorOFF }
    ColorOverlay { id: ovrF;  anchors.fill: f;  source : f;  color : colorOFF }
    ColorOverlay { id: ovrB; x: 54;  anchors.fill: b;  source : b;  color : colorOFF }
    ColorOverlay { id: ovrG;  anchors.fill: g;  source : g;  color : colorOFF }
    ColorOverlay { id: ovrE;  anchors.fill: e;  source : e;  color : colorOFF }
    ColorOverlay { id: ovrC;  anchors.fill: c;  source : c;  color : colorOFF ; anchors.rightMargin: 0; anchors.bottomMargin: 0; anchors.leftMargin: 0;anchors.topMargin: 0 }
    ColorOverlay { id: ovrD;  anchors.fill: d;  source : d;  color : colorOFF }
    ColorOverlay { id: ovrDP; anchors.fill: dp; source : dp; color : colorOFF }






    transitions: Transition {
        PropertyAnimation { property: "colorOn"; easing.type: Easing.InOutQuad }
    }

    states: [
        State {
           name: "1"
           PropertyChanges { target: ovrF;  color:colorOFF}
           PropertyChanges { target: ovrB;  color:colorON}
           PropertyChanges { target: ovrE;  color:colorOFF}
           PropertyChanges { target: ovrC;  color:colorON}
           PropertyChanges { target: ovrDP; color:colorOFF}
        },
        State {
            name: "2"
            PropertyChanges { target: ovrF;  color:colorOFF}
            PropertyChanges { target: ovrB;  color:colorON}
            PropertyChanges { target: ovrE;  color:colorON}
            PropertyChanges { target: ovrC;  color:colorOFF}
            PropertyChanges { target: ovrDP; color:colorOFF}
        },
        State {
            name: "3"
            PropertyChanges { target: ovrF; color: colorOFF}
            PropertyChanges { target: ovrB; color: colorON}
            PropertyChanges { target: ovrE; color: colorOFF}
            PropertyChanges { target: ovrC; color: colorON}
            PropertyChanges { target: ovrDP;color: colorOFF}
        },
        State {
            name: "4"
            PropertyChanges { target: ovrF; color: colorON}
            PropertyChanges { target: ovrB; color: colorON}
            PropertyChanges { target: ovrE; color: colorOFF}
            PropertyChanges { target: ovrC; color: colorON}
            PropertyChanges { target: ovrDP; color: colorOFF}
        },
        State {
            name: "5"
            PropertyChanges { target: ovrF; color: colorON}
            PropertyChanges { target: ovrB; color: colorOFF}
            PropertyChanges { target: ovrE; color: colorOFF}
            PropertyChanges { target: ovrC; color: colorON}
            PropertyChanges { target: ovrDP; color: colorOFF}
        },
        State {
            name: "6"
            PropertyChanges { target: ovrF; color: colorON}
            PropertyChanges { target: ovrB; color: colorOFF}
            PropertyChanges { target: ovrE; color: colorON}
            PropertyChanges { target: ovrC; color: colorON}
            PropertyChanges { target: ovrDP; color: colorOFF}
        },
        State {
            name: "7"
            PropertyChanges { target: ovrF; color: colorOFF }
            PropertyChanges { target: ovrB; color: colorON }
            PropertyChanges { target: ovrE; color: colorOFF }
            PropertyChanges { target: ovrC; color: colorON }
            PropertyChanges { target: ovrDP; color: colorOFF }
        },
        State {
            name: "8"
            PropertyChanges { target: ovrF; color: colorON }
            PropertyChanges { target: ovrB; color: colorON }
            PropertyChanges { target: ovrE; color: colorON }
            PropertyChanges { target: ovrC; color: colorON }
            PropertyChanges { target: ovrDP; color: colorOFF }
      },
       State {
            name: "9"
            PropertyChanges { target: ovrF; color: colorON }
            PropertyChanges { target: ovrB; color: colorON }
            PropertyChanges { target: ovrE; color: colorOFF }
            PropertyChanges { target: ovrC; color: colorON }
            PropertyChanges { target: ovrDP; color: colorOFF }
        },
        State {
            name: "0"
            PropertyChanges { target: ovrB; color: colorON }
            PropertyChanges { target: ovrF; color: colorON }
            PropertyChanges { target: ovrE; color: colorON }
            PropertyChanges { target: ovrC; color: colorON }
       }
    ]
}
