# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="None https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/e6/f5/daead7fd8ef3675ce55f4ef66dbe3287b0bdd74315f6b5a57718a020570b/pyqt_builder-1.16.4.tar.gz -> pyqt_builder-1.16.4.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.16.4"

post_src_unpack() {
	mv pyqt_builder-* "${S}"
}

src_prepare() {
	# This is needed until we have setuptoos_scm-8
	sed -i -e "s|^dynamic.*|version = \"${PV}\"|g" \
		-e '/^version_file.*/d' \
		pyproject.toml
	distutils-r1_src_prepare
}
