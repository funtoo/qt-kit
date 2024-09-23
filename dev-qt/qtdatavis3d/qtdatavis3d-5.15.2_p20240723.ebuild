# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e5c03e4431eed6c4654c20fb2d2a20485cff522d"

inherit qt5-build

DESCRIPTION="3D data visualization library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtdatavis3d/-/archive/e5c03e4431eed6c4654c20fb2d2a20485cff522d/qtdatavis3d-e5c03e4431eed6c4654c20fb2d2a20485cff522d.tar.bz2 -> qtdatavis3d-e5c03e4431eed6c4654c20fb2d2a20485cff522d.tar.bz2"
LICENSE="GPL-3"

KEYWORDS="*"

IUSE="gles2-only qml"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtgui-5.15.2*[gles2-only=]
	qml? ( =dev-qt/qtdeclarative-5.15.2*[gles2-only=] )
"
RDEPEND="${DEPEND}"

src_prepare() {
	# eliminate bogus dependency on qtwidgets
	sed -i -e '/requires.*widgets/d' qtdatavis3d.pro || die

	qt_use_disable_mod qml quick \
		src/src.pro

	qt5-build_src_prepare
}