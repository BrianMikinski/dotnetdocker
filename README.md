# dotnetdocker
Explorations with dotnet and docker. See the buildAndRunDockerImage.ps1 script

# TODO
Explore Docker Compose

# Important Docker Commands

## Run
```terminal
dotnet run
```

## Publish
```terminal
dotnet publish -c Release
```

## Create docker file
```terminal
New-Item -ItemType File -Path ./newfile.txt
```
## Build the docker image
```terminal
docker build -t counter-image -f Dockerfile .
```

## View all images
```terminal
docker images
```

## Build the docker container
```terminal
docker create --name core-counter counter-image
```

## View all containers
```terminal
docker ps -a
```

## Filter to a specific container
```terminal
docker ps -a --filter="name=nginx-base"
```

## Run Container
```terminal
docker start core-counter
```

## Attach to Container
```terminal
docker attach --sig-proxy=false core-counter # make sure the ctrl+c will not stop the container
```

## remove image
```terminal
docker rm core-counter
```

## get docker name formats
```terminal
docker ps -a --format '{{json .Names}} # use {{json .}} to get all field values
```

## get running docker containers
```terminal
docker container ls 
```

## to build image and run

```terminal
docker run -it --rm counter-image # use ctl+c to break out
```
