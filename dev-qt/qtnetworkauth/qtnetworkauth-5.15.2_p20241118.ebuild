# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0ca0165f1fd036ab2d8ebee6e253cf4e05124cc9"

inherit qt5-build

DESCRIPTION="Network authorization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtnetworkauth/-/archive/0ca0165f1fd036ab2d8ebee6e253cf4e05124cc9/qtnetworkauth-0ca0165f1fd036ab2d8ebee6e253cf4e05124cc9.tar.bz2 -> qtnetworkauth-0ca0165f1fd036ab2d8ebee6e253cf4e05124cc9.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
"
RDEPEND="${DEPEND}"