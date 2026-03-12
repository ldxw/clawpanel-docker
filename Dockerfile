FROM node:22-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    unzip \
    jq \
    ffmpeg \
    python3 \
    python3-pip \
    build-essential \
    locales \
    gh \
    fontconfig \
    fonts-noto-cjk \
    fonts-noto-color-emoji \
    fonts-wqy-zenhei \
    ca-certificates \
    git \
    curl \
 && fc-cache -fv \
 && rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

EXPOSE 1420

CMD ["npm", "run", "serve"]
