A docker file for lite-server
https://www.npmjs.com/package/lite-server

Build with
´docker build -t "liteserver:Dockerfile" .´

Start container with 

# " around $PWD are required in case there are spaces in the directory name
docker run -p 127.0.0.1:3000:3000 --rm -v "$PWD":/src liteserver:Dockerfile

-rm removes it after use


