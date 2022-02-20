# scada-infra

### Start stack with

On the shell in this project directory execute

```
docker-compose up
```

### query test metric raw data

http://localhost:8080/render?format=json&target=randomWalk(%22machines.test1%22)

### default dashboard

http://localhost:3000/d/21aYM4xnz/new-dashboard?orgId=1

### test embed

http://localhost:3000/graphs/d-solo/21aYM4xnz/machine-dashboard?orgId=1&from=now-1h&to=now&panelId=5&refresh=5s&kiosk&var-machine_name=machine_2

### request the index page via
http://localhost:3080

### test video stream (use a video player like VLC to test)
rtsp://localhost:8554/test