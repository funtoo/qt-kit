# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="26fdcaff0d3d6bf6f5c847e833006577a6e8ba7d"

inherit qt5-build

DESCRIPTION="SVG rendering library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtsvg/-/archive/26fdcaff0d3d6bf6f5c847e833006577a6e8ba7d/qtsvg-26fdcaff0d3d6bf6f5c847e833006577a6e8ba7d.tar.bz2 -> qtsvg-26fdcaff0d3d6bf6f5c847e833006577a6e8ba7d.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	sys-libs/zlib:=
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtxml-5.15.2* )
"