# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="c15243692a8e8290c938eb25bc2bd2902caf31d8"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Multi-threading concurrence support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/c15243692a8e8290c938eb25bc2bd2902caf31d8/qtbase-c15243692a8e8290c938eb25bc2bd2902caf31d8.tar.bz2 -> qtbase-c15243692a8e8290c938eb25bc2bd2902caf31d8.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/concurrent
)