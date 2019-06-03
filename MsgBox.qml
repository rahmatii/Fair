import QtQuick 2.7
import QtQuick.Controls 2.2
Item {
    id:itemm
    width: 450
    height: 200
    anchors.centerIn: parent
    property alias msg: text2.text
    Rectangle {
        id: rectangle
        anchors.fill: parent
//        x: 0
//        y: 0
        width: 450
        height: 200
        color: "white"
        radius: 20

        Rectangle {
            id: rectangle1
            x: 335
            y: 85
            width: 200
            height: 30
            color: "#544b4b"
            radius: 15
            rotation: -90

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("پیام اضطراری")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "B Yekan"
                font.pixelSize: 17
            }
        }

        Text {
            id: text2
            text: qsTr("لطفا برای اطلاع از پیام خود، متن را دز این قسمت وارد کنید و ادامه دهید در  صورتی که پیام شما طولانی است")
            wrapMode: Text.WordWrap
            font.family: "B Yekan"
            anchors.leftMargin: 10
            anchors.bottomMargin: 50
            anchors.topMargin: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.rightMargin: 40
            anchors.fill: parent
            font.pixelSize: 14
        }

        RoundButton {
            id: roundButton
            y: 156
            width: 120
            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            background: Rectangle{
                anchors.fill: parent
                radius: parent.radius
                color: "#C2185B"
                Text{
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    text: "باشه"
                    font.bold: true
                    font.pointSize: 10
                    font.family: "B Yekan"
                    color: "white"
                }
            }
            onClicked:itemm.visible=false

        }
    }

}
