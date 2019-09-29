#!/user/bin/env bash
cd docker_haruna_cpu
docker build -t charlesztt/haruna_cpu:base ./
cd ../docker_haruna_cpu_tensorflow
docker build -t charlesztt/haruna_cpu:tensorflow ./
cd ../docker_haruna_cpu_pytorch
docker build -t charlesztt/haruna_cpu:pytorch ./
docker tag charlesztt/haruna_cpu:pytorch charlesztt/haruna_cpu:torch
docker tag charlesztt/haruna_cpu:pytorch charlesztt/haruna_cpu:latest

cd ../docker_haruna_gpu
docker build -t charlesztt/haruna_gpu:base ./
cd ../docker_haruna_gpu_tensorflow
docker build -t charlesztt/haruna_gpu:tensorflow ./
cd ../docker_haruna_gpu_pytorch
docker build -t charlesztt/haruna_gpu:pytorch ./
docker tag charlesztt/haruna_gpu:pytorch charlesztt/haruna_gpu:torch
docker tag charlesztt/haruna_gpu:pytorch charlesztt/haruna_gpu:latest

docker push charlesztt/haruna_cpu:base
docker push charlesztt/haruna_cpu:tensorflow
docker push charlesztt/haruna_cpu:pytorch
docker push charlesztt/haruna_cpu:torch
docker push charlesztt/haruna_cpu
docker push charlesztt/haruna_gpu:base
docker push charlesztt/haruna_gpu:tensorflow
docker push charlesztt/haruna_gpu:pytorch
docker push charlesztt/haruna_gpu:torch
docker push charlesztt/haruna_gpu