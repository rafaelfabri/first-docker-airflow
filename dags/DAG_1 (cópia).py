
from airflow.operators.empty import EmptyOperator
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.models import DAG
import pendulum

import sys

#inciando script

with DAG('pipeline_weather_call_backend_',
         start_date = pendulum.datetime(2024, 3, 17, tz = 'UTC'),
         schedule_interval = '*/5 * * * *') as dag:
    
    start_code = EmptyOperator(task_id = 'UaU', dag = dag)
    

    end_code = EmptyOperator(task_id = 'WoW')
    
    start_code >> end_code
    
