# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="Geist is a new font family for Vercel."
HOMEPAGE="https://vercel.com/font"
SRC_URI="https://github.com/vercel/geist-font/releases/download/${PV}/geist-font-${PV}.zip"
S="${WORKDIR}"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="app-arch/unzip"

# Font eclass vars
FONT_SUFFIX="otf"
FONTDIR="/usr/share/fonts/Geist"

src_install() {
	insinto "${FONTDIR}/Sans"
	find "${S}/Geist" -type f -name "*.otf" -exec doins {} +

	insinto "${FONTDIR}/Mono"
	find "${S}/GeistMono" -type f -name "*.otf" -exec doins {} +
}
