# Welcome to [Slidev](https://github.com/slidevjs/slidev)!

To start the slide show:

- `npm install`
- `npm run dev`
- visit http://localhost:3030

Edit the [slides.md](./slides.md) to see the changes.

Learn more about Slidev on [documentations](https://sli.dev/).

# Docker

```shell
docker pull tangramor/slidev:latest
docker run --name slidev --rm -it \
    --user node \
    -v ${PWD}:/slidev \
    -p 3030:3030 \
    tangramor/slidev:latest


docker build -t npu-slidev-img .
docker rm -f slidev
docker run --name slidev --rm -it \
    -p 3030:3030 \
    npu-slidev-img
```