===================
Awesome WM Copycats
===================

--------------------------------
Power themes for Awesome WM 3.5+
--------------------------------

:Author: Luke Bonham <dada [at] archlinux [dot] info>
:Version: 2.0-git
:License: BY-NC-SA_
:Source: https://github.com/copycat-killer/awesome-copycats

Description
==========

A set of themes with the aim of making Awesome_ appearance awesome too!

Notable features
================

- Shadow widgets (*tell me only when you have to*)
- Autostart applications
- Fast mpd and volume shortcuts (first time you see this trick in Awesome)
- Other shortcuts for copying to the clipboard (goodbye clipboard managers!), toggle wiboxes, widgets popups, screenshots capture, moving and magnifying clients
- Quake drop-down terminal
- Calendar with current day highlighted and months switch with a click
- Elegant notifications for new mails, current song, volume level, hdd critical state, low battery
- Yahoo! Weather integration
- Net carrier status notifier
- Colorful autoupdating icons
- Symbolic tag names
- TXT layoutbox
- PNG wibox bar
- Custom layouts
- No borders when there's only one visible client
- Powerful volume bar
- Freedesktop menu
- Vi-like client focus
- Nice client border (colors change along with process status)
- Non-empty tag browsing
- Dynamic useless gaps
- Dynamic tagging

Gallery
=======

**Multicolor** copycatted from tip_

.. image:: http://dotshare.it/public/images/uploads/650.png

**Powerarrow Darker** copycatted from romockee_ [port from v3.4]

.. image:: http://dotshare.it/public/images/uploads/649.png

**Steamburn** copycatted from ok100_ [port from dwm]

.. image:: http://dotshare.it/public/images/uploads/648.png

**Blackburn**

.. image:: http://dotshare.it/public/images/uploads/553.png

**Dremora**

.. image:: http://dotshare.it/public/images/uploads/652.png

**Rainbow**

.. image:: http://dotshare.it/public/images/uploads/606.png

**Holo** suggested by amouly_

.. image:: http://dotshare.it/public/images/uploads/651.png

**Copland** inspired by foozer_

.. image:: http://dotshare.it/public/images/uploads/655.png 

Installation
============

Using git: ::

    git clone https://github.com/copycat-killer/awesome-copycats.git
    mv -u awesome-copycats ~/.config/awesome
    cd ~/.config/awesome/lain
    git submodule init
    git submodule update

Otherwise download this two archives (1_ and 2_), extract the first one, extract the second one into the first one, and put the contents of the first one into your Awesome directory.

Usage
=====

Switch a theme this way: ::

    cd ~/.config/awesome
    cp rc.lua.theme rc.lua

then customize your ``rc.lua`` and restart Awesome (``Mod4 + ctrl + r``).

Notes
=====

Be sure to have Lua 5.2+, Lua-lgi, and latest version of Awesome.

Complements are provided by lain_: be sure to meet its dependencies_.

Fonts are Terminus_ (Multicolor, Powerarrow Darker) and Tamsyn_ (other ones).

Every theme has a colorscheme_.

Blackburn and Dremora use Icons_, be sure to have bitmaps enabled if running under Debian_ or Ubuntu_.

Freedesktop uses ``/etc/mime.types``, so be sure to have mime-types support installed.

Eminent, freedesktop and scratchdrop are third-party softwares: **rely on their creators if they cause you issues**.

.. _BY-NC-SA: http://creativecommons.org/licenses/by-nc-sa/3.0/
.. _Awesome: http://awesome.naquadah.org/
.. _tip: http://theimmortalphoenix.deviantart.com/art/Full-Color-Awesome-340997258
.. _romockee: https://github.com/romockee/powerarrow-dark
.. _ok100: http://ok100.deviantart.com/art/DWM-January-2013-348656846
.. _amouly: https://bbs.archlinux.org/viewtopic.php?pid=1307158#p1307158
.. _foozer: http://dotshare.it/dots/499/
.. _1: https://github.com/copycat-killer/awesome-copycats/archive/master.zip
.. _2: https://github.com/copycat-killer/lain/archive/master.zip
.. _lain: https://github.com/copycat-killer/lain
.. _dependencies: https://github.com/copycat-killer/lain/wiki
.. _Terminus: http://terminus-font.sourceforge.net/
.. _Tamsyn: http://www.fial.com/~scott/tamsyn-font/
.. _colorscheme: https://github.com/copycat-killer/dots/tree/master/.colors
.. _Icons: https://github.com/copycat-killer/dots/tree/master/.fonts
.. _Debian: http://weiwu.sdf.org/100921.html
.. _Ubuntu: https://wiki.ubuntu.com/Fonts#Enabling_Bitmapped_Fonts
