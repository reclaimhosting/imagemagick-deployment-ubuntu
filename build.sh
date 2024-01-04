#!/usr/bin/env bash

# Find the latest version of ImageMagick
function get_latest {
curl --silent "https://api.github.com/repos/ImageMagick/ImageMagick/releases/latest" |
grep '"tag_name":' |
sed -E 's/.*"([^"]+)".*/\1/' |
sed 's/v//'
}
LATEST=`get_latest`

# Get rid of the existing version of ImageMagick
rm -rf /opt/rh-imagemagick

# Clone the ImageMagick repo
git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-$LATEST
cd ImageMagick-$LATEST

# build it
./configure --prefix=/opt/rh-imagemagick --with-security-policy=websafe
make
make install

# Clean up the ImageMagick Repo
cd ..
rm -rf ImageMagick-$LATEST

# Make the tarball
rm imagemagick.tar.gz
tar -czvf imagemagick.tar.gz -C /opt/rh-imagemagick .
