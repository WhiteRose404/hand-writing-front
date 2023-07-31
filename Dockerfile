FROM node:20.5.0 AS build
# Path: frontend/my-app/Dockerfile

# set working directory
WORKDIR /app

# copy package.json
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

# install app dependencies
RUN npm install

# get the code
COPY . /app

# build app
RUN npm run build

# expose port
EXPOSE 3000

# start app
CMD ["npm", "run", "start"]