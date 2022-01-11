## Tex Live GitHub Runner

This is very specific runner that compiles LaTeX documents. It has support for Lato, Roboto Slab and FontAwesome fonts. Additional fonts can either be installed via `pacman` or manually. Both methods are done here already.

Docker Hub: https://hub.docker.com/r/dkoch1984/gh-runner-texlive-almost

To use this image, you need to first go into your repository settings, Actions, Runners, New self-hosted runner

To run this image via docker:

```bash
docker run -e TOKEN=<your token from GitHub> -e URL=<your repository URL> <image id>
```
