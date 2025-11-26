#!/bin/bash

mkdir -p nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout nginx/ssl/branchloans.com.key \
    -out nginx/ssl/branchloans.com.cert \
    -subj "/C=US/ST=state/L=City/O=KarthikBranch/CN=branchloans.com"


echo "SSL certificates generated successfully in nginx/ssl"