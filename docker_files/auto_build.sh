#!/user/bin/env bash
cd docker_haruna_cpu
docker build -t charlesztt/haruna_cpu ./
cd ..
cd docker_haruna_gpu
docker build -t charlesztt/haruna_gpu ./
cd ..
docker push charlesztt/haruna_cpu
docker push charlesztt/haruna_gpu