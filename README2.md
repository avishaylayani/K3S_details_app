# README for K3S Details App

## Overview
The K3S Details App is a Kubernetes-based application designed to be deployed using Helm. It automates deployment with an accompanying script to ensure a smooth and repeatable setup. This repository provides a set of Kubernetes YAML files, Helm charts, and an automated setup script to make the deployment process easier.

## Features
- Helm-based Kubernetes deployment
- Secure handling of sensitive configurations using GPG and SOPS
- Automation with `setup.sh` script
- Configuration management using Kubernetes manifests

## Prerequisites
- Kubernetes cluster (local or cloud-based)
- Helm installed on your local system
- GPG for handling encrypted secrets
- `sops` installed for encryption management

## Project Structure
- **setup.sh**: Script for deploying the K3S Details App, including encryption management.
- **values_encrypted.yaml**: Contains encrypted configuration values used by Helm.
- **deployment.yaml, service.yaml, ingress.yaml, pv.yaml, pvc.yaml**: Kubernetes manifests for deploying resources.
- **Chart.yaml**: Helm chart configuration file.
- **TASK.md**: Project-related tasks and requirements.

## Usage
The `setup.sh` script will manage encryption and deployment. It performs the following:
1. Downloads and imports a private key for decryption.
2. Decrypts the `values_encrypted.yaml` file.
3. Deploys the Details App using Helm.
