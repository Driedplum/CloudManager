# CloudManager - Using Kubernetes to manage and monitor the developed and containerized microservices on AWS

## Overview
CloudManager is an open source project that provides an intelligent way to help manage and monitor your developed and containerized microservices on AWS using Kubernetes. Kubernetes helps build, deliver and scale the contaierized microservices and monitoring system can help collect and track logs for each container. An example of vehicle tracking application with 6 services is used in this project to demonstrate the workflow. It includes:
* Create K8s pods and services in .yaml files for six microservices that were already containerized in Docker Image
* AWS setups: VPC, internet gateway, route tables, network subnets and security groups
* AWS S3, EC2 instances setups
* Delpoy k8s cluster on AWS via Kops
* Build monitoring components by building logs pipline: pull logs from each container by fluentd, store logs by elasticsearch, and visualize by kibana

## Tech Stack
Technologies used: Kubernetes, AWS(S3, EC2), Kops
![alt text](img/TechStack.png)

## Tool installation and setups
#### Launch AWS EC2 instance and connect EC2 instance in terminal
```
ssh -i <your_pem_key> ec2-user@<ip-address>
```
#### Kops and kubectl installation:  
https://github.com/kubernetes/kops/blob/master/docs/aws.md
- Setup AWS IAM user for Kops, which will require the following IAM permissions:
   ```
   AmazonEC2FullAccess
   AmazonRoute53FullAccess
   AmazonS3FullAccess
   IAMFullAccess
   AmazonVPCFullAccess
   ```
- configure the aws client to use your IAM user
   ```
   aws configure           # Use your new access and secret key here
   aws iam list-users      # you should see a list of all your IAM users here
   ```
#### Create cluster in AWS S3 bucket
- Setup an AWS S3 bucket (distributed file system) for kops to store working data
- Configure the cluster
```
export NAME=<name>.k8s.local
export KOPS_STATE_STORE=s3://<s3 bucket name>
aws ec2 describe-availability-zones --region <your region>
kops create cluster --zones <your region> ${NAME}
```
- Build the cluster(Warning: this will continue to charge you until you delete the cluster)\
  `kops update cluster ${NAME} --yes`\
  To ensure the cluster is working, using\
  `kops validate cluster`\
  To delete the cluster, using\
  `kops delete cluster --name ${NAME} --yes`\
Now I have EC2 instances and a load balancer. Load balancer can direct traffic to instances. It has a stable DNS name. For this project  `kubectl get all ` is calling the load balancer.

#### Deploy k8s workloads(.yaml) to the cluster
In the k8s_cluster folder, I created .yaml files of kubernetes pods and services for the vehicle tracking system. Please refer to Kubernetes API overviews for instruction: https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.11/#-strong-api-overview-strong- \
Run all pods and services: `kubectl apply -f .`\
Show all pods and services: `kubectl get all`\





 


