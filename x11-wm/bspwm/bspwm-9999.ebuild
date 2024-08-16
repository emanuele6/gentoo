# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="Bleeding edge bspwm"
HOMEPAGE="https://github.com/baskerville/bspwm"
EGIT_REPO_URI="https://github.com/baskerville/bspwm.git"

LICENSE="BSD-2"
SLOT="0"

DEPEND="
	x11-libs/xcb-util
	x11-libs/xcb-util-wm
"
RDEPEND="${DEPEND}"

src_compile() {
	tc-export CC
	default
}

src_install() {
	emake "DESTDIR=${D}" "PREFIX=${EPREFIX}/usr" install
}
