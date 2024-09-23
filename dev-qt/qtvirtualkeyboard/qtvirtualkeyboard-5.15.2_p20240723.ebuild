# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="e62c1219caef25182ba85383834be04eefce12bf"

inherit qt5-build

DESCRIPTION="Customizable input framework and virtual keyboard for Qt"
SRC_URI="https://invent.kde.org/qt/qt/qtvirtualkeyboard/-/archive/e62c1219caef25182ba85383834be04eefce12bf/qtvirtualkeyboard-e62c1219caef25182ba85383834be04eefce12bf.tar.bz2 -> qtvirtualkeyboard-e62c1219caef25182ba85383834be04eefce12bf.tar.bz2"

KEYWORDS="*"

# TODO: unbundle libraries for more layouts
IUSE="handwriting +spell +X"

DEPEND="
	=dev-qt/qtcore-5.15.2*
	=dev-qt/qtdeclarative-5.15.2*
	=dev-qt/qtgui-5.15.2*
	=dev-qt/qtsvg-5.15.2*
	spell? ( app-text/hunspell:= )
	X? ( x11-libs/libxcb:= )
"
RDEPEND="${DEPEND}"

src_configure() {
	local myqmakeargs=(
		$(usex handwriting CONFIG+=lipi-toolkit '')
		$(usex spell '' CONFIG+=disable-hunspell)
		$(usex X '' CONFIG+=disable-desktop)
		CONFIG+="lang-ar_AR lang-bg_BG lang-cs_CZ lang-da_DK lang-de_DE \
			lang-el_GR lang-en_GB lang-en_US lang-es_ES lang-es_MX \
			lang-et_EE lang-fa_FA lang-fi_FI lang-fr_CA lang-fr_FR \
			lang-he_IL lang-hi_IN lang-hr_HR lang-hu_HU lang-id_ID \
			lang-it_IT lang-ms_MY lang-nb_NO lang-nl_NL lang-pl_PL \
			lang-pt_BR lang-pt_PT lang-ro_RO lang-ru_RU lang-sk_SK \
			lang-sl_SI lang-sq_AL lang-sr_SP lang-sv_SE lang-tr_TR \
			lang-uk_UA lang-vi_VN"
	)
	qt5-build_src_configure
}