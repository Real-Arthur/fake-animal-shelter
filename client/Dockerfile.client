FROM node:latest

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH
ENV HTTP_PROXY="http://127.0.0.1:5000"

COPY ["package.json", "package-lock.json", "./"]

RUN npm install
COPY . /app/
RUN ls
EXPOSE 3000

CMD ["npm", "run", "client"]