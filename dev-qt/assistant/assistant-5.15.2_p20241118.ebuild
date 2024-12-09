# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="15deb8f202b838b4dd1b2ff84e852171e8587881"

QT5_MODULE="qttools"
inherit desktop qt5-build xdg-utils

DESCRIPTION="Tool for viewing on-line documentation in Qt help file format"
SRC_URI="https://invent.kde.org/qt/qt/qttools/-/archive/15deb8f202b838b4dd1b2ff84e852171e8587881/qttools-15deb8f202b838b4dd1b2ff84e852171e8587881.tar.bz2 -> qttools-15deb8f202b838b4dd1b2ff84e852171e8587881.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*[png]
	=dev-qt/qthelp-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtprintsupport-5.15.2*
	=dev-qt/qtsql-5.15.2*[sqlite]
	=dev-qt/qtwidgets-5.15.2*
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/assistant/assistant
)

src_prepare() {
	sed -e "s/qtHaveModule(webkitwidgets)/false/g" \
		-i src/assistant/assistant/assistant.pro || die

	qt5-build_src_prepare
}

src_install() {
	qt5-build_src_install

	doicon -s 32 src/assistant/assistant/images/assistant.png
	newicon -s 128 src/assistant/assistant/images/assistant-128.png assistant.png
	make_desktop_entry "${QT5_BINDIR}"/assistant 'Qt 5 Assistant' assistant 'Qt;Development;Documentation'
}

pkg_postinst() {
	qt5-build_pkg_postinst
	xdg_icon_cache_update
}

pkg_postrm() {
	qt5-build_pkg_postrm
	xdg_icon_cache_update
}