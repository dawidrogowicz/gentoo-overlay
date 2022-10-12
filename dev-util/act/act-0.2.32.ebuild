EAPI=8

DESCRIPTION="Run your GitHub Actions locally!"
HOMEPAGE="https://github.com/nektos/act"
SRC_URI="https://github.com/nektos/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND} app-containers/docker"
BDEPEND="dev-lang/go"

src_install() {
	emake DESTDIR="${D}" install
}
