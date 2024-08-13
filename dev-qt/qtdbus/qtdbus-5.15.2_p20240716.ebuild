# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="9f9a56d750caff8b4459e7e9bf82f1f4d725f72f"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Qt5 module for inter-process communication over the D-Bus protocol"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/9f9a56d750caff8b4459e7e9bf82f1f4d725f72f/qtbase-9f9a56d750caff8b4459e7e9bf82f1f4d725f72f.tar.bz2 -> qtbase-9f9a56d750caff8b4459e7e9bf82f1f4d725f72f.tar.bz2"

KEYWORDS="*"

IUSE=""

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	>=sys-apps/dbus-1.4.20
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/dbus
	src/tools/qdbusxml2cpp
	src/tools/qdbuscpp2xml
)

QT5_GENTOO_CONFIG=(
	:dbus
	:dbus-linked:
)

QT5_GENTOO_PRIVATE_CONFIG=(
	:dbus
	:dbus-linked
)

src_configure() {
	local myconf=(
		-dbus-linked
	)
	qt5-build_src_configure
}