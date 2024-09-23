# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0378d3e541f40bc9c5433eac70d3949ddff9cfc4"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Qt5 plugin metadata dumper"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/0378d3e541f40bc9c5433eac70d3949ddff9cfc4/qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2 -> qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qtplugininfo
)