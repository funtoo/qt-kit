# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The PyQt build system"
HOMEPAGE="None https://pypi.org/project/PyQt-builder/"
SRC_URI="https://files.pythonhosted.org/packages/04/78/ec38b8fa8f44d7437cc4b1930669d50baebb3c43c16d0a65c5b487fa2d12/pyqt_builder-1.17.0.tar.gz -> pyqt_builder-1.17.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyQt-builder-1.17.0"

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
