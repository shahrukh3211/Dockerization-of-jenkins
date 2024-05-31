# Dockerization-of-jenkins
# Jenkins in Docker

This repository contains the necessary files to build and run a Jenkins server using Docker and Docker Compose.

## Contents

- `Dockerfile`: Defines the Docker image for Jenkins.
- `docker-compose.yml`: Defines the Docker Compose configuration for running Jenkins.
- `README.md`: This file, providing setup instructions.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Setup Instructions

### Step 1: Clone the Repository

Clone this repository to your local machine:

```sh
git clone https://github.com/shahrukh3211/dockerization-of-jenkins.git
cd jenkins-docker

 Step 2: Build the Docker Image
Build the Docker image using Docker Compose:
docker-compose build

Step 3: Start the Jenkins Container
Start the Jenkins container using Docker Compose:
docker-compose up

Step 4: Access Jenkins
Once the container is running, you can access Jenkins by navigating to:
http://localhost:8080

Step 5: Jenkins Initial Setup
When you first access Jenkins, you'll be prompted to unlock it using an initial admin password. You can retrieve this password from the Docker container logs:
docker-compose logs jenkins

Look for the line that contains the password. It will look something like this:
*************************************************************
*************************************************************
*************************************************************

Jenkins initial setup is required. An admin user has been created and a password generated.

Please use the following password to proceed to installation:

1234567890abcdef1234567890abcdef

This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
Copy the password and paste it into the Jenkins setup page.

Persistent Jenkins Data
The Jenkins data is stored in a Docker volume named jenkins_home. This ensures that your Jenkins configuration and job data persist across container restarts.

Stopping the Jenkins Container
To stop the Jenkins container, press Ctrl+C in the terminal where docker-compose up is running. To stop the container in detached mode, run:
docker-compose down

Cleanup
To remove the Jenkins container and associated volumes, run:
docker-compose down -v

Contributing
Feel free to submit issues and pull requests to improve this project.

License
This project is licensed under the MIT License.



