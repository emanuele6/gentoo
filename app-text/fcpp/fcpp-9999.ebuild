# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Frexx C preprocessor"
HOMEPAGE="
	https://daniel.haxx.se/projects/fcpp/
	https://github.com/bagder/fcpp
"

LICENSE="BSD"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

if [[ $PV = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/bagder/fcpp.git"
else
	KEYWORDS="amd64"
	SRC_URI="https://daniel.haxx.se/projects/$PN/$P.tar.gz"
fi

src_install () {
	dobin ./fcpp
}
