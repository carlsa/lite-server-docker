# What it is 
This docker file allow you run [lite-server](https://www.npmjs.com/package/lite-server) in a docker container so you don't have to install nodejs on your system.

# Construct the image
In the git repository, run
`docker build -t "liteserver:Dockerfile" .`

# Start a container
In the directory that you want to serve, run

`docker run -p 127.0.0.1:3000:3000 --init --rm -v "$PWD":/src liteserver:Dockerfile`

`-rm` removes the container once it exits

`--init` makes lite-server run as something else than PID 1, without it you won't be able to exit with ctrl-c since PID 1 doen't accep SIGTERM. See [this](https://stackoverflow.com/questions/52518477/why-cant-i-always-kill-a-docker-process-with-ctrl-c).

The " around $PWD are reqired if your path contains spaces
