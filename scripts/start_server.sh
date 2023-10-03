# Run this script from repo dir to execute this script in docker
# scripts/start_server.sh

docker run --gpus=all --rm --net=host -it  -v $(pwd):/workspace nvcr.io/nvidia/tritonserver:23.08-py3 tritonserver --model-repository=/workspace/models