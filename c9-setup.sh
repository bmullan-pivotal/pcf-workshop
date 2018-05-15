# Install workshop dependencies

# install jdk 8
sudo yum -y install java-1.8.0-openjdk-devel

java -version

sudo alternatives --set java  /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java  
sudo alternatives --set javac /usr/lib/jvm/java-1.8.0-openjdk.x86_64/bin/javac

# install maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version

# install cloud foundry cf cli
sudo wget -O /etc/yum.repos.d/cloudfoundry-cli.repo https://packages.cloudfoundry.org/fedora/cloudfoundry-cli.repo
sudo yum -y install cf-cli
echo "use this command to login to Pivotal Cloud Foundry"
echo "cf login -a api.run.pivotal.io
# cf login -a api.run.pivotal.io






