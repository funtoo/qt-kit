# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="17d6ed940cea4ead62f4055184d4fc69bf06b789"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/17d6ed940cea4ead62f4055184d4fc69bf06b789/qtnetworkauth-17d6ed940cea4ead62f4055184d4fc69bf06b789.tar.bz2 -> qtnetworkauth-17d6ed940cea4ead62f4055184d4fc69bf06b789.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"