[![CircleCI](https://circleci.com/gh/BriiSkii/udmlproject/tree/master.svg?style=svg)](https://circleci.com/gh/BriiSkii/udmlproject/tree/master)

## Project Overview

In this project, we were tasked with operationalizing a Machine Learning Microservice API.
Tools used: Docker, Kubernetes, CircleCI
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

* Create a virtualenv and activate it
* python3 -m venv ~/folder-name
* source ~/folder-name
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
