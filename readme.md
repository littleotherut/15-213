docker run:
```bash
docker run --platform linux/amd64 -it \
  --name my-csapp \
  --security-opt seccomp=unconfined \
  -v /Users/kinorw/Documents/csapp/15-213:/csapp \
  csapp-env
```