Deploy EKS cluster using terraform,leveraging Jenkins as integration tool

1. Create and secure the Keypair 
2. Create a Jenkins Server with all the dependencies, libraries and packagies needed.
3. Setup and configure Jenkin server with admin id, AWS access and secret id and pipe line
4. Run jenkins-pipeline-deploy-to-eks to create EKS cluster, create deployments and services
5. Followed with implemeting,
  -  HPA - Horizonal pod auto scaling
  -  ELK - Elasticsearch, logstash, Kibana for logging and metrics
  -  Metrics-server promrthrus & grafana - Monitoring and observability
6. Followed with teraform destroy loop, since this is the demo deployment.

