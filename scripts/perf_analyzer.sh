# Server must be started first, then run this script like:
# scripts/perf_analyzer.sh resnet50

MODEl_NAME=$1
docker run --gpus=all --rm --net=host -it nvcr.io/nvidia/tritonserver:23.08-py3-sdk perf_analyzer -m ${MODEl_NAME} -b 1 --concurrency-range 1:8:1 --percentile=95 --measurement-interval=10000

