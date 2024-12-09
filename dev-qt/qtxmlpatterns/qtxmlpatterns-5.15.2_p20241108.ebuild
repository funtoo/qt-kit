# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="43996a4e543fa22b345c03ba3a1a41b1aba4b454"

inherit qt5-build

DESCRIPTION="XPath, XQuery, XSLT, and XML Schema validation library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtxmlpatterns/-/archive/43996a4e543fa22b345c03ba3a1a41b1aba4b454/qtxmlpatterns-43996a4e543fa22b345c03ba3a1a41b1aba4b454.tar.bz2 -> qtxmlpatterns-43996a4e543fa22b345c03ba3a1a41b1aba4b454.tar.bz2"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod qml qml \
		src/src.pro \
		src/imports/imports.pro

	qt_use_disable_mod qml quick tests/auto/auto.pro

	qt5-build_src_prepare
}