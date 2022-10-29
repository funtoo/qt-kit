# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e1faea1db52b91d90ef64dd57eb6529e323b5526"

inherit qt5-build

DESCRIPTION="State Chart XML (SCXML) support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtscxml/-/archive/e1faea1db52b91d90ef64dd57eb6529e323b5526/qtscxml-e1faea1db52b91d90ef64dd57eb6529e323b5526.tar.bz2 -> qtscxml-e1faea1db52b91d90ef64dd57eb6529e323b5526.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"