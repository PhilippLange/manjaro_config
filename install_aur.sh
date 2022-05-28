#!/bin/bash
# installs AUR packages
# to upgrade AUR packages use:
# pamac upgrade -a

# add dropbox public key
# https://help.dropbox.com/en-us/installs-integrations/desktop/linux-repository
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# add spotify public key
# https://www.spotify.com/us/download/linux/
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --import -

pamac build dropbox spotify google-chrome nordvpn-bin keepassxc signal-desktop
