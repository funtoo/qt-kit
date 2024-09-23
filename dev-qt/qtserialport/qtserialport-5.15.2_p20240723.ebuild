# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="aa2ffdbd7295db9e5814070d1432a0b77c59cfce"

inherit qt5-build

DESCRIPTION="Serial port abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtserialport/-/archive/aa2ffdbd7295db9e5814070d1432a0b77c59cfce/qtserialport-aa2ffdbd7295db9e5814070d1432a0b77c59cfce.tar.bz2 -> qtserialport-aa2ffdbd7295db9e5814070d1432a0b77c59cfce.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*
	virtual/libudev:=
"
RDEPEND="${DEPEND}"

src_prepare() {
	# make sure we link against libudev
	sed -i -e 's/:qtConfig(libudev)//' \
		src/serialport/serialport-lib.pri || die

	qt5-build_src_prepare
}