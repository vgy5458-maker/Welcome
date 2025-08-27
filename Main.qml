import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Material.theme: Material.Light
    Material.accent: Material.Cyan


    SwipeView {
        id: swipeView
        width: 640
        height: 400
        anchors.topMargin: 70
        anchors.bottomMargin: 70
        anchors.fill: parent

        Page {
            ScrollView {
                anchors.fill: parent
                ScrollBar.horizontal: ScrollBar {
                       policy: ScrollBar.AlwaysOff
                   }

                Text {
                    width: 600
                    text: "<h2>Handling hardware</h2><p>CachyOS supports multiple kernels (selectable from the advanced options at the boot screen) and provides access to the latest bleeding-edge kernels via the Kernel module or chwd-kernel command.</p><p>These tools automatically update a newly installed kernel along with any modules in use with your existing kernel. For example, updating from kernel 3.18 to 4.1, chwd-kernel will include the 4.1 builds and all previous modules.</p><p>You can configure hardware through the Hardware Detection module or with the chwd CLI. Install graphical drivers, free or proprietary, as needed.</p><h2>Getting help</h2><p>Although CachyOS works mostly out-of-the-box, sometimes issues occur. This page lists resources to help you.</p><h3>Search the web</h3><p>Use search engines with keywords like 'Linux', 'CachyOS', or 'Arch'.</p><h3>Look in the forums</h3><p>Use the dedicated CachyOS forum for collaboration and questions. Post in the appropriate sub-forum.</p><h2>Other resources</h2><ul><li><a href='https://aur.archlinux.org'>AUR Repository</a> - extra software built from source.</li><li><a href='https://wiki.cachyos.org'>CachyOS Wiki</a> - official wiki.</li><li><a href='https://wiki.archlinux.org'>Arch Wiki</a> - official Arch wiki.</li></ul><h2>Suggestions</h2><p>Got a suggestion for improving CachyOS? Post in the forum or drop by IRC. Thank you! We hope you enjoy using CachyOS!</p>"
                    wrapMode: Text.Wrap
                    renderType: Text.QtRendering
                    textFormat: Text.RichText

                    onLinkActivated: function(link) {
                        console.log("Link clicked:", link)
                        Qt.openUrlExternally(link)   // Opens link in default browser
                    }
                }
            }


        }

        Page { Label { text: "Page 2" }


        }
        Page {
            RadioButton {
                x: 37
                y: 179
                text: qsTr("Large")
            }

            RadioButton {
                x: 37
                y: 216
                text: qsTr("Large")
            }

            Label {
                text: "Page 3"
            }
        }

    }

    PageIndicator {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        count: swipeView.count
        currentIndex: swipeView.currentIndex


    }

    Switch {
        text: "Run at startup"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
    }

    property int counter: 0

    Button {             anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 10
        anchors.rightMargin: 10
        text : "Settings"
        onClicked: {
            counter += 1
            console.log("Counter value:", counter)
        }
    }

    Image {
        source: "c.svg"  // path to your SVG file
        width: 60
        height: 60
    }
}
