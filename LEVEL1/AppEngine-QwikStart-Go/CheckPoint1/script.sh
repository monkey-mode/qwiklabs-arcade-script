#!/bin/bash

# Task 1
gcloud config set compute/region $1
gcloud services enable appengine.googleapis.com

# Task 2
git clone https://github.com/GoogleCloudPlatform/golang-samples.git
cd golang-samples/appengine/go11x/helloworld

# Task 3
sudo apt-get install google-cloud-sdk-app-engine-go
yes Y | gcloud app deploy --region=$1

# Task 4
gcloud app browse