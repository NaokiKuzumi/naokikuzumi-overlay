portage-local
=============

local overlay for my gentoo linux machine


how to use
==========

First, clone this repo and add 
`PORTDIR_OVERLAY="/the/path/to/this/directory"`
to your make.conf

Next, run `ebuild /the/path/to/this/directory/category/packagename/packagename-version.ebuild digest`

Now you can emerge the package as usual.
