#!/bin/bash

# Install Python and virtualenv
sudo apt-get update
sudo apt-get install -y python3 python3-pip
pip3 install virtualenv

# Create our working directory if it doesn't exist
DIR="/home/ec2-user/Flask-App"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

# Create and activate virtual environment
cd /home/ec2-user/Flask-App
python3 -m virtualenv venv
source venv/bin/activate
