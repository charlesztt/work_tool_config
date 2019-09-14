#!/user/bin/env bash
cd docker_haruna_cpu
docker build -t charlesztt/haruna_cpu:base ./
cd ../docker_haruna_cpu_tensorflow
docker build -t charlesztt/haruna_cpu:tensorflow ./
cd ../docker_haruna_cpu_pytorch
docker build -t charlesztt/haruna_cpu:pytorch ./
docker tag charlesztt/haruna_cpu:pytorch charlesztt/haruna_cpu:torch
docker tag charlesztt/haruna_cpu:pytorch charlesztt/haruna_cpu:latest
# cd ..
# cd docker_haruna_gpu
# docker build -t charlesztt/haruna_gpu ./
# cd ..
docker push charlesztt/haruna_cpu
# docker push charlesztt/haruna_gpu