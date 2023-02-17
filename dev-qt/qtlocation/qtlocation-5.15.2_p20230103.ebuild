# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="f991e28cb0a670597f1955585c76ce8a26ce9e4b"

inherit qt5-build

DESCRIPTION="Location (places, maps, navigation) library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtlocation/-/archive/f991e28cb0a670597f1955585c76ce8a26ce9e4b/qtlocation-f991e28cb0a670597f1955585c76ce8a26ce9e4b.tar.bz2 -> qtlocation-f991e28cb0a670597f1955585c76ce8a26ce9e4b.tar.bz2
		https://invent.kde.org/qt/qt/qtlocation-mapboxgl/-/archive/d3101bbc22edd41c9036ea487d4a71eabd97823d/qtlocation-mapboxgl-f991e28cb0a670597f1955585c76ce8a26ce9e4b.tar.bz2 -> qtlocation-mapboxgl-5.15.2-f991e28c.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	dev-libs/icu:=
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtnetwork-5.15.2*
	=dev-qt/qtpositioning-5.15.2*[qml]
	=dev-qt/qtsql-5.15.2*
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	=dev-qt/qtconcurrent-5.15.2*
"

QT5_TARGET_SUBDIRS=(
	src/3rdparty/clipper
	src/3rdparty/poly2tri
	src/3rdparty/clip2tri
	src/3rdparty/mapbox-gl-native
	src/location
	src/imports/location
	src/imports/locationlabs
	src/plugins/geoservices
)

src_prepare() {
	mv "${WORKDIR}"/${PN}-mapboxgl-*/* src/3rdparty/mapbox-gl-native || die
	qt5-build_src_prepare
}

src_configure() {
	# src/plugins/geoservices requires files that are only generated when
	# qmake is run in the root directory. Bug 633776.
	mkdir -p "${QT5_BUILD_DIR}"/src/location || die
	qt5_qmake "${QT5_BUILD_DIR}"
	cp "${S}"/src/location/qtlocation-config.pri "${QT5_BUILD_DIR}"/src/location || die
	qt5-build_src_configure
}