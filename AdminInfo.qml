import QtQuick 2.0

Rectangle {
width: 800
height: 1080
color:"white"
signal menuclick()
signal formclick()
signal aboutusclick()


Rectangle{
    x:100
    y:100

    width: 200
    height: 200

    Text {
        anchors.centerIn: parent
        id:menuText
        text: qsTr("اضافه کردن منو")
        font.pixelSize: 20
        font.family: "IRANYekan"
    }
    Rectangle{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:menuText.bottom
        anchors.topMargin: 20
        color: "Blue"
        width: 100
        height: 100
        radius: 50
        Text {
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 20
            text: qsTr("+")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{menuclick();}
        }
    }
}

Rectangle{
    x:500
    y:100

    width: 200
    height: 200

    Text {
        anchors.centerIn: parent
        id:menuText2
        text: qsTr("اضافه کردن فرم")
        font.pixelSize: 20
        font.family: "IRANYekan"
    }
    Rectangle{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:menuText2.bottom
        anchors.topMargin: 20
        color: "Blue"
        width: 100
        height: 100
        radius: 50
        Text {
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 20
            text: qsTr("+")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{console.log("click");formclick(); }
        }
    }
}

Rectangle{
    x:100
    y:500

    width: 200
    height: 200

    Text {
        anchors.centerIn: parent
        id:menuText3
        text: qsTr("درباره ی ما")
        font.pixelSize: 20
        font.family: "IRANYekan"
    }
    Rectangle{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:menuText3.bottom
        anchors.topMargin: 20
        color: "Blue"
        width: 100
        height: 100
        radius: 50
        Text {
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 20
            text: qsTr("+")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{}
        }
    }
}


Rectangle{
    x:500
    y:500

    width: 200
    height: 200

    Text {
        anchors.centerIn: parent
        id:menuText4
        text: qsTr("بارگیری لوگو")
        font.pixelSize: 20
        font.family: "IRANYekan"
    }
    Rectangle{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:menuText4.bottom
        anchors.topMargin: 20
        color: "Blue"
        width: 100
        height: 100
        radius: 50
        Text {
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 20
            text: qsTr("+")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{}
        }
    }
}


}
