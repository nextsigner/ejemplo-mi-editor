import QtQuick 2.0
import QtQuick.Controls 2.0

ApplicationWindow {
    id: app
    visibility: "Maximized"
    color: "#333"
    Column{
        spacing: 24
        anchors.centerIn: parent
        ModuloNombreArchivo{id: mc}
        ModuloContenidoDeArchivo{
            height: app.height-mc.height-48
        }
    }
}

