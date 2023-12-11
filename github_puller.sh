#!/bin/sh
password=$(cat "/home/ubuntu/github_token.txt")
git -C /home/ubuntu/fido/backend pull https://brianebrahimi:$password@github.com/brianebrahimi/fido_backend 
git -C /home/ubuntu/fido/fido_frontend/fido_frontend pull https://brianebrahimi:$password@github.com/brianebrahimi/fido_frontend 
sudo systemctl restart nginx
