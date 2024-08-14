

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL

      CREATE USER dagster_example WITH ENCRYPTED PASSWORD 'dagster_example';

        CREATE DATABASE dagster_example;
        ALTER DATABASE  dagster_example OWNER TO dagster_example;

        GRANT ALL PRIVILEGES ON DATABASE dagster_example TO dagster_example;

        SELECT pg_reload_conf();


EOSQL



