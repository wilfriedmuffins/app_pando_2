# Pando_2 

This app is a single page which display sensors measurement from a csv file. 

#Features

* Rails 7

* Ruby 3

* Dockerfile and Docker Compose configuration

* PostgreSQL database

* Ransack

## Requirements

Pleasur sur you are download Docker on your machine

```bash
docker compose version
*Docker Compose version v2.xx.X
```


## Running the Rails app

```bash
git clone https://github.com/wilfriedmuffins/app_pando_2.git
cd app_pando_2
docker compose build
```

```bach
docker compose up
```
If there are some errors do ``` docker compose up``` again to resolve it

Open a other terminal to the same repertoire  create measurement from csv file, do this command:

```bash
docker compose exec web bin/rails db:seed
``` 

Application runs on [http://0.0.0.0:3000](Http://localhost:3000)

Use Ctrl+C to stop


