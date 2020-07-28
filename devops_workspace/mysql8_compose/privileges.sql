use mysql;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user 'root'@'%' identified by 'yunwei3322';
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为123456：
grant all on *.* to 'root'@'%';

ALTER USER 'root'@'%' IDENTIFIED BY 'yunwei3322' PASSWORD EXPIRE NEVER;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'yunwei3322';

-- 这一条命令一定要有：
flush privileges;
-- 111