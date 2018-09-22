#!/bin/bash
# Install Prey
## Set Global Variables
tmpPKG=/tmp/prey.pkg
apikey="YOUR API KEY GOES HERE... SCAN THE QR CODE ON PREY"

# Get the latest package URL
/bin/echo 'Finding Latest Package...'
URL=$(/usr/bin/curl -s https://preyproject.com/download/ | /usr/bin/grep -Eo "(https)://[a-zA-Z0-9./?=_-]*.pkg")

# Download the latest package
/bin/echo 'Downloading Latest Package...'
/usr/bin/curl -sLo $tmpPKG $URL

# Install the package
/bin/echo 'Installing Package to "/"...'
API_KEY=$apikey /usr/sbin/installer -pkg $tmpPKG -target /



