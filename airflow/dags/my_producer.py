from airflow import DAG, Dataset
from airflow.decorators import task
from pathlib import Path
from datetime import datetime

my_data = Dataset("C:/Users/Admin/Desktop/data-engineer-learning/airflow/dags/data/trigger.txt")
with DAG(
    dag_id="My_Producer",
    schedule="@daily",
    start_date=datetime(2023,1,1),
    catchup=False
):
    @task(outlets=[my_data])
    def update_my_data():
        Path(my_data.uri).parent.mkdir(parents=True, exist_ok=True)
        with open(my_data.uri, "a+", encoding="utf-8") as f:
            f.write("trigger\n")
    update_my_data()