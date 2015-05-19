import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 1024
    height: 768
    visible: true
    Rectangle {
        id:subView
        x:0
        y:0
        z:0
        width:parent.width
        height:parent.height/3

        ItemTest { id:air1; x :parent.width/10; y:parent.height/10*1; z : 2}
        ItemTest { id:air2; x :parent.width/10 - 10; y:parent.height/10*1+10; z : 2}
        ItemTest { id:air3; x :parent.width/10 + 10; y:parent.height/10*1+10; z : 2}
    }
}
