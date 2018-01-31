
while true; do
  date
  docker-compose exec db /docker-entrypoint-initdb.d/web2
  sleep 10
  date
  docker-compose exec db /docker-entrypoint-initdb.d/web1
  sleep 10
done
