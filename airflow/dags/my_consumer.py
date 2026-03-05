from airflow import DAG, Dataset
from airflow.decorators import task

from datetime import datetime

my_data = Dataset("C:/Users/Admin/Desktop/data-engineer-learning/airflow/dags/data/trigger.txt")
with DAG(
    dag_id="My_Consumer",
    schedule=[my_data],
    start_date=datetime(2023,1,1),
    catchup=False
):
    @task(outlets=[my_data])
    def update_my_data():
        print("Hello from consumer")
    update_my_data()