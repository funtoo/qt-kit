# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="b3aaf1482c48bbc0ca4f7c7934597c055afe4b6a"

PYTHON_COMPAT=( python3_7 python3_8 python3_9 python3_10 )
inherit python-any-r1 qt5-build

DESCRIPTION="The QML and Quick modules for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtdeclarative/-/archive/b3aaf1482c48bbc0ca4f7c7934597c055afe4b6a/qtdeclarative-b3aaf1482c48bbc0ca4f7c7934597c055afe4b6a.tar.bz2 -> qtdeclarative-b3aaf1482c48bbc0ca4f7c7934597c055afe4b6a.tar.bz2"

KEYWORDS="*"

IUSE="gles2-only +jit localstorage vulkan +widgets"

# qtgui[gles2-only=] is needed because of bug 504322
DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*:5=[gles2-only=,vulkan=]
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qttest-5.15.2*
	media-libs/libglvnd
	localstorage? ( =dev-qt/qtsql-5.15.2* )
	widgets? ( =dev-qt/qtwidgets-5.15.2*[gles2-only=] )
"
RDEPEND="${DEPEND}"
BDEPEND="${PYTHON_DEPS}"

PATCHES=(
	"${FILESDIR}/${PN}-5.14.2-QQuickItemView-fix-maxXY-extent.patch" # QTBUG-83890
	"${FILESDIR}/${PN}-5.15.2-riscv-atomic.patch" # bug 790689
)

src_prepare() {
	use jit || PATCHES+=( "${FILESDIR}/${PN}-5.4.2-disable-jit.patch" )

	qt_use_disable_mod localstorage sql \
		src/imports/imports.pro

	qt_use_disable_mod widgets widgets \
		src/src.pro \
		src/qmltest/qmltest.pro \
		tests/auto/auto.pro \
		tools/tools.pro \
		tools/qmlscene/qmlscene.pro \
		tools/qml/qml.pro

	qt5-build_src_prepare
}

src_configure() {
	local myqmakeargs=(
		--
		-qml-debug
	)
	qt5-build_src_configure
}