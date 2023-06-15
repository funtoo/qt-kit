# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e8d9e68d25f4bf305f8b3ca5d678594ee4681baa"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="Qt5 module for inter-process communication over the D-Bus protocol"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/e8d9e68d25f4bf305f8b3ca5d678594ee4681baa/qtbase-e8d9e68d25f4bf305f8b3ca5d678594ee4681baa.tar.bz2 -> qtbase-e8d9e68d25f4bf305f8b3ca5d678594ee4681baa.tar.bz2"

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