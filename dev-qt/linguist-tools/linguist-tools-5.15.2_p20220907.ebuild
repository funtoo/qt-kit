# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="32912a06aadfc3dcbc34e0a668ce2c78351eee6e"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Tools for working with Qt translation data files"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/32912a06aadfc3dcbc34e0a668ce2c78351eee6e/qttools-32912a06aadfc3dcbc34e0a668ce2c78351eee6e.tar.bz2 -> qttools-32912a06aadfc3dcbc34e0a668ce2c78351eee6e.tar.bz2"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtxml-5.15.2*
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/linguist
)

src_prepare() {
	sed -i -e '/SUBDIRS += linguist/d' \
		src/linguist/linguist.pro || die

	qt_use_disable_mod qml qmldevtools-private \
		src/linguist/lupdate/lupdate.pro

	qt5-build_src_prepare
}