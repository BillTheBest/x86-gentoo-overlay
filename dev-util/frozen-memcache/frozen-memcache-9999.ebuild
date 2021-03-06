# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v3

EAPI=4
WANT_AUTOCONF=2.5
WANT_AUTOMAKE=1.11

inherit autotools git-2

DESCRIPTION="Memcache support in frozen using libmemcached"
HOMEPAGE="https://github.com/x86-64/frozen-memcache"
EGIT_REPO_URI="git://github.com/x86-64/frozen-memcache.git"

LICENSE="|| ( GPL-3 )"
SLOT="1"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="
	dev-util/frozen
	dev-libs/libmemcached
"
RDEPEND="${DEPEND}"

src_prepare(){
	eautoreconf
}
