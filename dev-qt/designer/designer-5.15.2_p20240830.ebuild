# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0378d3e541f40bc9c5433eac70d3949ddff9cfc4"

QT5_MODULE="qttools"
inherit desktop qt5-build xdg-utils

DESCRIPTION="WYSIWYG tool for designing and building graphical user interfaces with QtWidgets"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/0378d3e541f40bc9c5433eac70d3949ddff9cfc4/qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2 -> qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2"

KEYWORDS="*"

IUSE="declarative"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*:5=[png]
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtprintsupport-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	=dev-qt/qtxml-5.15.2*
	declarative? ( =dev-qt/qtdeclarative-5.15.2*[widgets] )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/designer
)

src_prepare() {
	qt_use_disable_mod declarative quickwidgets \
		src/designer/src/plugins/plugins.pro

	sed -e "s/qtHaveModule(webkitwidgets)/false/g" \
		-i src/designer/src/plugins/plugins.pro || die

	qt5-build_src_prepare
}

src_install() {
	qt5-build_src_install

	doicon -s 128 src/designer/src/designer/images/designer.png
	make_desktop_entry "${QT5_BINDIR}"/designer 'Qt 5 Designer' designer 'Qt;Development;GUIDesigner'
}

pkg_postinst() {
	qt5-build_pkg_postinst
	xdg_icon_cache_update
}

pkg_postrm() {
	qt5-build_pkg_postrm
	xdg_icon_cache_update
}