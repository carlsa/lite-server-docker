
FROM node:19-alpine

WORKDIR /src

RUN npm install lite-server -g

CMD ["lite-server"]
