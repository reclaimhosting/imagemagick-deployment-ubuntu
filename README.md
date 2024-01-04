# imagemagick-deployment-ubuntu

Use `build.sh` on ubuntudev to install the lastest version to `/opt/imagemagick` and make a tarball.
```bash
cd imagemagick-depoyment-ubuntu
git pull
bash build.sh
```

Check the version
```bash
/opt/imagemagick/bin/magick --version
```

Then, upload the tarball here. You should be able to just use git to commit the new file and push it to this repository.
```bash
git add .
git commit -m 'ImageMagick 7.1.1-26`
git push
```

Grab the tarball and test it on other cPanel servers:
```bash
rm -rf /opt/imagemagick
mkdir -p /opt/imagemagick
curl https://raw.githubusercontent.com/reclaimhosting/imagemagick-deployment-ubuntu/main/imagemagick.tar.gz -o /opt/imagemagick/imagemagick.tar.gz
cd /opt/imagemagick && tar -xvf imagemagick.tar.gz
rm /opt/imagemagick/imagemagick.tar.gz
```
