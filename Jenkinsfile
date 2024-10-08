#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create EKS cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform apply --auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name demo-eks-cluster"
                        sh "kubectl apply -f nginx-deployment.yaml"
                        sh "kubectl apply -f nginx-service.yaml"
                    }
                }
            }
        }
        stage("Deploy to metrics-server") {
            steps {
                script {
                    dir('metrics-server') {
                        sh "aws eks update-kubeconfig --name demo-eks-cluster"
                        sh "kubectl apply -f ."
                    }
                }
            }
        }
        stage("Deploy to HPA-deployment") {
            steps {
                script {
                    dir('HPA') {
                        sh "aws eks update-kubeconfig --name demo-eks-cluster"
                        sh "kubectl apply -f .
                    }
                }
            }
        }
        stage("Deploy to ELK-deployment") {
            steps {
                script {
                    dir('HPA') {
                        sh "aws eks update-kubeconfig --name demo-eks-cluster"
                        sh "kubectl apply -f .
                    }
                }
            }
        } 
        stages {
        stage("Create EKS cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform destroy"
                    }
                }
            }
        }
    }
}
