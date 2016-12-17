import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rectangle1

    property string colorON  : "red"
    property string colorOFF : "black"

    x     : 0
    color : "black"
    width : 129
    height: 213

    Image { id: a; x: 12; y: 0;   source: "imagenes/led-hor.svg" }
    Image { id: f; x: 0;  y: 12;  source: "imagenes/led-ver.svg" }
    Image { id: b; x: 87;y: 12;  source: "imagenes/led-ver.svg" }
    Image { id: g; x: 12; y: 95;  source: "imagenes/led-hor.svg" }
    Image { id: e; x: 0;  y: 108; source: "imagenes/led-ver.svg" }
    Image { id: c; x: 87;y: 108; source: "imagenes/led-ver.svg" }
    Image { id: d; x: 12; y: 191; source: "imagenes/led-hor.svg" }
    Image { id: dp;x: 113;y: 196; source: "imagenes/dp.svg"      }

    ColorOverlay { id: ovrA; anchors.fill: a;  source : a;  color : colorOFF }
    ColorOverlay { id: ovrF; anchors.fill: f;  source : f;  color : colorOFF }
    ColorOverlay { id: ovrB; anchors.fill: b;  source : b;  color : colorOFF }
    ColorOverlay { id: ovrG; anchors.fill: g;  source : g;  color : colorOFF }
    ColorOverlay { id: ovrE; anchors.fill: e;  source : e;  color : colorOFF }
    ColorOverlay { id: ovrC; anchors.fill: c;  source : c;  color : colorOFF }
    ColorOverlay { id: ovrD; anchors.fill: d;  source : d;  color : colorOFF }
    ColorOverlay { id: ovrDP;anchors.fill: dp; source : dp; color : colorOFF }

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
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorOFF}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorON}
            PropertyChanges { target: ovrC; color:colorOFF}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "3"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorOFF}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorOFF}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "4"
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorOFF}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "5"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrB; color:colorOFF}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorOFF}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "6"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrB; color:colorOFF}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorON}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "7"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorOFF}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrE; color:colorOFF}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "8"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorON}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
      },
       State {
            name: "9"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrG; color:colorON}
            PropertyChanges { target: ovrE; color:colorOFF}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
            PropertyChanges { target: ovrDP;color:colorOFF}
        },
        State {
            name: "0"
            PropertyChanges { target: ovrA; color:colorON}
            PropertyChanges { target: ovrB; color:colorON}
            PropertyChanges { target: ovrF; color:colorON}
            PropertyChanges { target: ovrE; color:colorON}
            PropertyChanges { target: ovrC; color:colorON}
            PropertyChanges { target: ovrD; color:colorON}
       }
    ]
}
