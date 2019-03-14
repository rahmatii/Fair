import QtQuick 2.0
import QtQuick.Controls 2.2

RoundButton{
    property string ilabel
    property string ifont: "B Yekan"
    property bool anykeypressed:false
    signal rbuttonpressed(string ilabel);
    signal rbuttonclicked()
    width: 40
    height: 40
    radius:10
    background: Rectangle{
        anchors.fill: parent
        radius:10
        color: "#9E9E9E"  //"#607D8B"
        border.width:1
        //border.color: "white"
        Text{
            anchors.fill: parent
            text:ilabel
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color:"white"
            font.pointSize: 14
            font.family: "Arial" //"B Yekan"
        }
    }
    Rectangle{
        id: popup
        x: -10
        y: -60
        width: 60
        height: 60
        radius:10
        visible: false
        color: "#21be2b" //"green"  //"#607D8B"
        Text{
            anchors.fill: parent
            text:ilabel
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color:"white"
            font.pointSize: 18
            font.family: "B Yekan"
        }
    }
    MouseArea{
        anchors.fill:parent
        onPressed: {
            rbuttonpressed(ilabel)
            popup.visible=true}
        onExited: popup.visible=false
    }
}
