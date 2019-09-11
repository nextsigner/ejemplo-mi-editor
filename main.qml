import QtQuick 2.12
import QtQuick.Controls 2.0
import 'qrc:/'

ApplicationWindow {
    id: app
    visible: true
    visibility: "Maximized"
    color: app.c1
    property int fs: width*0.03
    property color c1
    property color c2
    property color c3
    property color c4

    UnikSettings{
        id: unikSettings
        property color c1
        property color c2
        property color c3
        property color c4
        //url: './cfg.json'
        Component.onCompleted: {
            unikSettings.currentNumColor=0
            var tcs=unikSettings.defaultColors.split('|')
            var c=tcs[unikSettings.currentNumColor].split('-')
            app.c1=c[0]
            app.c2=c[1]
            app.c3=c[2]
            app.c4=c[3]
        }
    }
    Column{
        anchors.centerIn: parent
        spacing: app.fs*0.5
        Text{
            text: '<b>Curso 3P - Mi Editor</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Item{
            width: app.fs
            height: app.fs*2
        }
        Text{
            text: '<b>Seleccionar una versión</b>'
            font.pixelSize: app.fs
            color: app.c2
        }
        Repeater{
            model: ["v0.1"]
            Button{
                text: '<b>'+modelData+'</b>'
                font.pixelSize: app.fs
                onClicked: {
                    opacity=0.65
                    run(modelData)
                }
            }
        }
    }
    Shortcut{
        sequence: 'Esc'
        onActivated: Qt.quit()
    }
    function run(folder){
        unik.cd(unik.currentFolderPath()+'/'+folder)
        engine.load('./main.qml')
    }
}
