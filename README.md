# Setup
```
docker --version > _docker_version
docker-compose --version > _compose_version
docker-compose build
docker-compose up -d
```

# This is expected
```
docker exec $(docker-compose ps -q app) /usr/local/bin/dump > /dev/null
```
prints `stderr` on STDERR.


# Actual
```
docker-compose exec app /usr/local/bin/dump > /dev/null
```
does not print anything.

It puts everthing on STDOUT, e.g.
```
docker-compose exec app /usr/local/bin/dump > /tmp/foo
```
still prints nothing, but
```
cat /tmp/foo
```
shows
```
stdout
stderr
```
