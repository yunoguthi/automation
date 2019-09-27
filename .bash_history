docker swarm join --token SWMTKN-1-5xlff9w0dcis8ez8sq7eae546yesmy3gzo92k01f1n9e27farj-98how7y4yc4jtfw0beqjyypmq 192.168.33.20:2377
yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins
systemctl status jenkins.service 
yum install -y java
systemctl start jenkins
systemctl status jenkins
ip a
cd
ss -nltp
ss -nltp | grep 8080
systemctl stop jenkins
systemctl start jenkins
journalctl -u jenkins
ss -nltp | grep 8080
cat /var/lib/jenkins/secrets/initialAdminPassword
yum install -y git
cd /var/lib/jenkins/
pwd
ls
cd workspace/
ls
cd hello-jenkins
l
ls
cat readme.md 
exit
usermod -G docker -a Jenkins
usermod -G docker -a jenkins
systemctl restart jenkins
ls
vim jenkins
vim jenkins
vim jenkins
vim jenkins
vim jenkins
ls
cat jenkins 
ysql
docker ls | grep mysql
docker ps | grep mysql
exit
ls
cd 
ls
usermod -G docker -a Jenkins
sudo su
exit
cd 
ls
cd
ls
cd /home/vagrant/
ls
cd
ls
gedit
sudo apt-get install gedit
yum -y gedit
vim jenkins 
vim jenkins2
docker rm -f $(docker ps -qa)
docker system prune -f
docker network prune -f
docker volume prune -f
docker network prune -f
clear
#docker rm -f $(docker ps -qa)
#docker system prune -f
docker ps
mount -t nfs 192.168.33.10:/srv/nfs/mysql_data /mnt
cat /mnt/paramahansa_yogananda 
umount /mnt/
ls
vim jenkins2
vim jenkins2
docker jenckins2
vim jenkins2
git status
vim jenkins2
vim jenkins2
vim jenkins2
git status
ls
vim jenkins2
ifconfig
ls
cd jenkins
mkdir jenkins
mv jenkins jenkins.groovy
mkdir jenkins
mv jenkins2 jenkins/Jenkinsfile.groovy
ls
git status
ls
cd jenkins/
ls
git status
cd ..
cd jenkins/
vim Jenkinsfile.groovy 
docker ps | grep mysql
bash <<eof
yum install java-1.8.0
                 rpm -Uvh https://repo.rundeck.org/latest.rpm
                 yum install rundeck
                 service rundeckd start
eof

bash <<eof
yum install -y java-1.8.0
                 rpm -Uvh https://repo.rundeck.org/latest.rpm
                 yum install -y rundeck
                 service rundeckd start
eof

cd /etc/rundeck/
ls
sed -i 's/localhost/192.168.33.30/g' framework.properties 
sed -i 's/localhost/192.168.33.30/g' rundeck-config.properties 
systemctl restart rundeckd
systemctl restart rundeck
systemctl restart rundeck
systemctl restart rundeckd.service 
systemctl restart rundeckd
systemctl status rundeck
systemctl status rundeckd
ss -nltp
exit
