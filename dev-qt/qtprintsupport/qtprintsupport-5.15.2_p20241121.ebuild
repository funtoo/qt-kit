# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="2529f7f0c2333d437089c775c9c30f624d1fd5bc"

QT5_MODULE="qtbase"
VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Printing support library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/2529f7f0c2333d437089c775c9c30f624d1fd5bc/qtbase-2529f7f0c2333d437089c775c9c30f624d1fd5bc.tar.bz2 -> qtbase-2529f7f0c2333d437089c775c9c30f624d1fd5bc.tar.bz2"

KEYWORDS="*"

IUSE="cups gles2-only"

RDEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*[gles2-only=]
	=dev-qt/qtwidgets-5.15.2*[gles2-only=]
	cups? ( >=net-print/cups-1.4 )
"
DEPEND="${RDEPEND}
	test? ( =dev-qt/qtnetwork-5.15.2* )
"

QT5_TARGET_SUBDIRS=(
	src/printsupport
	src/plugins/printsupport
)

QT5_GENTOO_CONFIG=(
	cups
)

src_configure() {
	local myconf=(
		$(qt_use cups)
		-opengl $(usex gles2-only es2 desktop)
	)
	qt5-build_src_configure
}