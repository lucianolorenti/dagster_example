from dagster import Definitions, OpExecutionContext, job, op



@op
def op1(
  
)-> str:
    return "hola"

@op
def op2( message: str):
    return message + " " + "mundo!"
    

@job
def job1():
    message = op1()
    op2(message)


dagster_definitions = Definitions(
    jobs=[
        job1,
    ]
)
