FROM ghcr.io/dkoch84/base-texlive-arm:latest

RUN mkdir /runner && mkdir /runnertmp && cd /runnertmp

WORKDIR /runnertmp

RUN curl -o actions-runner-linux-arm64-2.304.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.304.0/actions-runner-linux-arm64-2.304.0.tar.gz && tar xzf ./actions-runner-linux-arm64-2.304.0.tar.gz && rm ./actions-runner-linux-arm64-2.304.0.tar.gz

COPY entrypoint.sh /usr/bin/

RUN chown 1001:121 /usr/bin/entrypoint.sh && chmod +x /usr/bin/entrypoint.sh

USER 1001

ENTRYPOINT ["/usr/bin/bash", "-c", "/usr/bin/entrypoint.sh"]
