# Download and extract Apache Kafka
wget https://downloads.apache.org/kafka/3.3.2/kafka_2.12-3.3.2.tgz
tar -xvf kafka_2.12-3.3.2.tgz


# Install Java
sudo yum install java-1.8.0-openjdk


# Go to the extracted Kafka directory
cd kafka_2.12-3.3.2


# Configure Kafka to use the public IP of your EC2 instance
sudo nano config/server.properties 
#-->> Change "ADVERTISED_LISTENERS" to the public IP of the EC2 instance


# Start ZooKeeper
bin/zookeeper-server-start.sh config/zookeeper.properties


# Start Kafka Server in a separate terminal window
export KAFKA_HEAP_OPTS="-Xmx256M -Xms128M" #-->> (optional)
bin/kafka-server-start.sh config/server.properties


# Create a topic named "demo_test"
bin/kafka-topics.sh --create --topic demo_test --bootstrap-server <Your Public IP>:9092 --replication-factor 1 --partitions 1


# Start a Kafka producer and consumer in separate terminal windows
bin/kafka-console-producer.sh --topic demo_test --bootstrap-server <Your Public IP>:9092
bin/kafka-console-consumer.sh --topic demo_test --bootstrap-server <Your Public IP>:9092
