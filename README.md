# CloudManager: 
Using Kubernetes to manage and monitor the developed and containerized vehicle tracking microservices on AWS

## Motivation
* Microservices architectures are very common for applications and many web giants such as Twitter, Amazon, PayPal and Netflix have successfully adopted microservice architecture. Some benefits like each service can scale and deployed independently, but inter-connection between microservices are hard to manage. If one service interrupted, checking the historical logs to find the root cause is very time-consuming. 

## Tech Stack
Technologies used: Docker, Kubernetes, AWS(S3, EC2), Kops, Prometheus, Grafana, Helm
<img src="https://github.com/Driedplum/DevOps-Project_Insight/blob/master/tech%20stack.png">

## Engineering Challenges
1. Automatically deploy new changes for testing
   * Solution: AWS Elastic Beanstalk
2. Deloy into production safely without impacting customers or business
3. Autoscaling machine learning models e.g. topic classification on news website
   * Introducing ingestion tooling like AWS Kinesis
