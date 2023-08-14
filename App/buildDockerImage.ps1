
$containerName = "core-counter"
$imageName = "counter-image"

# build docker image
docker build -t $imageName -f Dockerfile .

# docker ps -a --format '{{json . }}' to get all the values from the command
# find the container if it's running and shut it down and delete it
docker ps -a --format '{{json .Names }}' |  ForEach-Object {
    $container = $_
    $container = $container.Replace('"', "")
    
    # Write-Host $container

    if($container -eq $containerName)
    {
        docker stop $containerName
        docker rm $containerName
    }
}

# use the following to to combiine the create and run commands
#docker run --name $containerName -it --rm $imageName 50 # the 50 here says we only want to count to 50

# OR

# build container
docker create --name $containerName $imageName

# docker start
docker start $containerName

# attach to see output
# docker attach --sig-proxy=false $containerName
