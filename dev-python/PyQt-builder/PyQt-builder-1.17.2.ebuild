# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="None https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/2b/36/e0b701f84ab469d0baab0f8973f51deca78224ff08c8dcf454ae926936a6/pyqt_builder-1.17.2.tar.gz -> pyqt_builder-1.17.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.17.2"

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
