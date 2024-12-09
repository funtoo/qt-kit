# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip https://pypi.org/project/PyQt5-sip/"
SRC_URI="https://files.pythonhosted.org/packages/e1/b8/8e2a30fc0e5222e8d86572d5c7c3611fea93ab8d2369927b6e42977c9a42/PyQt5_sip-12.16.0.tar.gz -> PyQt5_sip-12.16.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt5_sip-12.16.0"