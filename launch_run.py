from dagster_graphql import DagsterGraphQLClient

client = DagsterGraphQLClient(
    "localhost",
    3000

)

client.submit_job_execution(
    "job1",
    "dagster_example",
    "__repository__",

)   