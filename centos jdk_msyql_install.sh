#查看 系统版本
uname -a 
lsb_release -a
#安装jdk8
yum install java-1.8.0-openjdk* -y
#验证是否安装成功
java -version


# 下载mysql源安装包
wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
# 安装mysql源
yum localinstall mysql57-community-release-el7-8.noarch.rpm
# 检查mysql源是否安装成功
yum repolist enabled | grep "mysql.*-community.*"
# 安装MySQL
yum install mysql-community-server
# 启动MySQL服务
systemctl start mysqld
# 开机启动
systemctl enable mysqld
systemctl daemon-reload
# 找到root默认密码
grep 'temporary password' /var/log/mysqld.log
# 登录mysql进行修改
mysql
# 默认密码检查策略要求密码必须包含：大小写字母、数字和特殊符号，并且长度不能少于8位。
mysql> set password for 'root'@'localhost'=password('MyNewPass4!'); 

# 添加远程登录用户
mysql> GRANT ALL PRIVILEGES ON *.* TO 'yangxin'@'%' IDENTIFIED BY 'Yangxin0917!' WITH GRANT OPTION;

# 配置默认编码为utf8 
# 修改/etc/my.cnf配置文件，在[mysqld]下添加编码配置
[mysqld]
character_set_server=utf8
init_connect='SET NAMES utf8'

ubuntu
sudo apt-get install mysql-server mysql-client

sudo apt-get -f install

#先查看一下debian-sys-maint用户的默认密码
sudo cat /etc/mysql/debian.cnf 

#2.使用debian-sys-maint用户及密码连接MySQL
mysql -udebian-sys-maint -pfjEyI0TUWiQiDKvi

show databases;
use mysql;
update user set authentication_string=PASSWORD("输入你想设置的密码") where user='root';
update user set plugin="mysql_native_password";
flush privileges;
quit;

#重启MySQL
/etc/init.d/mysql restart

#jar
sudo nohup java -jar litemall.jar &

#java
 ps -ef|grep java

#zip
yum install -y unzip zip
