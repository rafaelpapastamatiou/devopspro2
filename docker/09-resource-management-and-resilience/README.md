# Chaos Simulator

### Environment Variables

**SIGTERM_SECONDS**

Seconds until application execution ends


### How to build and execute the app

```sh
docker build -t devopspro2-09-resource-management-and-resilience-node .

docker container run --rm -p 8080:3000 devopspro2-09-resource-management-and-resilience-node
```

### Restart strategies
Restart on failure (maximum of 10 times)
```sh
docker container run -d --restart=on-failure:10 -p 8080:3000 devopspro2-09-resource-management-and-resilience-node
```

Always restart, unless stopped
```sh
docker container run -d --restart=unless-stopped -p 8080:3000 devopspro2-09-resource-management-and-resilience-node
```
Always restart
```sh
docker container run -d --restart=always -p 8080:3000 devopspro2-09-resource-management-and-resilience-node
```

### Health Check

Run container with health checking (after 15s, every 10s, 5s timeout, max of 3 consecutive unhealthly stats)
```sh
docker container run --rm -it -p 8080:3000 \
--health-cmd "curl -f http://localhost:3000/health" \
--health-timeout 5s \
--health-retries 3 \
--health-interval 10s \
--health-start-period 15s \
devopspro2-09-resource-management-and-resilience-node
```

### Manage CPU usage

Run on CPU 0 with a quota of 50% (avg, 50k ms in a 100k ms period)
```sh
docker container run --rm -it -p 8080:3000 \
--cpu-period=100000 \
--cpu-quota=50000 \
--cpuset-cpus=0 \
devopspro2-09-resource-management-and-resilience-node
```

Run on 6 CPUs (50% if the CPU has 6 cores / 12 threads )
```sh
docker container run --rm -it -p 8080:3000 \
--cpus=6 \
devopspro2-09-resource-management-and-resilience-node
```

### Manage memory usage (RAM)

Run with 50mb of RAM
```sh
docker container run --rm -it -p 8080:3000 \
--memory=50M \
--memory-swap=50M \
devopspro2-09-resource-management-and-resilience-node
```

Run with 50mb of RAM and 50mb of swap memory
```sh
docker container run --rm -it -p 8080:3000 \
--memory=50M \
--memory-swap=100M \
devopspro2-09-resource-management-and-resilience-node
```