# Stock Market Real-Time Data Pipeline with Apache Kafka & Cassandra

This project retrieves real-time stock market data using Python and stores it in a Cassandra database via Apache Kafka. The data is processed with Apache Kafka on AWS EC2 and then stored in a local Cassandra server.

## Key Features

- Data Engineering: Implement a data pipeline to process real-time data streams.
- Tech Stack: Utilize Python, AWS EC2, Apache Kafka, and CassandraDB.
- Error Handling: Handle common errors and provide troubleshooting tips for a smooth workflow.
- Future Enhancements: Room for adding data visualization, machine learning predictions, real-time alerts, and scalability.

## Architecture

![Pipeline Architecture](https://imgur.com/1DBe05W.png)

## Environment Setup

### Hardware Used

Local Machine:

```bash
  Ubuntu 22.04.1 LTS
  4 vCore, 4 GiB Memory, 32 GiB Storage
```

AWS EC2:

```bash
  Amazon Linux 2 Kernel 5.10
  t2 Family, 1 vCore, 1 GiB Memory
```

### Prerequisites

- Python with `kafka-python` & `cassandra-driver` packages
- AWS CLI
- Java
- Apache Kafka
- Cassandra

## Project Implementation

1. Launch EC2 instance and install Apache Kafka.
2. Create a Python script to retrieve real-time stock market data.
3. Use Apache Kafka to produce the data to a topic.
4. Create a new Python script to consume topic data and store it in CassandraDB.

## Execution

1. Launch an EC2 instance as well as Apache Kafka.
2. Start Apache Kafka producer to produce data to a topic.
3. Run the Python script to send stock market data in real-time.
4. Start Python consumer script to consume and store data in CassandraDB.
5. Use SQL to query data stored in CassandraDB.

## Error Handling and Troubleshooting

The following are common errors and troubleshooting tips for this project:

- Apache Kafka Connection Error: If you encounter an error while connecting to Apache Kafka, ensure that the EC2 instance is running and the Apache Kafka service is up and running. You can also check the security group settings to ensure that the required ports are open.
- Cassandra Connection Error: If you encounter an error while connecting to CassandraDB, ensure that the Cassandra service is up and running on the local server. You can also check the firewall settings to ensure that the required ports are open.
- Data Retrieval Error: If you encounter an error while retrieving stock market data, ensure that the script used to retrieve the data is up and running.
- Data Storage Error: If you encounter an error while storing the data in CassandraDB, ensure that the required tables have been created and that the data is being stored in the correct format.
- Data Query Error: If you encounter an error while querying the data stored in CassandraDB, ensure that the SQL query is correct and that the required tables exist.

For more information, refer to the log files or contact the author at contact.kishlayjeet@gmail.com.

## Future Enhancements

- Adding a data visualization layer using tools such as Matplotlib or Seaborn to visualize the stock market data stored in CassandraDB.
- Adding a machine learning model to predict stock prices based on the stored data.
- Adding a real-time alert system to notify users of significant changes in the stock market.
- Scaling the pipeline to handle larger amounts of data by adding more EC2 instances and increasing the size of CassandraDB clusters.

## Conclusion

This project demonstrates the use of Python, AWS, Apache Kafka, Cassandra, and SQL to retrieve and store real-time stock market data. The pipeline created in this project can be used to process and store any real-time data stream.
