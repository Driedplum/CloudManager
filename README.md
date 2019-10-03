# CloudManager - Using Kubernetes to manage and monitor the developed and containerized microservices on AWS
## Overview
CloudManager is an open source project that provides an intelligent way to help manage and monitor your developed and containerized microservices on AWS using Kubernetes. Kubernetes helps build, deliever and scale the contaierized microservices and monitoring system can help collect and track your kube status and logs. An example of vehicle tracking application with 6 services is used in this project to demonstrate the workflow. It includes:
* 
*

## Tech Stack
Technologies used: Docker, Kubernetes, AWS(S3, EC2), Kops, Prometheus, Grafana, Helm
<img src="https://github.com/Driedplum/DevOps-Project_Insight/blob/master/tech%20stack.png">

## Engineering Challenges
1. Automatically deploy new changes for testing
   * Solution: AWS Elastic Beanstalk
2. Deloy into production safely without impacting customers or business
3. Autoscaling machine learning models e.g. topic classification on news website
   * Introducing ingestion tooling like AWS Kinesis
