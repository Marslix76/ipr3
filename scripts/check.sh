#!/bin/bash
set -e
stage="запуск"
trap 'res=$?; if [ "$res" -ne 0 ]; then echo "Ошибка на этапе: $stage"; fi; docker compose -p test down -v; exit "$res"' EXIT
N=5
export HOST_PORT=8081
docker compose -p test up -d --build
stage="проверка счетчика"
curl --retry 50 --retry-all-errors --retry-connrefused --max-time 10 -fsS http://127.0.0.1:8081/readyz
curl --max-time 10 -fsS http://127.0.0.1:8081/
[[ $(curl --max-time 5 -fsS http://127.0.0.1:8081/) == *"\"count\": 0"* ]]
for ((i=1; i<=N; i++)); do
  curl --max-time 10 -fsS -X POST http://127.0.0.1:8081/increment
done
[[ $(curl --max-time 10 -fsS http://127.0.0.1:8081/) == *"\"count\": $N"* ]]
stage="пересоздание приложения"
docker compose -p test up -d --no-deps --force-recreate app
curl --retry 50 --retry-all-errors --retry-connrefused --max-time 5 -fsS http://127.0.0.1:8081/readyz
[[ $(curl --max-time 10 -fsS http://127.0.0.1:8081/) == *"\"count\": $N"* ]]
stage="проверка отключения redis"
docker compose -p test stop redis
[[ $(curl --max-time 10 -sS -o /dev/null -w '%{http_code}' http://127.0.0.1:8081/healthz) == 200 ]]
[[ $(curl --max-time 10 -sS -o /dev/null -w '%{http_code}' http://127.0.0.1:8081/readyz) == 503 ]]
[[ $(curl --max-time 10 -sS -o /dev/null -w '%{http_code}' -X POST http://127.0.0.1:8081/increment) == 503 ]]
docker compose -p test start redis
curl --retry 50 --retry-all-errors --retry-connrefused --max-time 5 -fsS http://127.0.0.1:8081/readyz
[[ $(curl --max-time 10 -fsS http://127.0.0.1:8081/) == *"\"count\": $N"* ]]
curl --max-time 10 -fsS -X POST http://127.0.0.1:8081/increment
[[ $(curl --max-time 10 -fsS http://127.0.0.1:8081/) == *"\"count\": $((N+1))"* ]]
stage="создание копии"
docker compose -p test stop app redis
docker run --rm -v test_db:/data redis:7-alpine tar -C /data -cf - . > copy
