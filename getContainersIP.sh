for id in $(docker ps -aq)
do
  docker inspect -f "{{ .Name }}: {{ .NetworkSettings.IPAddress }}" $id
done
