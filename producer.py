from kafka import KafkaProducer
from time import sleep
from json import dumps
import pandas as pd


try:
    producer = KafkaProducer(bootstrap_servers=['<Your Public IP>:9092'],
                             value_serializer=lambda x: dumps(x).encode('utf-8'))
    df = pd.read_csv('stockData.csv')
except Exception as e:
    print("An error occurred while initializing the producer or reading the CSV file:", e)
    producer = None
    df = None

if producer and df is not None:
    while True:
        try:
            sample_data = df.sample(1).to_dict(orient='records')[0]
            producer.send('demo_test', value=sample_data)
            sleep(0.1)
        except Exception as e:
            print("An error occurred while sending data to Kafka:", e)

if producer:
    try:
        producer.flush()
    except Exception as e:
        print("An error occurred while flushing the producer:", e)
