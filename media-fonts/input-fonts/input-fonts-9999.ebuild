# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font

DESCRIPTION="Input is a flexible system of fonts designed specifically for code by David Jonathan Ross."
HOMEPAGE="https://input.djr.com/"
SRC_URI="https://input.djr.com/build/?fontSelection=whole&a=0&g=ss&i=serif&l=serif&zero=slash&asterisk=0&braces=straight&preset=default&line-height=1.2&accept=I+do&email=&.zip"
S="${WORKDIR}"

LICENSE="EULA"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="app-arch/unzip"

# Font eclass vars
FONT_SUFFIX="ttf"
FONTDIR="/usr/share/fonts/Input_Fonts"

src_install() {

   insinto "${FONTDIR}"
   doins "${S}/Input_Fonts/"SETTINGS.txt
   doins "${S}/Input_Fonts/"LICENSE.txt
   doins "${S}/Input_Fonts/"README.txt

   insinto "${FONTDIR}/InputMono/InputMono"
	find "${S}/Input_Fonts/InputMono/InputMono" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputMono/InputMonoCompressed"
	find "${S}/Input_Fonts/InputMono/InputMonoCompressed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputMono/InputMonoCondensed"
	find "${S}/Input_Fonts/InputMono/InputMonoCondensed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputMono/InputMonoNarrow"
	find "${S}/Input_Fonts/InputMono/InputMonoNarrow" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSans/InputSans"
	find "${S}/Input_Fonts/InputSans/InputSans" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSans/InputSansCompressed"
	find "${S}/Input_Fonts/InputSans/InputSansCompressed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSans/InputSansCondensed"
	find "${S}/Input_Fonts/InputSans/InputSansCondensed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSans/InputSansNarrow"
	find "${S}/Input_Fonts/InputSans/InputSansNarrow" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSerif/InputSerif"
	find "${S}/Input_Fonts/InputSerif/InputSerif" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSerif/InputSerifCompressed"
	find "${S}/Input_Fonts/InputSerif/InputSerifCompressed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSerif/InputSerifCondensed"
	find "${S}/Input_Fonts/InputSerif/InputSerifCondensed" -type f -name "*.ttf" -exec doins {} +

   insinto "${FONTDIR}/InputSerif/InputSerifNarrow"
	find "${S}/Input_Fonts/InputSerif/InputSerifNarrow" -type f -name "*.ttf" -exec doins {} +

}
