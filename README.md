# Welcome to [Slidev](https://github.com/slidevjs/slidev)!

To start the slide show:

- `npm install`
- `npm run dev`
- visit http://localhost:3030

Edit the [slides.md](./slides.md) to see the changes.

Learn more about Slidev on [documentations](https://sli.dev/).

# Docker

```
docker build -t npu-slidev-img .
docker run -d -it --name npu-slidev -p 1145:1145 -v ./:/app npu-slidev-img
```