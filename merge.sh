#!/bin/bash
cd ~/truckify-eric
git fetch upstream
sleep 1
git merge upstream/master
sleep 1
rake db:migrate
sleep 1
rake db:seed
