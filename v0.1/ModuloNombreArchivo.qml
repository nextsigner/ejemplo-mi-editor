import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    id:raiz
    width: parent.width
    height: 26
    Row{
        spacing: 24
        Text{
            text: 'Archivo:'
            color: 'white'
            font.pixelSize: 24
            anchors.verticalCenter: parent.verticalCenter
        }
        TextField{
            width: app.width*0.6
            font.pixelSize: 24
        }
    }
}

