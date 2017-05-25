############################################
# Script que permite ver una lista 
#
# Con los directorios de Logs de WAS
#
##############################################
ps -fea | grep java | grep IBM | grep AppServ | grep -v ucd | grep -v urbancode > servidores.txt
while read line;
do
  INPUT=$line
  # echo "linea : " $INPUT
  PID=$(echo $INPUT| cut -d' ' -f 2)
  #echo  "PID" $PID
  SERVER=`echo $INPUT | rev | cut -d' ' -f 1 | rev`
  #echo "SERVER" $SERVER
  RUTA=`echo $INPUT | rev | cut -d' ' -f 4 | rev |  sed 's/config/logs/g'`
  #echo "RUTA " $RUTA
  echo $RUTA/$SERVER
done < servidores.txt
rm servidores.txt
