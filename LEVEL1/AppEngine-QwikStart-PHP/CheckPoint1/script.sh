#!/bin/bash

# Task 1
gcloud config set compute/region $1
gcloud services enable appengine.googleapis.com

# Task 2
git clone https://github.com/GoogleCloudPlatform/php-docs-samples.git
cd php-docs-samples/appengine/standard/helloworld

# Task 3
yes Y | gcloud app deploy --region=$1

# Task 4
gcloud app browse