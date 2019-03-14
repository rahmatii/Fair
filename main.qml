import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtMultimedia 5.8
import QtWebEngine 1.5

import QtQuick.Window 2.2

ApplicationWindow {
    Component.onCompleted: Services.showDir();
    visible: true
    visibility: "FullScreen"
    title: qsTr("Hello World")
    function activeoptions(){
        showcase.visible=true
        webview1.visible=false
        //gallery.visible=false
        video1.visible=false
        video1.stop()
        imgertebat.visible=false
        gallery.visible=false
        gallery2.visible=false
        gallery3.visible=false
        //castback.visible=false
        //podcast.stop()
        videoback.visible=false
        //mag.visible=false
        //footbali.visible=false
        radiob1.checked=false
        radiob2.checked=false
        radiob3.checked=false
        radiob4.checked=false
        radiob5.checked=false
        radiob6.checked=false
        radiob7.checked=false
        radiob8.checked=false
       // radiob9.checked=false
       // radiob10.checked=false

    }

//    Video{
//        id:backvideo
//        anchors.fill: parent
//        source: applicationPath+"files/backvid.mp4"
//        autoPlay: true
//        loops:MediaPlayer.Infinite
//    }

    Item{
        id:itemm
        anchors.fill: parent
        Column{
            anchors.right: parent.right
            anchors.rightMargin: 15
            anchors.verticalCenter: parent.verticalCenter
            spacing: 0
            Image {
                id: logo
                width: 250
                height: 200
                source:applicationPath+ "files/logo.png"
                anchors.right: parent.right
//                anchors.rightMargin: -5
//                anchors.top:parent.top
//                anchors.topMargin: 50
//                MouseArea{
//                    anchors.fill: parent
//                    onPressed: {
//                        background.visible=true
//                        formLoader.sourceComponent=mycomus
//                    }
//                }
            }

            MyButton{
                id:bt1
                numb: "1"
                mytxt: "وب سایت یوسنسی"
                onPressme: {
                    activeoptions()
                    webview1.visible=true
                    webview1.url="https://www.usensi.ir/"
                    radio1.checked=true
                }
                highlight: radio1.checked
            }
            MyButton{
                id:bt2
                numb: "2"
                mytxt: "میز لمسی رستورانی"
                onPressme: {
                    activeoptions()
                    webview1.visible=true
                    webview1.url="http://www.usensi.ir/%D9%85%DB%8C%D8%B2-%D9%84%D9%85%D8%B3%DB%8C/%D9%85%DB%8C%D8%B2-%D9%84%D9%85%D8%B3%DB%8C-%D8%B1%D8%B3%D8%AA%D9%88%D8%B1%D8%A7%D9%86%DB%8C/"
                    radio2.checked=true
                }
                highlight: radio2.checked
            }
            MyButton{
                id:bt3
                numb: "3"
                mytxt: "کیوسک لمسی سفارش گیری"
                onPressme: {
                    activeoptions()
                    webview1.visible=true
                    webview1.url="https://www.usensi.ir/%D8%A7%D8%B3%D8%AA%D9%86%D8%AF-%D9%84%D9%85%D8%B3%DB%8C-%D8%B3%D9%81%D8%A7%D8%B1%D8%B4-%DA%AF%DB%8C%D8%B1%DB%8C-2/"
                    radio3.checked=true
                }
                highlight: radio3.checked
            }
            MyButton{
                id:bt4
                numb: "4"
                mytxt: "نرم افزار رستورانی"
                onPressme: {
                    activeoptions()
                    webview1.visible=true
                    webview1.url="https://www.usensi.ir/%D9%86%D8%B1%D9%85-%D8%A7%D9%81%D8%B2%D8%A7%D8%B1-%D8%B1%D8%B3%D8%AA%D9%88%D8%B1%D8%A7%D9%86%DB%8C/"
                    radio4.checked=true
                }
                highlight: radio4.checked
            }
            MyButton{
                id:bt5
                numb: "5"
                mytxt: "آدرس ما در شبکه های اجتماعی"
                onPressme: {
                    activeoptions()
                   // gallery.visible=true
                    imgertebat.visible=true
                    radio5.checked=true
                }
                highlight: radio5.checked
            }
            MyButton{
                id:bt6
                numb: "6"
                mytxt: "گالری تصاویر"
                onPressme: {
                    activeoptions()
                   // video1.visible=true
                   // videoback.visible=true
                    gallery2.visible=true
                    radio6.checked=true
                }
                highlight: radio6.checked
            }
            MyButton{
                id:bt7
                numb: "7"
                mytxt: "گالری ویدئو"
                onPressme: {
                    activeoptions()
                    video1.visible=true
                    videoback.visible=true
                    radio7.checked=true
                }
                highlight: radio7.checked
            }
            MyButton{
                id:bt8
                numb: "8"
                mytxt: "کاتالوگ"
                onPressme: {
                    activeoptions()
//                    video1.visible=true
//                    videoback.visible=true
                    gallery3.visible=true

                    radio8.checked=true
                }
                highlight: radio8.checked
            }

            MyButton{
                id:bt15
                numb: "9"
                mytxt: "درباره ما"
                onPressme: {
				activeoptions()
                    //mag.visible=true
                 gallery.visible=true
				radio15.checked=true
				}
                highlight: radio15.checked
            }
            MyButton{
                id:bt16
                numb: "10"
                mytxt: "تیزر"
                onPressme:{
                    activeoptions()
//                    footbali.visible=true
                    video1.visible=true
                    videoback.visible=true
                    radio16.checked=true
				}
                highlight: radio16.checked
            }

        }
        ColumnLayout{
            visible: false
            RadioButton{
                id:radio1
            }
            RadioButton{
                id:radio2
            }
            RadioButton{
                id:radio3
            }
            RadioButton{
                id:radio4
            }
            RadioButton{
                id:radio5
            }
            RadioButton{
                id:radio6
            }
            RadioButton{
                id:radio7
            }
            RadioButton{
                id:radio8
            }
            RadioButton{
                id:radio9
            }
            RadioButton{
                id:radio10
            }
            RadioButton{
                id:radio11
            }
            RadioButton{
                id:radio12
            }
            RadioButton{
                id:radio13
            }
            RadioButton{
                id:radio14
            }
            RadioButton{
                id:radio15
            }
            RadioButton{
                id:radio16
            }


        }


        Rectangle{
            id:contactus1
            width: 190
            height: 190
            radius: width/2
            color: "#C2185B"
            anchors.left: parent.left
            anchors.leftMargin: -95
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -130
//            anchors.top: parent.top
//            anchors.topMargin: 500
            Text {
                id:contactxt
                anchors.centerIn: parent
                width: 150
                height: 100
                anchors.horizontalCenterOffset: 40
                text: "اطلاعات شما"
                wrapMode: Text.WordWrap
                font.pointSize: 16
                font.family: "IRANYekan"
                color: "white"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                rotation: -90
            }
            MouseArea{
                anchors.fill: parent
                onPressed: {
                    background.visible=true
//                    contact2.visible=true
                    video1.stop()
                    formLoader.sourceComponent=mycom2
                }
            }
        }
        Rectangle{
            id:contactus2
            width: 190
            height: 190
            radius: width/2
            color: "#C2185B"
            anchors.left: parent.left
            anchors.leftMargin: -95
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 130
            Text {
                id:contactxt2
                anchors.centerIn: parent
                width: 150
                height: 100
                anchors.horizontalCenterOffset: 40
                text: "ارتباط با فضای مجازی"
                wrapMode: Text.WordWrap
                font.pointSize: 16
                font.family: "IRANYekan"
                color: "white"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                rotation: -90
            }
            MouseArea{
                anchors.fill: parent
                onPressed: {
                    background.visible=true
                    formLoader.sourceComponent=mycom1
                    video1.stop()
                   // contact1.visible=true
                }
            }
        }

        Rectangle{
            id:showcaseback
            width: 1500
            height: 1000
            radius: 50
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: contactus2.right
            anchors.leftMargin: 20
            color: "black" //"white"
            opacity: 0.6
            Text{
                id:welcometext
                anchors.fill: parent
                text: "به غرفه شرکت رایانیک خوش آمدید"
                font.pointSize: 40
                font.family: "IRANYekan"
                color: "#607D8B"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

            }
        }
        Rectangle{
            id:showcase
            width:1450
            height: 950
            anchors.centerIn: showcaseback
            radius: 40
            color: "black"
            visible: false
            //clip: true
            WebEngineView {
                anchors.fill: parent
                visible: false
                id:webview1
                url:"http://usensi.ir"
                settings.pluginsEnabled : true
                onUrlChanged:{
                    if(!loading) webload.indeterminate=true
                    else webload.indeterminate=false
                }
            }
            ProgressBar{
                id:webload
                visible: webview1.visible
                value: webview1.loadProgress/100
                width: showcase.width
                anchors.bottom: parent.top
                anchors.bottomMargin: 10

            }
            SwipeView{
                anchors.fill: parent
                z:100
                id:gallery
                visible: false
                clip: true
                Image {
                    id:img1po
                    //anchors.fill: parent
                    source: applicationPath+"files/contact/1.jpg"
                }

                Image {
                    id:img554
                    //anchors.fill: parent
                    source:  applicationPath+"files/contact/2.jpg"
                }


            }

            PageIndicator {
                id: indicator
                visible: gallery.visible
                z:101
                count: gallery.count
                currentIndex: gallery.currentIndex

                anchors.bottom: gallery.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SwipeView{
                anchors.fill: parent
                z:100
                id:gallery2
                visible: false
                clip: true
                Image {
                    id:img12
                    //anchors.fill: parent
                    source: applicationPath+"files/imggallery/1.jpg"
                }

                Image {
                    id:img22
                    //anchors.fill: parent
                    source: applicationPath+ "files/imggallery/2.jpg"
                }

                Image {
                    id:img32
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/3.jpg"
                }

                Image {
                    id:img42
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/4.jpg"
                }

                Image {
                    id:img52
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/5.jpeg"
                }
                Image {
                    id:img62
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/6.jpg"
                }
                Image {
                    id:img72
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/7.jpg"
                }
                Image {
                    id:img82
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/8.jpg"
                }
                Image {
                    id:img92
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/9.jpeg"
                }
                Image {
                    id:img502
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/10.jpg"
                }
                Image {
                    id:img5012
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/11.jpg"
                }
                Image {
                    id:img452
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/12.jpg"
                }
                Image {
                    id:img48
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/13.jpg"
                }
                Image {
                    id:img49
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/14.jpg"
                }
                Image {
                    id:img50
                    //anchors.fill: parent
                    source:  applicationPath+"files/imggallery/15.jpg"
                }

            }

            PageIndicator {
                id: indicator22
                visible: gallery2.visible
                z:101
                count: gallery2.count
                currentIndex: gallery2.currentIndex

                anchors.bottom: gallery2.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SwipeView{
                anchors.fill: parent
                z:100
                id:gallery3
                visible: false
                clip: true
                Image {
                    id:img121
                    //anchors.fill: parent
                    source: applicationPath+"files/catalog/1.jpg"
                }

                Image {
                    id:img222
                    //anchors.fill: parent
                    source: applicationPath+ "files/catalog/2.jpg"
                }

                Image {
                    id:img323
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/3.jpg"
                }

                Image {
                    id:img424
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/4.jpg"
                }

                Image {
                    id:img525
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/5.jpg"
                }
                Image {
                    id:img626
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/6.jpg"
                }
                Image {
                    id:img727
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/7.jpg"
                }
                Image {
                    id:img828
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/8.jpg"
                }
                Image {
                    id:img929
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/9.jpg"
                }
                Image {
                    id:img5010
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/10.jpg"
                }
                Image {
                    id:img5011
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/11.jpg"
                }
                Image {
                    id:img412
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/12.jpg"
                }
                Image {
                    id:img413
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/13.jpg"
                }
                Image {
                    id:img414
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/14.jpg"
                }
                Image {
                    id:img515
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/15.jpg"
                }
                Image {
                    id:img50f
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/16.jpg"
                }
                Image {
                    id:img412ff
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/17.jpg"
                }
                Image {
                    id:img413sd
                    //anchors.fill: parent
                    source:  applicationPath+"files/catalog/18.jpg"
                }
//                Image {
//                    id:img414w
//                    //anchors.fill: parent
//                    source:  applicationPath+"files/catalog/19.jpg"
//                }
//                Image {
//                    id:img515r
//                    //anchors.fill: parent
//                    source:  applicationPath+"files/catalog/20.jpg"
//                }

            }

            PageIndicator {
                id: indicator223
                visible: gallery3.visible
                z:101
                count: gallery3.count
                currentIndex: gallery3.currentIndex

                anchors.bottom: gallery3.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Video{
                id:video1
                visible: false
                anchors.fill: parent
                source:  applicationPath+"files/video/1.mp4"
            }

            Image {
                id: videoback
                visible: false
                opacity: 0.7
                anchors.fill: parent
                source: applicationPath+"files/camera.jpg"
            }
            Image {
                id: imgertebat
                visible: false
//                opacity: 0.7
                anchors.fill: parent
                source: applicationPath+"files/cyber/1.jpg"
            }

            Row{
                anchors.top: video1.bottom
                anchors.horizontalCenter: video1.horizontalCenter
                visible: video1.visible
                spacing: 5
                Rbutton{
                  id:rbt1
                  onPressme: {
                      radiob1.checked=true
                      if(radio6.checked) video1.source=applicationPath+"files/milan8/1.MOV"
                      if(radio7.checked) video1.source=applicationPath+"files/video/1.MOV"
                      if(radio8.checked) video1.source=applicationPath+"files/redline/1.mp4"
                      if(radio9.checked) podcast.source=applicationPath+"files/podcast/1.mp3"
                      if(radio10.checked) video1.source=applicationPath+"files/varchope/1.mp4"
                      if(radio11.checked) video1.source=applicationPath+"files/donyayefilm/1.mp4"
                      if(radio12.checked) video1.source=applicationPath+"files/3dots/1.mp4"
                      if(radio13.checked) video1.source=applicationPath+"files/jorat/1.mp4"
                      if(radio14.checked) video1.source=applicationPath+"files/alzimer/1.mp4"
                      if(radio16.checked) video1.source=applicationPath+"files/teaser/1.mp4"
                      videoback.visible=false
                      if(radio9.checked) podcast.play()
                      else video1.play()
                  }
                  numb: "1"
                  highlight: radiob1.checked
                }
                Rbutton{
                  id:rbt2
                  visible: radio6.checked | radio7.checked | radio9.checked | radio10.checked | radio11.checked | radio12.checked | radio13.checked | radio14.checked
                  onPressme: {
                      radiob2.checked=true
                      if(radio6.checked) video1.source=applicationPath+"files/milan8/2.MOV"
                      if(radio7.checked) video1.source=applicationPath+"files/video/2.MOV"
                      if(radio8.checked) video1.source=applicationPath+"files/redline/2.mp4"
                      if(radio9.checked) podcast.source=applicationPath+"files/podcast/2.mp3"
                      if(radio10.checked) video1.source=applicationPath+"files/varchope/2.mp4"
                      if(radio11.checked) video1.source=applicationPath+"files/donyayefilm/2.mp4"
                      if(radio12.checked) video1.source=applicationPath+"files/3dots/2.mp4"
                      if(radio13.checked) video1.source=applicationPath+"files/jorat/2.mp4"
                      if(radio14.checked) video1.source=applicationPath+"files/alzimer/2.mp4"
                      videoback.visible=false
                      if(radio9.checked) podcast.play()
                      else video1.play()


                  }
                  numb: "2"
                  highlight: radiob2.checked

                }
                Rbutton{
                  id:rbt3
                  visible: radio6.checked | radio7.checked | radio9.checked | radio10.checked | radio11.checked | radio12.checked | radio13.checked | radio14.checked
                  onPressme: {
                      radiob3.checked=true
                      if(radio6.checked) video1.source=applicationPath+"files/milan8/3.mp4"
                      if(radio7.checked) video1.source=applicationPath+"files/video/3.mp4"
                      if(radio8.checked) video1.source=applicationPath+"files/redline/3.mp4"
                      if(radio9.checked) podcast.source=applicationPath+"files/podcast/3.mp3"
                      if(radio10.checked) video1.source=applicationPath+"files/varchope/3.mp4"
                      if(radio11.checked) video1.source=applicationPath+"files/donyayefilm/3.mp4"
                      if(radio12.checked) video1.source=applicationPath+"files/3dots/3.mp4"
                      if(radio13.checked) video1.source=applicationPath+"files/jorat/3.mp4"
                      if(radio14.checked) video1.source=applicationPath+"files/alzimer/3.mp4"
                      videoback.visible=false
                      if(radio9.checked) podcast.play()
                      else video1.play()
                  }
                  numb: "3"
                  highlight: radiob3.checked

                }
                Rbutton{
                    id:rbt4
                    visible: radio6.checked | radio7.checked | radio9.checked | radio10.checked | radio11.checked | radio12.checked | radio13.checked | radio14.checked
                    onPressme: {
                        radiob4.checked=true
                        if(radio6.checked) video1.source=applicationPath+"files/milan8/4.mp4"
                         if(radio7.checked) video1.source=applicationPath+"files/video/4.mp4"
                        if(radio8.checked) video1.source=applicationPath+"files/redline/4.mp4"
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/4.mp3"
                        if(radio10.checked) video1.source=applicationPath+"files/varchope/4.mp4"
                        if(radio11.checked) video1.source=applicationPath+"files/donyayefilm/4.mp4"
                        if(radio12.checked) video1.source=applicationPath+"files/3dots/4.mp4"
                        if(radio13.checked) video1.source=applicationPath+"files/jorat/4.mp4"
                        if(radio14.checked) video1.source=applicationPath+"files/alzimer/4.mp4"
                        videoback.visible=false
                        if(radio9.checked) podcast.play()
                        else video1.play()
                    }
                    numb: "4"
                    highlight: radiob4.checked

                }
                Rbutton{
                    id:rbt5
                    visible: radio6.checked | radio7.checked | radio9.checked | radio11.checked | radio14.checked
                    onPressme: {
                        radiob5.checked=true
                        if(radio6.checked) video1.source=applicationPath+"files/milan8/5.mp4"
                        if(radio8.checked) video1.source=applicationPath+"files/redline/5.mp4"
                        if(radio7.checked) video1.source=applicationPath+"files/video/5.mp4"
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/5.mp3"
                        if(radio11.checked) video1.source=applicationPath+"files/donyayefilm/5.mp4"
                        if(radio14.checked) video1.source=applicationPath+"files/alzimer/5.mp4"
                        videoback.visible=false
                        if(radio9.checked) podcast.play()
                        else video1.play()
                    }
                    numb: "5"
                    highlight: radiob5.checked

                }
                Rbutton{
                    id:rbt6
                    visible: radio6.checked | radio9.checked
                    onPressme: {
                        radiob6.checked=true
                        if(radio6.checked) video1.source=applicationPath+"files/milan8/6.mp4"
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/6.mp3"
                        videoback.visible=false
                        if(radio9.checked) podcast.play()
                        else video1.play()
                    }
                    numb: "6"
                    highlight: radiob6.checked

                }
                Rbutton{
                    id:rbt7
                    visible: radio6.checked | radio9.checked
                    onPressme: {
                        radiob7.checked=true
                        if(radio6.checked) video1.source=applicationPath+"files/milan8/7.mp4"
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/7.mp3"
                        videoback.visible=false
                        if(radio9.checked) podcast.play()
                        else video1.play()
                    }
                    numb: "7"
                    highlight: radiob7.checked

                }
                Rbutton{
                    id:rbt8
                    visible: radio6.checked | radio9.checked
                    onPressme: {
                        radiob8.checked=true
                        if(radio6.checked) video1.source=applicationPath+"files/milan8/8.mp4"
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/8.mp3"
                        videoback.visible=false
                        if(radio9.checked) podcast.play()
                        else video1.play()
                    }
                    numb: "8"
                    highlight: radiob8.checked

                }
                Rbutton{
                    id:rbt9
                    visible: radio9.checked
                    onPressme: {
                        radiob9.checked=true
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/9.mp3"
                        podcast.play()
                    }
                    numb: "9"
                    highlight: radiob9.checked

                }
                Rbutton{
                    id:rbt10
                    visible: radio9.checked
                    onPressme: {
                        radiob10.checked=true
                        if(radio9.checked) podcast.source=applicationPath+"files/podcast/10.mp3"
                        podcast.play()
                    }
                    numb: "10"
                    highlight: radiob10.checked

                }
            }
            RowLayout{
                id:videopt
                spacing: 5
                visible: false
                RadioButton{
                    id:radiob1
                }
                RadioButton{
                    id:radiob2
                }
                RadioButton{
                    id:radiob3
                }
                RadioButton{
                    id:radiob4
                }
                RadioButton{
                    id:radiob5
                }
                RadioButton{
                    id:radiob6
                }
                RadioButton{
                    id:radiob7
                }
                RadioButton{
                    id:radiob8
                }
                RadioButton{
                    id:radiob9
                }
                RadioButton{
                    id:radiob10
                }
            }

        }
        Rectangle{
            id:background
            anchors.fill:parent
            color: "black"
            opacity: 0.6
            visible: false
            MouseArea{
                anchors.fill: parent
            }


        }
        Component{
            id:admin
            AdminInfo{

            }
        }

        Loader{
            id:formLoader
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
sourceComponent: admin
        }
        Component{
            id:mycomus

            Contactus{
                id:contactus
                visible: true
                onExit: {
                    background.visible=false
                    if(video1.visible)
                        video1.play()
                    formLoader.sourceComponent=undefined}



            }
        }
        Component{
            id:mycom1

            Contact1{
                id:contact1
                visible: true

                onRegpress: {
                    background.visible=false
                    formLoader.sourceComponent=undefined}
                onExit2: {
                    background.visible=false
                    if(video1.visible)
                        video1.play()
                    formLoader.sourceComponent=undefined}

            }
        }
        Component{
            id:mycom2

            Contact2{
                id:contact2
                visible: true
                onRegpress2: {
                    background.visible=false
                    formLoader.sourceComponent=undefined}
                onExit3: {
                    background.visible=false
                    if(video1.visible)
                        video1.play()
                    formLoader.sourceComponent=undefined}


            }
        }

    }


}
