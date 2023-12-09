#!/bin/sh
password=$(cat "/home/ubuntu/github_token.txt")
git -C /home/ubuntu/fido/backend pull https://brianebrahimi:$password@github.com/brianebrahimi/fido_backend 
sudo systemctl restart nginx
