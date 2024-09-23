# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0c97aae7dc242ac0710e09397672ad878761157a"

inherit qt5-build

DESCRIPTION="Chart component library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtcharts/-/archive/0c97aae7dc242ac0710e09397672ad878761157a/qtcharts-0c97aae7dc242ac0710e09397672ad878761157a.tar.bz2 -> qtcharts-0c97aae7dc242ac0710e09397672ad878761157a.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}