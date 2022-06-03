# capstone

[![CircleCI](https://circleci.com/gh/Rozalinaa/capstone/tree/main.svg?style=svg)](https://circleci.com/gh/Rozalinaa/capstone/tree/main)


# Description
This project is part of the final Udacity "Capstone" project which is part of the "Cloud Dev Ops" nanodegree.
The goal is to use docker, kubernetes and a circle ci pipeline to demonstrate what has been learned in the course.

# Environment
It is recommended to run this in a venv and install the requirements by running "make install" 
Please note that it is advised to have the following setup in your environment:
- hadolint
- minikube
- docker

# Running the project locally
This project was designed to be run from circle ci pipeline by using the .circleci/config.yml file. 
However the application itself can be run by running: 
./run_docker.sh 
./upload_docker.sh 
minikube start 
./run_kubernetes.sh as well


# Filestructure
The project contains the following:
app.py - hello world python application, this was an example in a previous lesson of the course
Makefile - Makefile with instructions for using "make" from command line
requirements.txt - contains all python dependencies that need to be installed. Should be used by running the Makefile
run_docker.sh , run_kubernetes.sh, upload_docker.sh - see "Running project locally"
Dockerfile - contains instructions for creating the docker image
deployment.yml - contains instructions on creating the kubernetes deployment and services
.circle/config - contains instructions for the circleci pipeline. AWS credentials should be configured in circleci in order to run project
Screenshots - Folder with screenshots for assignment review


# Dependencies:
This project relies on being run in circleci since it makes use of the convenient orbs:
  aws-eks: circleci/aws-eks@2.2.0
  kubernetes: circleci/kubernetes@1.3.0

For more information on the functionalities please see:
https://circleci.com/developer/orbs/orb/circleci/aws-eks
https://circleci.com/developer/orbs/orb/circleci/kubernetes

CircleCI and deployment.yml reference the authors aws ecr to store dockerfiles. 
These references need to be changed to your ecr.
