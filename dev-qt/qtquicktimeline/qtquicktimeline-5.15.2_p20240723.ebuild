# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="a0a95b50f2477823f9400b07e76e516555f16dc0"

inherit qt5-build

DESCRIPTION="Qt module for keyframe-based timeline construction"
SRC_URI="https://invent.kde.org/qt/qt/qtquicktimeline/-/archive/a0a95b50f2477823f9400b07e76e516555f16dc0/qtquicktimeline-a0a95b50f2477823f9400b07e76e516555f16dc0.tar.bz2 -> qtquicktimeline-a0a95b50f2477823f9400b07e76e516555f16dc0.tar.bz2"

KEYWORDS="*"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
"
RDEPEND="${DEPEND}"