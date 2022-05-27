#!/bin/bash
cd /opt/

sudo apt install net-tools

sudo apt update -y && sudo apt-get upgrade -y

sudo apt install -y wget

sudo wget https://github.com/slteksystemsllc/opensearch_siem/raw/main/scripts/prereq.sh && sudo bash prereq.sh

sudo wget https://github.com/slteksystemsllc/opensearch_siem/raw/main/scripts/initialize.sh && sudo bash initialize.sh

cd /opt/opensearch_siem/

docker-compose up --no-start
