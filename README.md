# Jenkins - Docker
This repository will allow to start jenkins via a Docker instance. You can mount a local folder to persist all data, or use a previous jenkins configuration within a Docker container.


### Installation
Make sure you have the latest Docker version installed on your system or install via: 
[https://docs.docker.com/engine/installation]()

Also make sure you have Docker Compose installed on your system or install via:
[https://docs.docker.com/compose/install]()

### Build and start the Docker image
Go to your local git folder and run `docker-compose up -d`. If you made changes to your configuration and wish to persist these changes, you can run the command again.

> It will always rebuild and restart the same instance, so you don't get multiple instances after a few rebuilds or restarts.

### Configuration
All the configuration takes place in the `docker-compose.yml` file. You can map your local jenkins configuration to a local folder, or use another port to run the container on.

> The `docker-compose.yml` file contains inline documentation/comments for all possible settings.

### Data persistence
We recommend to create a `jenkins/data` folder on your local filesystem allowing you to take backups of this folder preserving all settings, jobs and configuration.

> This folder can be mounted and linked in the docker-compose configuration as described above.