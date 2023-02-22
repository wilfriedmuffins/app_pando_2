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

to create meausrement from csv file, do this command
```bash
docker compose exec web bin/rails db:seed



<< brtebtrb >>

{% filename %} cdocker compose build{% endfilename %}
