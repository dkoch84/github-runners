FROM menci/archlinuxarm:base-devel

RUN mkdir actions-runner && cd actions-runner

WORKDIR /actions-runner

RUN  curl -o actions-runner-linux-arm64-2.287.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.287.1/actions-runner-linux-arm64-2.287.1.tar.gz && tar xzf ./actions-runner-linux-arm64-2.287.1.tar.gz

USER 1001

