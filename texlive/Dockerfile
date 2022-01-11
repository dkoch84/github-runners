FROM archlinux:latest

RUN pacman -Sy texlive-bibtexextra texlive-core texlive-fontsextra texlive-formatsextra texlive-humanities texlive-latexextra texlive-pictures texlive-pstricks texlive-science ttf-font-awesome ttf-lato --noconfirm

WORKDIR /usr/share/fonts/TTF

RUN for i in https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Black.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Bold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-ExtraBold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-ExtraLight.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Light.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Medium.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Regular.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-SemiBold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Thin.ttf; do curl -LJO $i; done && fc-cache

RUN mkdir actions-runner && cd actions-runner

WORKDIR /actions-runner

RUN curl -o actions-runner-linux-x64-2.285.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.285.1/actions-runner-linux-x64-2.285.1.tar.gz && tar xzf ./actions-runner-linux-x64-2.285.1.tar.gz

COPY start.sh .

RUN chown 1001:121 start.sh && chmod +x start.sh

USER 1001

ENTRYPOINT ["/usr/bin/bash", "-c", "/actions-runner/start.sh"]
