<h3 align="center">Rancher Docker Compose</h3>

---

<p align="center"> Docker Compose for single instance rancher with letsencrypt nginx proxy companion.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Authors](#authors)

## 🧐 About <a name = "about"></a>

This project for easy create rancher with letsencrypt nginx proxy companion.

## Prerequisites <a name="prerequisites"></a>

- docker and docker-compose cli is already install.

## 🎈 Usage <a name="usage"></a>

1. Install GIT

   ```shell
   sudo apt-get install git -y
   ```

2. Clone Lets'Encrypt Nginx Proxy Companion Docker Compose

   ```shell
   git clone https://github.com/Eji4h/letsencrypt-nginx-proxy-companion
   cd letsencrypt-nginx-proxy-companion/
   ```

3. Start Lets'Encrypt Nginx Proxy Companion Docker Compose

   ```shell
   . create-docker-nginx-proxy-network.sh
   docker-compose up -d
   cd ..
   ```

4. Clone Rancher Docker Compose

   ```shell
   git clone https://github.com/Eji4h/rancher-compose
   cd rancher-compose/
   ```

5. Edit Environment

   ```shell
   vim docker-compose.yaml
   ```

   - Change Rancher image tag version
   - Change environment to your domain and email

   ```yaml
     ...
     rancher:
       image: rancher/rancher:v2.6.1
       ...
       environment:
         - VIRTUAL_HOST=<example.com>
         - LETSENCRYPT_HOST=<example.com>
         - LETSENCRYPT_EMAIL=<example@gmail.com>
       ...
   ```

6. Start Rancher Docker Compose

   ```shell
   docker-compose up -d
   ```

---

## ✍️ Authors <a name = "Yosapol Jitrak"></a>

- [@Eji4h](https://github.com/Eji4h) - Initial work
