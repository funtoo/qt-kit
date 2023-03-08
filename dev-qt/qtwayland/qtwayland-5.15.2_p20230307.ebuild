# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="5049ff99ea2687919a2246332511a2753c72d3cd"

inherit qt5-build

DESCRIPTION="Wayland platform plugin for Qt"
SRC_URI="https://invent.kde.org/qt/qt/qtwayland/-/archive/5049ff99ea2687919a2246332511a2753c72d3cd/qtwayland-5049ff99ea2687919a2246332511a2753c72d3cd.tar.bz2 -> qtwayland-5049ff99ea2687919a2246332511a2753c72d3cd.tar.bz2"
SLOT=5/5.15.2 # bug 815646

KEYWORDS="*"

IUSE="vulkan X"

DEPEND="
	dev-libs/wayland
	=dev-qt/qtcore-5.15.2*:5=
	=dev-qt/qtdeclarative-5.15.2*:5=
	=dev-qt/qtgui-5.15.2*:5=[egl,libinput,vulkan=,X?]
	media-libs/libglvnd
	>=x11-libs/libxkbcommon-0.2.0
	vulkan? ( dev-util/vulkan-headers )
	X? (
		=dev-qt/qtgui-5.15.2*[-gles2-only]
		x11-libs/libX11
		x11-libs/libXcomposite
	)
"
RDEPEND="${DEPEND}"

src_configure() {
	local myqmakeargs=(
		--
		$(qt_use vulkan feature-wayland-vulkan-server-buffer)
		$(qt_use X feature-xcomposite-egl)
		$(qt_use X feature-xcomposite-glx)
	)
	qt5-build_src_configure
}