naokikuzumi-overlay
===================

local overlay for my gentoo linux machine


how to use
----------

0. Your system must have installed layman with 'git' USE flag. Check with
    emerge -pv layman

1. Add the location of overlays.xml to your layman config file.

in _/etc/layman/layman.cfg_

    overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
      https://github.com/NaokiKuzumi/naokikuzumi-overlay/raw/master/overlays.xml
    
2. Add this overlay.

    layman -S
    layman -a naokikuzumi-overlay

3. Now you can emerge the packages in this overlay as usual.


how to uninstall
----------------

    emerge -C packages-you've-installed
    layman -d naokikuzumi-overlay




how to use without layman
-------------------------

First, clone this repo and add 
`PORTDIR_OVERLAY="/the/path/to/this/directory"`
to your make.conf

Next, run `ebuild /the/path/to/this/directory/category/packagename/packagename-version.ebuild digest`

Now you can emerge the packages in this overlay as usual.
