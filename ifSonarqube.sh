
#此脚本---用来一键启动Sonarqube环境

#----------------------------------------------------------

#判断是否存在Sonarqube环境是否启动
docker ps | grep sonarqube  postgres &> /dev/null
#如果没有启动，使用docker-compose启动相关的sonarqube容器
if [ $? -ne 0 ]
then
	echo "sonarqube is not up,we will start up it!!!"
   wget https://github.com/jamesz2011/sonarqube/raw/master/postgres_sonarqube.yml

  #docker-compose -f postgres_sonarqube.yml up -d
  docker-compose -f postgres_sonarqube.yml up 
    

else
	echo "Sonarqube is up!!!"
fi

echo "---------------------------------------------------------"


echo "请等待10分钟，sonarqube环境有点费时间！！！"

echo "----------------------------------------------------------"
