import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Particles 2.0

Item {
    id: itemTest

    Image {
        id: testimage
        x: parent.x
        y: parent.y
        source: "./image/airplanemode_on.svg"
    }

    Canvas {
        x:0
        y:0
        width: parent.parent.width
        height: parent.parent.height
        id: testcanvas

        onPaint: {
            var context = getContext("2d");
            context.save();
            context.beginPath();
            context.moveTo(testimage.x+testimage.width/2, testimage.y+testimage.height/2);
            context.strokeStyle = "grey"
            context.lineTo(parent.parent.width/2, parent.parent.height/2);

            context.stroke();
            context.closePath();
            context.restore();
        }
    }
}


