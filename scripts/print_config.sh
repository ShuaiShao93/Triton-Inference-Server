# Use this command to check the auto generated config
# scripts/print_config.sh resnet50

MODEL_NAME=$1
curl localhost:8000/v2/models/${MODEL_NAME}/config