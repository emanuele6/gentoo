# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Installs vim as a symlink to gvim"
HOMEPAGE="https://vim.org/"

S="${WORKDIR}"

LICENSE="vim"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	!app-editors/vim
	app-editors/gvim
"
DEPEND="${RDEPEND}"

src_install() {
	dosym gvim /usr/bin/vim
	dosym gvim /usr/bin/vimdiff
	dosym gvim /usr/bin/rvim
	dosym gvim /usr/bin/rview
}
