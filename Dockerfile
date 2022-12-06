
FROM node:19-alpine

#EXPOSE 3000
#EXPOSE 3001

WORKDIR /src

RUN npm install lite-server -g

ENTRYPOINT ["lite-server"]
#ENTRYPOINT /bin/sh
