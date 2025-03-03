# imagemagick-deployment-ubuntu

Use `build.sh` on ubuntudev to install the lastest version to `/opt/rh-imagemagick` and make a tarball.
```bash
cd ~/imagemagick-deployment-ubuntu
git pull
bash build.sh
```

Did it work?
```bash
/opt/rh-imagemagick/bin/magick --version
```

If so, then upload the tarball here. You should be able to just use git to commit the new file and push it to this repository.
```bash
cd ~/imagemagick-deployment-ubuntu
git add imagemagick.tar.gz
git commit
git push
```

To install it, either grab the tarball and test it on other cPanel servers...
```bash
rm -rf /opt/rh-imagemagick
mkdir -p /opt/rh-imagemagick
curl https://raw.githubusercontent.com/reclaimhosting/imagemagick-deployment-ubuntu/main/imagemagick.tar.gz -o /opt/rh-imagemagick/imagemagick.tar.gz
cd /opt/rh-imagemagick && tar -xvf imagemagick.tar.gz
rm /opt/rh-imagemagick/imagemagick.tar.gz
```

...or clone this repo and install it with the included script.
```
git clone https://github.com/reclaimhosting/imagemagick-deployment-ubuntu.git && \
cd imagemagick-deployment-ubuntu
bash install.sh
```
