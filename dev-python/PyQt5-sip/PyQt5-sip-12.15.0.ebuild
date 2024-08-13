# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The sip module support for PyQt5"
HOMEPAGE="https://github.com/Python-SIP/sip https://pypi.org/project/PyQt5-sip/"
SRC_URI="https://files.pythonhosted.org/packages/1b/15/78318d50f10062c428e97e7ce387e772616a4673c356018b905f247a6a85/PyQt5_sip-12.15.0.tar.gz -> PyQt5_sip-12.15.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/PyQt5_sip-12.15.0"