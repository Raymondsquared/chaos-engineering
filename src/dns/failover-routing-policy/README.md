# DNS - Failover Routing Policy

## Why?

## How it works?

## What is involed?

## Architecture Diagram

failover-routing-policy.rayndom.link

- On successful:
served by failover-routing-policy-primary.rayndom.link (ELB)

- On failure:
served by failover-routing-policy-secondary.rayndom.link (S3)

## TO DO

- [x] README.md
- [x] Primary Docker + Load Balancer
- [x] Secondary S3
- [ ] Infrastructure as Code - CloudFormation
- [ ] Architecture Diagram

## References

AWS Route53 Failover Routing Policy - https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-failover
