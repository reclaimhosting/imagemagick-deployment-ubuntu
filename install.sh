#!/usr/bin/env bash

# Get Linux distro info
OS_ID=$(source /etc/os-release && echo $ID)
OS_ID_LIKE=$(source /etc/os-release && echo $ID_LIKE)

# If Ubuntu, install the custom version
if [[ $OS_ID == *"ubuntu"*  || $OS_ID_LIKE == *"ubuntu"* ]]; then
	# Check if dir exists
	if [[ -d /opt/rh-imagemagick ]]; then
		# If so, remove the old copy
		rm -rf /opt/rh-imagemagick
	fi
	# Make the dirs
	mkdir -p /opt/rh-imagemagick
	# Copy the tarball over to the new dir
	cp imagemagick-22.tar.gz /opt/rh-imagemagick/imagemagick-22.tar.gz
	# Extract the tarball into new dir
	cd /opt/rh-imagemagick/ && tar -xvf imagemagick-22.tar.gz
	# Remove the tarball after it's extracted
	rm /opt/rh-imagemagick/imagemagick-22.tar.gz
# If CentOS, create a symlink so paths match up
elif [[ $OS_ID == *"centos"* || $OS_ID_LIKE == *"centos"* ]]; then
	# If symlink does not exist
	if [[ ! -L /opt/rh-imagemagick/bin/convert ]]; then
		# Make the dirs
		mkdir -p /opt/rh-imagemagick/bin
		# Find path for `convert` binary (probably `/usr/bin/convert`)
		CONVERT_PATH=$(which convert)
		# Create symlink to `convert` in new dir
		ln -s $CONVERT_PATH /opt/rh-imagemagick/bin/convert
	fi
fi
