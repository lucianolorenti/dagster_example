Dagster with DefaultRunLauncher

We have in the docker-compose
* A postgres database
* A dagster webserver
* A dagster daemon

Steps

1. Launch the grpc server
```bash
sh launch_grpc.sh
```

2. Launch the dagster docker-compose
```bash
docker-compose -f docker/docker-compose.yml up
```

3. Launch the job
```bash
python launch_run.py
```

You will see that where the grpc server is running, an error will be raised trying to access to '/opt/dagster/dagster_home'
