import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtMultimedia 5.8

Rectangle{
    id:circle1
    property bool highlight: false
    property alias numb: numtxt.text
    signal pressme
    width: 60
    height: 60
    radius: width/2
    color:highlight ? "white":"#C2185B"
    border.width: 2
    border.color: "white"
    Text{
        id:numtxt
        color: highlight ? "#C2185B" :"white"
        text: "1"
        font.pointSize: 14
        font.family: "B Yekan"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: parent
    }

    MouseArea{
        anchors.fill: parent
        onPressed: {
            btSound.play()
            pressme()
        }

    }

    SoundEffect {
        id: btSound
        source: applicationPath+"files/btsound1.wav"
    }
}
