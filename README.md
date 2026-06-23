# EcoTrack API

A simple Dockerized FastAPI application with PostgreSQL, Redis, and Nginx reverse proxy.

## Prerequisites

Before running the project, make sure you have:

* Docker
* Docker Compose
* Git
* GNU Make

Verify installation:

```bash
docker --version
docker compose version
git --version
make --version
```

## Project Setup

### Clone Repository

```bash
git clone <repository-url>
cd ecotrack-api
```

### Create Environment File

```bash
cp .env.example .env
```

Update `.env` with your local configuration:

```env
POSTGRES_DB=ecotrack
POSTGRES_USER=postgres
POSTGRES_PASSWORD=your_password
REDIS_PORT=6379
API_PORT=8000
NGINX_PORT=8080
```

## One-Command Start

Start all services:

```bash
make up
```

Verify containers:

```bash
make test
```

View logs:

```bash
make logs
```

Stop all services:

```bash
make down
```

Access API container shell:

```bash
make shell-api
```

## API Endpoints

### Health Check

```http
GET /health
```

Example:

```bash
curl http://localhost:8080/health
```

Expected response:

```json
{
  "status": "healthy"
}
```

## Services

* FastAPI Application
* PostgreSQL Database
* Redis Cache
* Nginx Reverse Proxy

## Security Notes

* Never commit `.env` to Git.
* Store secrets in environment variables.
* Do not hard-code passwords or API keys.
* `.env.example` contains sample values only.

```
```

CI PR test
