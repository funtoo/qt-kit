# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="64398dfca74a6d4c37d51b56ecfcd1d7ccb6e533"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/64398dfca74a6d4c37d51b56ecfcd1d7ccb6e533/qtscxml-64398dfca74a6d4c37d51b56ecfcd1d7ccb6e533.tar.bz2 -> qtscxml-64398dfca74a6d4c37d51b56ecfcd1d7ccb6e533.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"