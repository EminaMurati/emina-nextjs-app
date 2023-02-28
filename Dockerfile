FROM node:14

WORKDIR /usr/emina-nextjs-app

COPY package*.jason /usr/emina-nextjs-app/

RUN npm install

COPY . /usr/emina-nextjs-app/

RUN npm run build 

COPY . /usr/emina-nextjs-app

EXPOSE 3000 

ENTRYPOINT [ "npm", "run", "start" ]