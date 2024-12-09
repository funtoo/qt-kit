# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="56f5bf5a27db344e62d74bd5d2d54060e4b81fa2"

inherit qt5-build

DESCRIPTION="Translation files for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qttranslations/-/archive/56f5bf5a27db344e62d74bd5d2d54060e4b81fa2/qttranslations-56f5bf5a27db344e62d74bd5d2d54060e4b81fa2.tar.bz2 -> qttranslations-56f5bf5a27db344e62d74bd5d2d54060e4b81fa2.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="=dev-qt/qtcore-5.15.2*"
BDEPEND="=dev-qt/linguist-tools-5.15.2*"