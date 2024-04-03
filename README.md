# Mentorship

## Setup
The steps are necessary to get the application up and running:

* Ruby version: 3.3.0

### System requirements

| Dependency     | Version     |
| -------------- | ----------- |
| PostgreSQL     | **13.x**    |
| Docker         | **24.0.6**  |
| Docker-compose | **2.22.0**  |

### Running the application

To build the system, run: `make build`

Make sure the network "change_me" is created: `docker network create mentorship`

To install and/or update dependencies, run: `make bundle-install`

To run the application, run: `make run`

To run a terminal attached with debug active (pry), run: `make run-debugging`

The project will be running on [http://localhost:3000/](http://localhost:3000/)
