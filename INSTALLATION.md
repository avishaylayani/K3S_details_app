# INSTALLATION.md

## Installation Guide

### Step 1: Clone the Repository
Clone the repository to your local machine using Git:

```sh
$ git clone <repository-url>
$ cd K3S_details_app
```

### Step 2: Install Prerequisites
Ensure you have Kubernetes, Helm, GPG, and `sops` installed.

- Install Helm (Linux):
  ```sh
  $ curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
  ```

- Install SOPS (Linux):
  ```sh
  $ sudo apt-get install sops
  ```

- Install GPG (Linux):
  ```sh
  $ sudo apt-get install gnupg
  ```

- Install Helm (macOS):
  ```sh
  $ curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
  ```

- Install SOPS (macOS):
  ```sh
  $ brew install sops
  ```

- Install GPG (macOS):
  ```sh
  $ brew install gnupg
  ```

### Step 3: Run Setup Script
Run the setup script (`setup.sh`) to deploy the Details App:

```sh
$ chmod +x setup.sh
$ ./setup.sh
```

This script will perform encryption and decryption tasks and then deploy the app using Helm.

### Step 4: Verify Deployment
After running the script, verify the deployment by checking Helm releases:

```sh
$ helm list
```

Ensure the `detailsapp` release is listed and running successfully.

### Step 5: Access the Application
Use the configured ingress to access the application in your browser. Make sure to check your Kubernetes cluster's ingress IP to access the service.
