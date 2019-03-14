import QtQuick 2.7
import QtQuick.Controls 2.2
import QtMultimedia 5.8

Rectangle{
    width: 500
    height: 400
    signal exit()

    Text {
        id: element
        x: 166
        y: 14
        width: 161
        height: 21
        text: qsTr("شهرآرا، رسانه شهر امید و زندگی")
        font.family: "IRANYekan"
        font.pixelSize: 12
    }

    Text {
        id: element1
        x: 338
        y: 48
        width: 160
        height: 324
        text: "تماس با بخش ها (16 خط)\n051-37288881-5\nتماس با روابط عمومی\n051-37243110\nارسال نمابر\n051-37231407\nایمیل\ninfo@shahrara.com\nسفارش آگهی\nagahi@shahrara.com\nسفارش چاپ و نصب بنر\nchap@shahrara.com\n"
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "IRANYekan"
        lineHeight: 0.8
        font.pixelSize: 12
    }

    Text {
        id: element2
        x: 13
        y: 48
        width: 321
        height: 324
        text: qsTr("ارسال پیامک
9830007289+
تلگرام (ارسال عکس، فیلم، بیان نظر، معرفی سوژه و...)
989154294580+
shahraramardom@
نشانی مؤسسه فرهنگی شهرآرا
خراسان رضوی- مشهد- میدان شهدا - نبش خیابان دانشگاه یک
")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12

        Rectangle {
            id: rectangle1
            x: 8
            y: 25
            width: 466
            height: 1
            color: "#000000"
        }
    }

    Rectangle {
        id: rectangle
        x: 337
        y: 83
        width: 1
        height: 300
        color: "#000000"
        border.width: 0
    }

    Text {
        id: element3
        x: 166
        y: 41
        width: 161
        height: 21
        text: qsTr("با ما در ارتباط باشید :)")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
        font.family: "IRANYekan"
    }
    //----------------------------------------- close button ---------------------------------
    RoundButton{
        id:closebutton
        width:40
        height:40
        radius:20
        x: 0-radius
        y:-20
        background: Rectangle{
            anchors.fill: parent
            width:40
            height:40
            radius: 20
            color:"red"
            Text{text:"\u2716"
                color: "white"
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 14}
        }
        onPressed: {
            exit()

        }
    }

}
