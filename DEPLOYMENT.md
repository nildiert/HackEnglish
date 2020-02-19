# Deployment

This document explain the structure and tools that was used in deployment of the solution.


## Structure

A virtual machine deploy at **AZURE** with Ubuntu 18.04,  separate the Back-End, the Front-End and the Database with dockers.


## Tools

-  Docker

## First, install docker
[Install Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)

## Pull de images.

* [Images of Mysql](https://hub.docker.com/_/mysql)
> docker pull images1:tag

> docker pull images2:tag
> docker pull images3:tag


- After run the necessary pulls, you will see three images, and we need to create the containers
* MySQL image
  ``docker run --name mysql5 -e MYSQL_ROOT_PASSWORD=your_password -d mysql:latest``
  You will need check your container IP
  ``docker inspect mysql5``
  In the last part you will find a part **"NetworkSettings"** a here there is an IP:
   ``"IPAddress": "172.17.0.2",``
* Back-End image
  ``docker run -it -p 3000:3000   alejandroreyrios/hackenglish /bin/bash -l``
* Front-End image
  ``docker run -it -p 80:4200 -p 172.17.0.2:80 alejandroreyrios/hackenglishfront /bin/bash -l``

If you are inside the container you will exit with the command **Ctrl + p + q**

##  Connect the containers

Modify the access to the database because by default use the local DB `/config/database.yml`, example.
	```default: &default
		  adapter: mysql2
		  encoding: unicode
		  host: 172.17.0.2
		  port: 5432`
		  usarname: <% ENV["POSTGRES_USER"] %>
		  password: <% ENV["POSTGRES_PASSWORD"] %>
		  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>```



## Up the service in production
[Based on this DEPLOYMENT](https://gist.github.com/rwarbelow/40bd72b2aee8888d6d91)
1.  Add `gem 'rails_12factor'` to your Gemfile. This will add error logging and the ability for your app to serve static assets.
2.  `bundle install`
3.  Run `RAILS_ENV=production rake db:create db:migrate db:seed`
4.  Run `rake secret` and copy the output
5.  From the command line: `export SECRET_KEY_BASE=output-of-rake-secret`
6.  To precompile your assets, run `rake assets:precompile`. This will create a folder `public/assets` that contains all of your assets.
7.  Run `bundle exec rails s -p 3000 -b '0.0.0.0'` and you should see your app.


## How to update
If you need to update the app, first stop the the service of the Back-End container:
- `docker attach <name_container>` to connect to the container
- `Ctrl + C`     (to stop the service)
- `git "command"`  (to update the files)
- `RAILS_ENV=production bundle exec rails s -p 3000 -b '0.0.0.0'` (to start the service again)
-  Rxit container with `Ctrl p + q`
