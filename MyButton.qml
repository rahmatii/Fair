import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.8
import QtGraphicalEffects 1.0



Item {
    width:250
    height: 60
    signal pressme
    property alias numb: numtxt.text
    property alias mytxt: titletext.text
    property bool highlight: false
    Rectangle{
        id:titlerect
        width: 220
        height: 30
        color:highlight ? "white":"#C2185B"
        radius: 5
        border.width: 2
        border.color: "white"
        anchors.right: circle1.left
        anchors.rightMargin: -5
        anchors.verticalCenter: parent.verticalCenter
        Text{
            id:titletext
            color: highlight ? "#C2185B" :"white"
            text: "وب سایت یوسنسی"
            font.pointSize: 11
            font.family: "IRANYekan"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }

    }
    Rectangle{
        id:circle1
        width: 50
        height: 50
        radius: width/2
        color:highlight ? "white":"black"
        opacity: 0.6
        border.width: 2
        border.color: "white"
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
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
    }
    onHighlightChanged: if (highlight){
                            btglow.visible=true
                        }
                        else{
                            btglow.visible=false
                        }

    MouseArea{
        anchors.fill: parent
        onPressed: {
            btSound.play()
            pressme()
        }

    }

    Glow {
        anchors.fill: circle1
        visible: false
        id:btglow
        radius: 15
        samples: 20
        color: "#EF9A9A"
        source: circle1
    }
    SoundEffect {
        id: btSound
        source:applicationPath+ "files/btsound1.wav"
    }


}
