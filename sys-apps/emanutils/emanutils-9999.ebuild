# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Bleeding edge emanutils"
HOMEPAGE="https://github.com/emanuele6/emanutils"
EGIT_REPO_URI="https://github.com/emanuele6/emanutils.git"

LICENSE="ISC"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	emake "DESTDIR=${D}" "PREFIX=${EPREFIX}/usr" install
}
