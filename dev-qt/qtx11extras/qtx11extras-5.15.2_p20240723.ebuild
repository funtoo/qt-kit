# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="ff2cc0065a3504e6043b47b1b4601fcdce62eefb"

inherit qt5-build

DESCRIPTION="Linux/X11-specific support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtx11extras/-/archive/ff2cc0065a3504e6043b47b1b4601fcdce62eefb/qtx11extras-ff2cc0065a3504e6043b47b1b4601fcdce62eefb.tar.bz2 -> qtx11extras-ff2cc0065a3504e6043b47b1b4601fcdce62eefb.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[X]
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtwidgets-5.15.2* )
"