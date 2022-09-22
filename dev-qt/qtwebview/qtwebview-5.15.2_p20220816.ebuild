# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="87577dde04ed219bda776dabca86176149736331"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/87577dde04ed219bda776dabca86176149736331/qtwebview-87577dde04ed219bda776dabca86176149736331.tar.bz2 -> qtwebview-87577dde04ed219bda776dabca86176149736331.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"