
# echo "[some repository]" | sudo tee -a /etc/apt/sources.list
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list

sudo apt-get update

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java8-installer

java -version

