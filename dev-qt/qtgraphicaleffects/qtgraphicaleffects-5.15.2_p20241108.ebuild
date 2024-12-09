# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="d6ef4931b295881becd2ff37b301a0115f14618e"

VIRTUALX_REQUIRED="test"
inherit qt5-build

DESCRIPTION="Set of QML types for adding visual effects to user interfaces"
SRC_URI="https://invent.kde.org/qt/qt/qtgraphicaleffects/-/archive/d6ef4931b295881becd2ff37b301a0115f14618e/qtgraphicaleffects-d6ef4931b295881becd2ff37b301a0115f14618e.tar.bz2 -> qtgraphicaleffects-d6ef4931b295881becd2ff37b301a0115f14618e.tar.bz2"

KEYWORDS="*"

IUSE=""

RDEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
"
DEPEND="${RDEPEND}"