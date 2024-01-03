# imagemagick-deployment-ubuntu

Notes for installing imagemagick on cPanel servers running Ubuntu
 
Build it and install to `/opt/imagemagick`

Check out the instructions at https://imagemagick.org/script/install-source.php to get the latest version.
```bash
git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-7.1.1
cd ImageMagick-7.1.1
./configure --prefix=/opt/imagemagick --with-security-policy=websafe
make
make install
```

install it 
```bash
mkdir -p /opt/imagemagick
curl https://raw.githubusercontent.com/reclaimhosting/imagemagick-deployment-ubuntu/main/imagemagick.tar.gz -o /opt/imagemagick/imagemagick.tar.gz
cd /opt/imagemagick && tar -xvf imagemagick.tar.gz
rm /opt/imagemagick/imagemagick.tar.gz
```