# Dagster with DefaultRunLauncher
Minimal example  for reproducing an error when using the DefaultRunLauncher.

## Elements 
### grpc server for code serving 

### Docker compose

We have in the docker-compose
* A postgres database
* A dagster webserver
* A dagster daemon

### Code repository 

* example.py

### Script for launching the job

* launch_run.py


## Steps for reproduce

1. Launch the grpc server
```bash
sh launch_grpc.sh
```

1. Launch the dagster docker-compose
```bash
docker-compose -f docker/docker-compose.yml up
```

1. Launch the job
```bash
python launch_run.py
```

You will see that where the grpc server is running, an error will be raised trying to access to '/opt/dagster/dagster_home', a thing defined in the docker/Dockerfile_dagster
