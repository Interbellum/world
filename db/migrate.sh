RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

while getopts n:c:e:v: flag
do
    case "${flag}" in
        n) name=${OPTARG};;
        c) command=${OPTARG};;
        e) env=${OPTARG};;
        v) version=${OPTARG};;
    esac
done

echo "-------------------------------------------------------------------------"

if [[ $env  == 'local' ]]; then
  database="postgres://admin:admin@localhost:5432/world?sslmode=disable"
elif [[ $env  == 'dev' ]]; then
  database="postgres://admin:admin@localhost:5432/world?sslmode=disable"
elif [[ $env  == 'stage' ]]; then
  database="postgres://admin:admin@localhost:5432/world?sslmode=disable"
elif [[ $env  == 'prod' ]]; then
  database="postgres://admin:admin@localhost:5432/world?sslmode=disable"
else
  echo "${RED}Please specify the environment: -e env${NC}"
  echo "env: local | dev | stage | prod "
fi

if [[ $command  == 'up' ]]; then
  migrate -path ./migrations -database $database up
elif [[ $command  == 'down' ]]; then
  migrate -path ./migrations -database $database down
elif [[ $command  == 'up1' ]]; then
  migrate -path ./migrations -database $database up 1
elif [[ $command  == 'down1' ]]; then
  migrate -path ./migrations -database $database down 1
elif [[ $command  == 'drop' ]]; then
  migrate -path ./migrations -database $database drop
elif [[ $command  == 'version' ]]; then
  migrate -path ./migrations -database $database version
elif [[ $command  == 'generate' ]]; then
  migrate create -ext sql -dir ./migrations -seq -digits 7 $name
elif [[ $command  == 'force' ]]; then
  migrate -path ./migrations -database $database force $version
else
  echo "${RED}Please specify the command: -c cmd${NC}"
  echo "commands: up | down | up1 | down1 | drop | version | generate -n name | force -v version"
fi