### CloudManager - Using Kubernetes to manage and monitor the developed and containerized microservices on AWS

## Overview
CloudManager is an open source project that provides an intelligent way to help manage and monitor your developed and containerized microservices on AWS using Kubernetes. Kubernetes helps build, deliver and scale the contaierized microservices and monitoring system can help collect and track logs for each container. An example of vehicle tracking application with 6 services is used in this project to demonstrate the workflow. It includes:
* Create K8s pods and services in .yaml files for six microservices that were already containerized in Docker Image
* AWS setups: VPC, internet gateway, route tables, network subnets and security groups
* AWS S3, EC2 instances setups
* Delpoy k8s cluster on AWS via Kops
* Build monitoring components by building logs pipline: pull logs from each container by fluentd, store logs by elasticsearch, and visualize by kibana

Tech Stack
Technologies used: Kubernetes, AWS(S3, EC2), Kops, Prometheus, Grafana, Helm ￼
![alt text](https://user-images.githubusercontent.com/28720518/55841131-da1db700-5ae2-11e9-95e9-4c7ddb575ada.png)

Tool Installation
1. AWS Accounts with full access to: EC2, S3
2. Kops: https://github.com/kubernetes/kops
