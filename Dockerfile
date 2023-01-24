FROM node:latest

# set working directory
WORKDIR /usr/src/app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy rest of the code
COPY . .

# expose port 3000
EXPOSE 3000

# start command
CMD ["npm", "start"]
