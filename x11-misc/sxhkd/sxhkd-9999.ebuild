# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="Bleeding edge sxhkd"
HOMEPAGE="https://github.com/baskerville/sxhkd"
EGIT_REPO_URI="https://github.com/baskerville/sxhkd.git"

LICENSE="BSD-2"
SLOT="0"

RDEPEND="
	x11-libs/xcb-util-keysyms
"
DEPEND="
	${RDEPEND}
	x11-libs/xcb-util
"

src_compile() {
	tc-export CC
	default
}

src_install() {
	local args=(
		"DESTDIR=${D}"
		"PREFIX=${EPREFIX}/usr"
		"DOCPREFIX=${EPREFIX}/usr/share/doc/${PF}"
	)
	emake "${args[@]}" install
}
