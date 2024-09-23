# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="07ae7ea7c94225e73c8eddc9f3f89edc863e83e0"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/07ae7ea7c94225e73c8eddc9f3f89edc863e83e0/qttranslations-07ae7ea7c94225e73c8eddc9f3f89edc863e83e0.tar.bz2 -> qttranslations-07ae7ea7c94225e73c8eddc9f3f89edc863e83e0.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"