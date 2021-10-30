# The Deployment Process

## First Steps

Get a server (VPS)

We have used one from [Linode](https://www.linode.com/promotions).
(promotional 100$ credit)

> **Recomended** : Get an Ubuntu 20.04 LTS Linode of arround 2GB and 1 Compute unit.

### Update & Upgrade

```bash
apt update && apt upgrade -y
```

### Install Docker & Compose

```bash
# Sometimes VPS installs of Ubuntu doesn't have curl inbuilt
apt install curl docker-compose -y
# Installer of Latest Docker ( One Click Official way )
curl https://get.docker.com | bash
```

### Install LTS node via nvm.sh

#### Installing NVM

```bash
# From nvm.sh (official nvm way)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

> Reconnect to re**bash** the bash to load the nvm

#### Installing NODE lts

```bash
nvm install --lts
```

#### Installing yarn

```bash
nvm i -g yarn
```

### Initialising the project

#### Starting the _**docker-compose**_

At the root of the repo

```bash
docker-compose up -d
```

#### The Node project

```bash
cd ./server
# To install the modules
yarn

# Building to JS from TS
yarn build
```

```bash
# Starting the NODE project

# To make the application stay alive after disconnection from ssh
apt install tmux -y

tmux

# Starts the built project finally
node dist
```

> # Congratualtions the API is deployed
