import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rectangle1

    property double newColor : 0xff0000
    property double colorON  : 0xff0000
    property double colorOFF : 0
    property int    tdelay   : 10

    x     : 0
    color : "black"
    width : 129
    height: 213

    Image { id: a; x: 12; y: 0;   source: "imagenes/led-hor.svg" }
    Image { id: f; x: 0;  y: 12;  source: "imagenes/led-ver.svg" }
    Image { id: b; x: 87; y: 12;  source: "imagenes/led-ver.svg" }
    Image { id: g; x: 12; y: 95;  source: "imagenes/led-hor.svg" }
    Image { id: e; x: 0;  y: 108; source: "imagenes/led-ver.svg" }
    Image { id: c; x: 87; y: 108; source: "imagenes/led-ver.svg" }
    Image { id: d; x: 12; y: 191; source: "imagenes/led-hor.svg" }
    Image { id: dp;x: 113;y: 196; source: "imagenes/dp.svg"      }

    ColorOverlay { id: ovrA; anchors.fill: a;  source : a;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrF; anchors.fill: f;  source : f;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrB; anchors.fill: b;  source : b;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrG; anchors.fill: g;  source : g;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrE; anchors.fill: e;  source : e;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrC; anchors.fill: c;  source : c;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrD; anchors.fill: d;  source : d;  color : toColor(colorOFF) }
    ColorOverlay { id: ovrDP;anchors.fill: dp; source : dp; color : toColor(colorOFF) }


    Timer {
        id: timer
        running : true
        repeat  : true
        interval: tdelay/10
        onTriggered: {
            var colors;
            var colorsNew;

            colors = getColors(colorON);
            colorsNew = getColors(newColor);

            for (var n=0; n<3; n++) {
                if (colorsNew[n] < colors[n]) {
                    colorsNew[n]++ % 0xff;
                }
                else if (colorsNew[n]>colors[n]) {
                    colorsNew[n]-- % 0xff;
                }
            }
            newColor = toRGB(colorsNew);
        }
    }

    states: [
        State {
           name: "1"
           PropertyChanges { target: ovrB;  color:toColor(newColor)}
           PropertyChanges { target: ovrC;  color:toColor(newColor)}
        },
        State {
            name: "2"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrE; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        },
        State {
            name: "3"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        },
        State {
            name: "4"
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
        },
        State {
            name: "5"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        },
        State {
            name: "6"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrE; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        },
        State {
            name: "7"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
        },
        State {
            name: "8"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrE; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
      },
       State {
            name: "9"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrG; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        },
       State {
            name: "0"
            PropertyChanges { target: ovrA; color:toColor(newColor)}
            PropertyChanges { target: ovrF; color:toColor(newColor)}
            PropertyChanges { target: ovrB; color:toColor(newColor)}
            PropertyChanges { target: ovrE; color:toColor(newColor)}
            PropertyChanges { target: ovrC; color:toColor(newColor)}
            PropertyChanges { target: ovrD; color:toColor(newColor)}
        }
    ]

    function getColors (num) {
        var colors=[4];
        num >>>= 0;
        var b = num & 0xFF;
        var g = (num & 0xFF00) >>> 8;
        var r = (num & 0xFF0000) >>> 16;
        var a = ((num & 0xFF000000) >>> 24 ) / 255;

        colors[0]=r;
        colors[1]=g;
        colors[2]=b;
        colors[3]=a;
        return colors;
    }

    function toRGB(arr) {
        var rgb;
        for (var n=0;n<3;n++) {
            rgb<<=8;
            rgb|= arr[n];
        }
        return ( rgb >>>0 );
    }

    function colorToNumber (col) {
        var value;
        var r;
        var g;
        var b;

        r = parseInt (col.toString().substr(1, 2), 16);
        g = parseInt (col.toString().substr(3, 2), 16);
        b = parseInt (col.toString().substr(5, 2), 16);

        value =  r;
        value = (value<<8) | g;
        value = (value<<8) | b;
        return value;
    }

    function toColor(num) {
        num >>>= 0;
        var b = pad ((num & 0xFF).toString(16),2);
        var g = pad (((num & 0xFF00) >>> 8).toString(16),2);
        var r = pad (((num & 0xFF0000) >>> 16).toString(16),2);
        var a = pad ((((num & 0xFF000000) >>> 24 ) / 255).toString(16),2);
        var str = "#" + r+g+b;
        return str;
    }

    function point (point) {
        if (point) {
            ovrDP.color = toColor (newColor);
        } else {
            ovrDP.color = toColor (colorOFF);
        }
    }

    function pad (str, max) {
      return str.length < max ? pad("0" + str, max) : str;
    }
}
