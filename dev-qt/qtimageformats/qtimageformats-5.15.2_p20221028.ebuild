# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="1b83a9c73d6e5459ec4c2221b2bd7e5396b5e874"

inherit qt5-build

DESCRIPTION="Additional format plugins for the Qt image I/O system"
SRC_URI="https://invent.kde.org/qt/qt/qtimageformats/-/archive/1b83a9c73d6e5459ec4c2221b2bd7e5396b5e874/qtimageformats-1b83a9c73d6e5459ec4c2221b2bd7e5396b5e874.tar.bz2 -> qtimageformats-1b83a9c73d6e5459ec4c2221b2bd7e5396b5e874.tar.bz2"

KEYWORDS="*"

IUSE="mng"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*
	media-libs/libwebp:=
	media-libs/tiff:0
	mng? ( media-libs/libmng:= )
"
RDEPEND="${DEPEND}"

src_configure() {
	sed -e 's/qtConfig(jasper)/false:/' \
		-i src/plugins/imageformats/imageformats.pro || die
	qt_use_disable_config mng mng src/plugins/imageformats/imageformats.pro

	qt5-build_src_configure
}