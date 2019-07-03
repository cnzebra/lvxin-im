#! /bin/bash  

# 注意等号前后不能有空格!!!!!!!
# 注意等号前后不能有空格!!!!!!!
# 注意等号前后不能有空格!!!!!!!


#当前服务器ip
server_host=127.0.0.1

#日志文件地址
log_file="/users/shared/logs/lvxin-server.log"

#数据库连接 注意这个参数值必须要用引号
jdbc_url="jdbc:mysql://127.0.0.1.com:3306/lvxin_db?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC"

#数据库账号
jdbc_username=root

#数据库密码
jdbc_password=root

#redis服务器地址
redis_host=127.0.0.1

#redis端口
redis_port=6379

#redis密码，没有可以不设置,如果有密码请在命令最后面 & 之前加上 --spring.redis.password=${redis_password} （注意前后需要一个空格）
#redis_password=


java -Dcom.sun.akuma.Daemon=daemonized -Dspring.profiles.active=dev -jar ./lvxin-boot-server-3.0.0.jar --server.host=${server_host} --logging.file=${log_file} --spring.datasource.url=${jdbc_url} --spring.datasource.username=${jdbc_username} --spring.datasource.password=${jdbc_password} --spring.redis.host=${redis_host} &