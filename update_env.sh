#!/bin/bash
EC2_PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
sed -i "s|VITE_API_URL=.*|VITE_API_URL=http://${EC2_PUBLIC_IP}:8888|" .env

# Update .env file to use the EC2's public IP
sed -i "s|VITE_API_URL=.*|VITE_API_URL=http://${EC2_PUBLIC_IP}:8888|" ./ProjetImmo_FE/.env