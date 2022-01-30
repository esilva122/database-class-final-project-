# Part1. Installation of Postgres Database

## Installing Docker and docker-compose
- For this project we will be using docker to setup a postgress database. If you are using a macOS or any other linux distro, go directly to the [docker download page](https://www.docker.com/products/docker-desktop) and download docker.
- If you are using windows, you should first enable Windows SubSystems for Linux. Follow the [instructions here](https://www.ssl.com/how-to/enable-linux-subsystem-install-ubuntu-windows-10/) to do that.
- There are many problems that can go wrong during installations depending on you environment. Please do your due diligence and try to google and search for a solution to the problem before reaching out to me.
- After you install docker successfully you need to install docker compose. The instructions can be found [here](https://docs.docker.com/compose/install/)

## Setting up a postgres database
- Run the `docker-compose.yml` file in the `database-setup` directory by navigating to the directory `database-setup` and typing `docker-compose up`

## Login to the Database
- To login to the database
``` 
 psql -h localhost -p 5432 -U mhassanin -d schools
```