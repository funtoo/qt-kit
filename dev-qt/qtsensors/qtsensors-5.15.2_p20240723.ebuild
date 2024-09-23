# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b97c60bee7505eb3901579abc4751f35ba7b303e"

inherit qt5-build

DESCRIPTION="Hardware sensor access library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsensors/-/archive/b97c60bee7505eb3901579abc4751f35ba7b303e/qtsensors-b97c60bee7505eb3901579abc4751f35ba7b303e.tar.bz2 -> qtsensors-b97c60bee7505eb3901579abc4751f35ba7b303e.tar.bz2"

KEYWORDS="*"

# TODO: simulator
IUSE="qml"

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdbus-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
DEPEND="${RDEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}