# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="4d3d395d14d4a956ac5b30afa859321c1e1934e4"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/4d3d395d14d4a956ac5b30afa859321c1e1934e4/qtgraphicaleffects-4d3d395d14d4a956ac5b30afa859321c1e1934e4.tar.bz2 -> qtgraphicaleffects-4d3d395d14d4a956ac5b30afa859321c1e1934e4.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"