# Airflow com Docker 

Primeiramente construido o Dockerfile 

Feito build da imagem por meio 

```bash
docker build -t rafaelfabri/my-airflow-2.7.2:1.0 .
```

```bash
docker-compose --env-file env/.env build
```

Posteriormente criado um docker-compose.yaml simples apenas com 3 servicos:
* webserver
* scheduler
* postegres


```bash
docker-compose --env-file env/.env up
```

