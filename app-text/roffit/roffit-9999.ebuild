# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Converts nroff man pages to HTML"
HOMEPAGE="
	https://daniel.haxx.se/projects/roffit
	https://github.com/bagder/roffit
"

LICENSE="MIT"
SLOT="0"

if [[ ${PV} = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/bagder/roffit.git"
else
	KEYWORDS="amd64"
	SRC_URI="
		https://codeload.github.com/bagder/${PN}/tar.gz/refs/tags/${PV}
			-> ${P}.tar.gz
	"
fi

src_install () {
	dobin ./roffit
	doman ./roffit.1
}
