lmcache_commit_id=$(git ls-remote https://github.com/LMCache/LMCache.git refs/heads/dev | cut -f 1)
DOCKER_BUILDKIT=1 docker build --build-arg LMCACHE_COMMIT_ID=$lmcache_commit_id . --target vllm-lmcache --tag vllm-lmcache:test --build-arg max_jobs=32 --build-arg nvcc_threads=32 --platform linux/amd64
#VLLM_NCCL_SO_PATH=/home/yihua/libnccl.so.2.18.1 DOCKER_BUILDKIT=1 docker build . --target vllm-lmcache --tag vllm-lmcache:test --build-arg max_jobs=32 --build-arg nvcc_threads=32 --platform linux/amd64
