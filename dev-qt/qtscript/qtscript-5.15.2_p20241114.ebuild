# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="bcd7cae6215df8f1c8b45a338f3327da51edeaff"

inherit qt5-build

DESCRIPTION="Application scripting library for the Qt5 framework (deprecated)"
SRC_URI="https://invent.kde.org/qt/qt/qtscript/-/archive/bcd7cae6215df8f1c8b45a338f3327da51edeaff/qtscript-bcd7cae6215df8f1c8b45a338f3327da51edeaff.tar.bz2 -> qtscript-bcd7cae6215df8f1c8b45a338f3327da51edeaff.tar.bz2"

KEYWORDS="*"

IUSE="+jit scripttools"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	scripttools? (
		=dev-qt/qtgui-5.15.2*
		=dev-qt/qtwidgets-5.15.2*
	)
"
RDEPEND="${DEPEND}"

src_prepare() {
	qt_use_disable_mod scripttools widgets \
		src/src.pro

	qt5-build_src_prepare
}

src_configure() {
	local myqmakeargs=(
		JAVASCRIPTCORE_JIT=$(usex jit)
	)
	qt5-build_src_configure
}