# Base image for texlive runners on ARM64
FROM menci/archlinuxarm:base

RUN pacman -Sy texlive-core texlive-formatsextra texlive-latexextra ttf-lato --noconfirm && rm -r /var/cache/pacman/pkg/*

COPY texlive-fonts-fontawesome-2021.61408-1-any.pkg.tar .

RUN pacman -U texlive-fonts-fontawesome-2021.61408-1-any.pkg.tar --noconfirm

RUN mkdir -p /var/run/secrets/kubernetes.io/serviceaccount

WORKDIR /usr/share/fonts/TTF

RUN for i in https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Black.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Bold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-ExtraBold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-ExtraLight.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Light.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Medium.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Regular.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-SemiBold.ttf https://raw.github.com/googlefonts/robotoslab/master/fonts/ttf/RobotoSlab-Thin.ttf; do curl -LJO $i; done && fc-cache
