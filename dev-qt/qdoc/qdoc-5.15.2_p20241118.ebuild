# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="15deb8f202b838b4dd1b2ff84e852171e8587881"

QT5_MODULE="qttools"
inherit qt5-build

DESCRIPTION="Qt documentation generator"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/15deb8f202b838b4dd1b2ff84e852171e8587881/qttools-15deb8f202b838b4dd1b2ff84e852171e8587881.tar.bz2 -> qttools-15deb8f202b838b4dd1b2ff84e852171e8587881.tar.bz2"

KEYWORDS="*"

IUSE="qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	sys-devel/clang:=
	qml? ( =dev-qt/qtdeclarative-5.15.2* )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/qdoc
)

src_prepare() {
	qt_use_disable_mod qml qmldevtools-private \
		src/qdoc/qdoc.pro

	qt5-build_src_prepare
}

src_configure() {
	# qt5_tools_configure() not enough here, needs another fix, bug 676948
	mkdir -p "${QT5_BUILD_DIR}"/src/qdoc || die
	qt5_qmake "${QT5_BUILD_DIR}"
	cp src/qdoc/qtqdoc-config.pri "${QT5_BUILD_DIR}"/src/qdoc || die

	qt5-build_src_configure
}