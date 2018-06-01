# haproxy

The Reliable, High Performance TCP/HTTP Load Balancer

## use case

Test using haproxy for a load balancer with sticky sessions.

## build my-haproxy

```none
docker build -t my-haproxy .

or

./build.sh
```

## run environment

I map in from my host port 8000.

```none
docker-compose up -d
```

Should be able to go to [http://localhost:8000](http://localhost:8000)

## test sticky sessions

Run ab, requires `httpd-tools`

```none
ab -n 100 -c 10 http://localhost:8000/
```

## check if sticky

Look at haproxy stats to see if all sessions were handled by one of the backend servers.

```none
http://localhost:8000/stats
```
