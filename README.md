# Odoo ERP, PostgreSQL and Nginx Compose 🔥 🇧🇷

  + Odoo
  + PostgreSQL
  + Installations and use simplified ❤

## Odoo ERP 🖥️
![project-image](https://user-images.githubusercontent.com/59855397/216739166-c91ef374-50d4-4b9e-bfb4-987954f5f0f2.png)

##  Documentation 📜

+ https://docs.docker.com/
+ https://docs.docker.com/compose/
+ https://www.odoo.com/documentation/14.0/
+ https://nginx.org/en/docs/
+ https://www.postgresql.org/docs/

### Linux Basic Commands 🐧

` sudo apt update && sudo apt upgrade -y ` <br/>
` sudo apt install docker docker-compose -y ` <br/>
` git clone https://github.com/DanielNery/odoo-docker-compose-nginx-postgresql.git ` <br/>
` cd odoo-docker-compose-nginx-postgresql ` <br/>
` sudo docker-compose up -d ` <br/>

### Windowns or Mac Tutorial 🍎

  + Install Docker Desktop https://www.docker.com/products/docker-desktop/
  
    ` git clone https://github.com/DanielNery/odoo-docker-compose-nginx-postgresql.git ` <br/>
    ` cd odoo-docker-compose-nginx-postgresql ` <br/>
    ` docker-compose up -d ` <br/>


### Update or custom modules 🍺
  
  `docker-compose stop odoo && sudo docker-compose run --rm odoo odoo -c /etc/odoo/odoo.conf -u your_module 
  --stop-after-init && docker-compose start odoo` <br/>
   
