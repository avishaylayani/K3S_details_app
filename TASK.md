# Helm Deployment of details app to k3s cluster

Your development team has eventually developed container based application of `details app`, which can run from docker containers with the help of docker-compose, yet due to new requirements, you have to deploy it to k3s cluster and not onto docker compose environement. 

### Tasks

- Install helm
- Generate helm project for deployment of `details app`
    - As part of deployment you would need to install details app under a pod with 2 replicasets
    - There should be a seperate deployment of postgresql container with PV and PVC with addition of 1 replicasets
    - Both of deployments should have appropriate services to be accessed inside the k3s network
    - Ingress controller should map the access to the paths under the application of container

### Notes:

- Use the yaml files used in tasks on previous practices to get the required values for your helm chart
- Use documentation and other resources.
- RTFM