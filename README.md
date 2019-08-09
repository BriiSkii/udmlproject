[![CircleCI](https://circleci.com/gh/BriiSkii/udmlproject/tree/master.svg?style=svg)](https://circleci.com/gh/BriiSkii/udmlproject/tree/master)


## Project Overview

In this project, we were tasked with operationalizing a Machine Learning Microservice API using
docker and kubernetes.
Using a Dockerfile an image is built that includes the application and will start the application
upon deployment of the container. Using the supplied shell scripts, the application will be
deployed. Steps included below.

---

## Scripts included
- Dockerfile : to create the docker image
- requirements.txt : lists the project dependencies
- run_docker.sh : script that builds the image and then runs the flask app inside a container
- upload_docker.sh : script that uploads the image to docker hub
- run_kubernetes.sh : creates a deployment and forwards the port
- make_predictions.sh : after the application is running, this script passes data through
a train, machine learning model and returning a predicted value for a house price.

## Setup the Environment

* Have a system with python3 installed
* Create a virtualenv and activate it
* python3 -m venv ~/<folder-name>
* source ~/<folder-name>
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Docker Steps
* Setup and Configure Docker locally
* Run `./run_docker.sh`
* Run `./make_prediction.sh` to get a price prediction

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create the deployment by running `./run_kubernetes.sh`
* Run `./make_prediction.sh` to get a price prediction
