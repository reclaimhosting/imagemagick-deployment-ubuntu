# imagemagick-deployment-ubuntu

Use `build.sh` on ubuntudev to install the lastest version to `/opt/imagemagick`

Grab the tarball and install it on other cPanel servers:
```bash
mkdir -p /opt/imagemagick
curl https://raw.githubusercontent.com/reclaimhosting/imagemagick-deployment-ubuntu/main/imagemagick.tar.gz -o /opt/imagemagick/imagemagick.tar.gz
cd /opt/imagemagick && tar -xvf imagemagick.tar.gz
rm /opt/imagemagick/imagemagick.tar.gz
```