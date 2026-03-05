from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from datetime import datetime

def say_hello():
    print("Hello, Airflow!")

default_args = {
    'owner': 'your_name',
    'start_date': datetime(2023, 1, 1),
}

dag = DAG('my_dag', default_args=default_args, schedule_interval=None)

task = PythonOperator(
    task_id='hello_task',
    python_callable=say_hello,
    dag=dag,
)