# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a5bbd4ad3997e812a18ee89973317fd04d169b0a"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/a5bbd4ad3997e812a18ee89973317fd04d169b0a/qtquicktimeline-a5bbd4ad3997e812a18ee89973317fd04d169b0a.tar.bz2 -> qtquicktimeline-a5bbd4ad3997e812a18ee89973317fd04d169b0a.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"