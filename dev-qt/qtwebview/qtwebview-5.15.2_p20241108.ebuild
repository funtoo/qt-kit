# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e3de9fef1557d4a5bac4c9fe42b399df34502c9f"

inherit qt5-build

DESCRIPTION="Module for displaying web content in a QML application using the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtwebview/-/archive/e3de9fef1557d4a5bac4c9fe42b399df34502c9f/qtwebview-e3de9fef1557d4a5bac4c9fe42b399df34502c9f.tar.bz2 -> qtwebview-e3de9fef1557d4a5bac4c9fe42b399df34502c9f.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwebengine-5.15.2*:5
"
RDEPEND="${DEPEND}"