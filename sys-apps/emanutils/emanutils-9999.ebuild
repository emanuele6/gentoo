# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="A collection of exec tools for amd64 GNU/Linux"
HOMEPAGE="https://github.com/emanuele6/emanutils"
EGIT_REPO_URI="https://github.com/emanuele6/emanutils.git"

LICENSE="ISC"
SLOT="0"

src_install() {
	emake "DESTDIR=${D}" "PREFIX=${EPREFIX}/usr" install
}
