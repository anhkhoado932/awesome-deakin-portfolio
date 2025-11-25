## Main Objectives

- Deploy a scalable and highly available WordPress application leveraging AWS infrastructure and automation tools.
- Optimize for business requirements: seamless scalability, high availability, speed, disaster recovery, encryption, global low-latency, and minimal operational overhead.
- Redesign the initial solution to adopt a serverless/event-driven paradigm, cost efficiency, and modern best practices for reliability and security.

## Key Results

- Built a resilient architecture using VPC, EC2, RDS, S3, ALB, and automated provisioning with CloudFormation.
- Achieved stateless application scaling via S3 offload and auto-managed failover using Multi-AZ RDS and Auto Scaling Groups.
- Implemented disaster recovery, serverless computing (Fargate), in-memory caching (ElastiCache), serverless database (Aurora Serverless), and global acceleration (CloudFront + Route 53).
- Ensured encryption at rest and in transit with AWS KMS and ACM; designed for RPO of 15 minutes and RTO of 1 hour.
- Validated through system tests: auto-healing, zero-downtime RDS failover, S3-backed media, and session persistence.

## Technology Used

![](https://img.shields.io/badge/AWS-232F3E?style=flat&logo=amazonaws&logoColor=white) ![](https://img.shields.io/badge/EC2-FF9900?style=flat&logo=amazon-ec2&logoColor=white) ![](https://img.shields.io/badge/RDS-527FFF?style=flat&logo=amazon-rds&logoColor=white) ![](https://img.shields.io/badge/S3-569A31?style=flat&logo=amazon-s3&logoColor=white) ![](https://img.shields.io/badge/ALB-FF4F8B?style=flat&logo=load-balancer&logoColor=white) ![](https://img.shields.io/badge/Auto%20Scaling%20Group-FF9900?style=flat&logo=amazonaws&logoColor=white) ![](https://img.shields.io/badge/CloudFormation-FF6F00?style=flat&logo=awslambda&logoColor=white) ![](https://img.shields.io/badge/Fargate-FFB300?style=flat&logo=amazonec2&logoColor=white) ![](https://img.shields.io/badge/Aurora%20Serverless-013220?style=flat&logo=amazonaws&logoColor=white) ![](https://img.shields.io/badge/ElastiCache-0052CC?style=flat&logo=redis&logoColor=white) ![](https://img.shields.io/badge/Route%2053-6C3483?style=flat&logo=amazon-aws&logoColor=white) ![](https://img.shields.io/badge/CloudFront-45A1FF?style=flat&logo=amazoncloudfront&logoColor=white)
