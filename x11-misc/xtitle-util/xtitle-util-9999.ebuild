# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Tool that outputs X window titles"
HOMEPAGE="https://github.com/baskerville/xtitle"

LICENSE="BSD-2"
SLOT="0"

RDEPEND="
	x11-libs/xcb-util-wm
	!x11-misc/xtitle
"
DEPEND="${RDEPEND}"

if [[ ${PV} = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/baskerville/xtitle.git"
else
	KEYWORDS="amd64"
	SRC_URI="https://github.com/baskerville/xtitle/archive/refs/tags/${PV}.tar.gz"
	S="${WORKDIR}/xtitle-${PV}"
fi

src_compile() {
	tc-export CC
	default
}

src_install() {
	emake "DESTDIR=${D}" "PREFIX=${EPREFIX}/usr" install
}
