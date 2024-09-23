# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="02e1e963ec9492bb1620b3ac3fc6ffc2ff280778"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/02e1e963ec9492bb1620b3ac3fc6ffc2ff280778/qtscxml-02e1e963ec9492bb1620b3ac3fc6ffc2ff280778.tar.bz2 -> qtscxml-02e1e963ec9492bb1620b3ac3fc6ffc2ff280778.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"