# Docker Setups

## Overview
This repository contains various Docker configurations to streamline day-to-day company operations and project setups. It provides pre-configured environments for different use cases, making development and deployment easier.

## Prerequisites
Ensure you have the following installed before using these Docker setups:
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/macOS) or [Docker CE](https://docs.docker.com/engine/install/) (Linux)
- [Docker Compose](https://docs.docker.com/compose/install/) (if not included with Docker Desktop)

## Available Setups

### 1. WordPress Local Development
Easily set up a local WordPress development environment using Docker Compose.

#### Steps to Set Up WordPress
1. Clone this repository and navigate to the WordPress setup directory.
2. Ensure the `wp-content/` folder contains your theme and plugin files.
3. Place your database dump (`db.sql`) inside `database/` if restoring an existing project.
4. Run the following command to start the containers:

```shell
docker compose up -d
```

This will spin up WordPress along with a database container.

#### Directory Structure
```
wordpress-project/
│── wp-content/        # WordPress themes and plugins
│── database/
│   ├── db.sql        # Database dump (optional)
│── docker-compose.yml
```

### Stopping the Containers
To stop the running WordPress setup, use:
```shell
docker compose down
```

## Contributing
Feel free to submit pull requests with new setups or improvements to existing ones. Your contributions are welcome!

## License
This repository is licensed under [MIT License](LICENSE).
