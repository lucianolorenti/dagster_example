export DAGSTER_HOME=$(pwd)/output
mkdir -p $DAGSTER_HOME
export DAGSTER_POSTGRES_USER="dagster_example"
export DAGSTER_POSTGRES_PASSWORD="dagster_example"
export DAGSTER_POSTGRES_DB="dagster_example"
export DAGSTER_POSTGRES_PORT=7080
export DAGSTER_POSTGRES_HOST="localhost"

dagster api grpc -h  0.0.0.0 -p 4000 --python-file $(pwd)/example.py --inject-env-vars-from-instance

