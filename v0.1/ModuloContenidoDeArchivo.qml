import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

Rectangle {
    id:raiz
    width: Screen.width-48
    TextEdit{
        width: raiz.width-48
        height: raiz.height-48
        font.pixelSize: 24
        anchors.centerIn: raiz
        wrapMode: Text.WordWrap
    }
}

