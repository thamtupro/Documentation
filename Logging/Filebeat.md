# Filebeats (Elastic)

## Reference Links
- https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-overview.html
- https://www.elastic.co/guide/en/beats/filebeat/current/how-filebeat-works.html
- https://www.elastic.co/guide/en/beats/libbeat/8.15/beats-reference.html

## What are [Beats](https://www.elastic.co/guide/en/beats/libbeat/8.15/beats-reference.html)?
- Beats are open source data shippers used to send operational data directy to Elasticsearch or via Logstash, where you can further process and enhance the data, before visualizing it in Kibana.
- Some types of Beats:
  - [Auditbeat](https://www.elastic.co/products/beats/auditbeat): Audit data
  - [Filebeat](https://www.elastic.co/products/beats/filebeat): Logs, journals data
  - [Heartbeat](https://www.elastic.co/products/beats/heartbeat): Availability data
  - [Metricbeat](https://www.elastic.co/products/beats/metricbeat): Metrics data

## What is Filebeat?
- Filebeat is a lightweight shipper, and used for forwarding and centralizing log data. <=> Logs data "shipper"
- Filebeat is an **Elastic Beats** (collections of data shippers (many types of data)).

## Purpose of Filebeat?
- Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
=> Flow: logs -> Filebeat -> [ Logstash (for parsing logs) ] -> Elasticsearch

## Flow of Filebeat
- Filebeat consisnts of 2 components: inputs and haverster
![screenshot](./img/filebeat_1.png.png)

- Flow: inputs -> harvester -> libbeat -> outputs
  - Find logs based on **input**.
  - When logs found, start **harvester**.
  - Havester reads and send new content of log data to **libbeat**.
  - Libbeat aggregates event and sends aggregated data into **output** (Elasticsearch/Logstash).
