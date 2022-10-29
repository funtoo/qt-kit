# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c4750dd02070ce246ff98cc5d137193825043912"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Qt5 module for integrating online documentation into applications"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/c4750dd02070ce246ff98cc5d137193825043912/qttools-c4750dd02070ce246ff98cc5d137193825043912.tar.bz2 -> qttools-c4750dd02070ce246ff98cc5d137193825043912.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtsql-5.15.2*[sqlite]
	=dev-qt/qtwidgets-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/assistant/help
	src/assistant/qcollectiongenerator
	src/assistant/qhelpgenerator
)