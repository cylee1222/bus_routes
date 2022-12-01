# KMB Bus Routes - Docker

## Run on localhost

Download or Clone the project, ``` cd bus-routes ```

then build the docker image by running

```
docker build -t bus_routes .
```

Run the project

```
docker run -itd -p 9000:9000 bus_routes
```

Container runs on the port [http://localhost:9000](http://localhost:9000)

## Run on NAS

Download or Clone the project, ``` cd bus-routes ```

then build the docker image by running

```
docker build -t bus_routes .

then gzip the docker image and copy the gzip file to the nas

```
docker save bus_routes:latest | gzip > bus_routes.tar.gz
cp bus_routes.tar.gz /docker
```

go to the nas, add the image from file and launch the image

set network to bridge and set the lost port to 9000

container runs on the port [http://nas-ip-address:9000](http://nas-ip-address:9000)

You can set DDNS and port forwarding such that the container runs on the port [http://router-ip-address:9000](http://router-ip-address:9000)