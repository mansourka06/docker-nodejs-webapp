# docker-nodejs-webapp
In this repository is set up a project which Dockerize a Node.js web application.


## Prerequisites
Dockerizing a Node.js web application involves creating a Dockerfile that describes the environment and dependencies required to run the application, and then using the Docker build command to create a Docker image.
- Install Docker
- Install Git 

## Usage
:information_source:**Informations**
- Clone the repository : git clone <<repo_url>>

- Dockerfile starts with the official Node.js 14 runtime as the base image, sets the working directory to /app, copies the package.json and package-lock.json files and runs npm install to install the dependencies.
It then copies the application code to the container and exposes port 3000, and starts the application using the npm start command.

- build the Docker image, navigate to the root directory of the application and run the following command:
**docker build -t my-node-app**
Docker image named my-node-app with the application code and dependencies.

- run the application in a container using the following command:
**docker run -p 3000:3000 my-node-app**

- This command will start a container and map port 3000 on the host to port 3000 in the container, making the application available on http://localhost:3000

It's worth noting that this is a basic example, and for a real-world app you'll likely need to add more functionality such as health check, logging, monitoring and security, and other aspects of the app such as database, caching and load balancing.

## Infos
:information_source:**Informations**
- The package.json and package-lock.json files are used to manage the dependencies of a Node.js web application.

- The package.json file contains information about the application, such as the name, version, and dependencies. It also contains scripts that can be run with the npm command, such as npm start to start the application.

- package-lock.json file contains basic information about the application such as name, version, description, main file, author, and license. It also contains dependencies and start script. The dependencies in this example include Express, a popular web framework for Node.js.
This file is automatically generated when dependencies are installed and it contains the exact versions of the dependencies that were installed. It is used to ensure that the same versions of dependencies are installed when the application is deployed on different machines.

## Author
Mansour KA
