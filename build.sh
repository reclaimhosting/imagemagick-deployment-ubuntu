#!/bin/bash

cd /tmp

# Find the latest version of ImageMagick
function get_latest {
curl --silent "https://api.github.com/repos/ImageMagick/ImageMagick/releases/latest" |
grep '"tag_name":' |
sed -E 's/.*"([^"]+)".*/\1/' |
sed 's/v//'
}
LATEST=`get_latest`

# Clone the ImageMagick repo
git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-$LATEST
cd ImageMagick-$LATEST

# build it
./configure --prefix=/opt/imagemagick --with-security-policy=websafe
make
make install

# Make the tarball
cd /opt/imagemagick
tar -cvzf /tmp/imagemagick.tar.gz .
