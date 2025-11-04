import shutil

source = r"D:\Project 9 Airflow Open Wheather Api\Airflow-OpenWeather-Pipeline\weather_dag.py"
destination = r"C:\Users\<YourUser>\airflow\dags\weather_dag.py"

shutil.copy(source, destination)
print("✅ DAG uploaded successfully!")
