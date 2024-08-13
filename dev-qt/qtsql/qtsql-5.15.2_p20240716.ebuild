# Distributed under the terms of the GNU General Public License v2

EAPI=7
KDE_ORG_COMMIT="9f9a56d750caff8b4459e7e9bf82f1f4d725f72f"

QT5_MODULE="qtbase"
inherit qt5-build

DESCRIPTION="SQL abstraction library for the Qt5 framework"
SRC_URI="https://invent.kde.org/qt/qt/qtbase/-/archive/9f9a56d750caff8b4459e7e9bf82f1f4d725f72f/qtbase-9f9a56d750caff8b4459e7e9bf82f1f4d725f72f.tar.bz2 -> qtbase-9f9a56d750caff8b4459e7e9bf82f1f4d725f72f.tar.bz2"
SLOT=5/5.15.2 # bug 639140

KEYWORDS="*"

IUSE="freetds mysql oci8 odbc postgres +sqlite"

REQUIRED_USE="
	|| ( freetds mysql oci8 odbc postgres sqlite )
"

DEPEND="
	=dev-qt/qtcore-5.15.2*:5=
	freetds? ( dev-db/freetds )
	mysql? ( dev-db/mysql-connector-c:= )
	oci8? ( dev-db/oracle-instantclient:=[sdk] )
	odbc? ( dev-db/unixODBC )
	postgres? ( dev-db/postgresql:* )
	sqlite? ( dev-db/sqlite:3 )
"
RDEPEND="${DEPEND}"

QT5_TARGET_SUBDIRS=(
	src/sql
	src/plugins/sqldrivers
)

QT5_GENTOO_PRIVATE_CONFIG=(
	:sql
)

src_configure() {
	local myconf=(
		$(qt_use freetds  sql-tds    plugin)
		$(qt_use mysql    sql-mysql  plugin)
		$(qt_use oci8     sql-oci    plugin)
		$(qt_use odbc     sql-odbc   plugin)
		$(qt_use postgres sql-psql   plugin)
		$(qt_use sqlite   sql-sqlite plugin)
		$(usex sqlite -system-sqlite '')
	)

	use oci8 && myconf+=("-I${ORACLE_HOME}/include" "-L${ORACLE_HOME}/$(get_libdir)")

	qt5-build_src_configure
}