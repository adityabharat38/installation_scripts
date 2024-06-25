# installing docker,docker-compose,jenkins script
sudo apt update -y
sudo apt install docker -y
sudo apt install docker.io -y
sudo systemctl restart docker
# allow permissions for docker and jenkins user
sudo usermod -aG docker ubuntu
sudo usermod -aG docker jenkins
#restart jenkins to get permissions applied
sudo sytemctl restart jenkins
# restart server for permissions to get applied
echo "restart the server once"
sudo apt install docker-compose -y

# installing jenkins , jekins depends on java installing java along with it 
#1  java installation
sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y
java -version

#2 jenkins installation
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y


