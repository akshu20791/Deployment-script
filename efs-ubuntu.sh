# Step 1: Update Packages


sudo apt update -y
sudo apt install -y nfs-common
NFS Common is required for mounting EFS.

# Step 2: Install EFS Mount Helper
sudo apt-get update
sudo apt-get -y install git binutils rustc cargo pkg-config libssl-dev gettext
git clone https://github.com/aws/efs-utils
cd efs-utils
./build-deb.sh
 sudo apt-get -y install ./build/amazon-efs-utils*deb

