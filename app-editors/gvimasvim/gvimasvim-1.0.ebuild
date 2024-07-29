# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Installs vim as a symlink to gvim"
HOMEPAGE="https://vim.org/"
SRC_URI=""

LICENSE="vim"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	!app-editors/vim
	app-editors/gvim
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	dosym /usr/bin/gvim /usr/bin/vim
	dosym /usr/bin/gvim /usr/bin/vimdiff
	dosym /usr/bin/gvim /usr/bin/rvim
	dosym /usr/bin/gvim /usr/bin/rview
}
