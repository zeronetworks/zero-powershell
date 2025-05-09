FROM mcr.microsoft.com/powershell:7.4-ubuntu-22.04
#FROM mcr.microsoft.com/powershell:7.4-azurelinux-3.0-arm64

# Install dependencies and clean up
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get install -y dotnet-sdk-8.0 \
    && apt-get install -y git \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
    && . /root/.bashrc \
    && nvm install 18.20.4 \
    && npm install -g autorest \
    && apt-get -o Acquire::Check-Valid-Until=false install -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen $LANG && update-locale

RUN mkdir -p /src

WORKDIR /src

CMD [ "bash" ]