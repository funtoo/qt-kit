# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="0378d3e541f40bc9c5433eac70d3949ddff9cfc4"

QT5_MODULE="qttools"
inherit desktop qt5-build xdg-utils

DESCRIPTION="Graphical tool for translating Qt applications"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/0378d3e541f40bc9c5433eac70d3949ddff9cfc4/qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2 -> qttools-0378d3e541f40bc9c5433eac70d3949ddff9cfc4.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/designer-5.15.2*
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*:5=[png]
	=dev-qt/qtprintsupport-5.15.2*
	=dev-qt/qtwidgets-5.15.2*
	=dev-qt/qtxml-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/linguist/linguist
)

src_install() {
	qt5-build_src_install

	local size
	for size in 16 32 48 64 128; do
		newicon -s ${size} src/linguist/linguist/images/icons/linguist-${size}-32.png linguist.png
	done
	make_desktop_entry "${QT5_BINDIR}"/linguist 'Qt 5 Linguist' linguist 'Qt;Development;Translation'
}

pkg_postinst() {
	qt5-build_pkg_postinst
	xdg_icon_cache_update
}

pkg_postrm() {
	qt5-build_pkg_postrm
	xdg_icon_cache_update
}