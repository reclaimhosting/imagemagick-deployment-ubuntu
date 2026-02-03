# imagemagick-deployment-ubuntu

Use `build.sh` on ubuntudev to install the lastest version to `/opt/rh-imagemagick` and make a tarball.
```bash
cd ~/imagemagick-deployment-ubuntu
git pull
bash build.sh imagemagick-22.tar.gz
```

Did it work?
```bash
/opt/rh-imagemagick/bin/magick --version
```

If so, then upload the tarball here. You should be able to just use git to commit the new file and push it to this repository.
```bash
cd ~/imagemagick-deployment-ubuntu
git add imagemagick-22.tar.gz
git commit
git push
```

To install it clone this repo and install it with the included script.
```
git clone https://github.com/reclaimhosting/imagemagick-deployment-ubuntu.git && \
cd imagemagick-deployment-ubuntu
bash install.sh
```
