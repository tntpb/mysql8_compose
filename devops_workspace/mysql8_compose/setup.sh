#!/bin/bash
set -e

echo '1.启动mysql....'
#启动mysql
service mysql start
sleep 3
echo `service mysql status`

重新设置mysql密码
 echo '2.开始修改密码....'
 mysql < /mysql/privileges.sql
 echo '3.修改密码完毕....'

#sleep 3
echo `service mysql status`
echo `mysql容器启动完毕,且数据导入成功`

tail -f /dev/null
#111