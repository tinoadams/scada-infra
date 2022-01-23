# scada-infra

### Start stack with

On the shell in this project directory execute

```
docker-compose up
```

### Query test metric raw data

Get data from Graphite

http://localhost:8080/render?format=json&target=randomWalk(%22machines.test1%22)

### Default dashboard

Open default dashboard

http://localhost:3000/d/21aYM4xnz/new-dashboard?orgId=1
