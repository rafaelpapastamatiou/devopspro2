# KIND - Introduction

## Clusters - Basic Commands

### Create a new cluster
```bash
kind create cluster
```

### Create a new cluster with a custom name
```bash
kind create cluster --name my-cluster
```

### Create a new cluster with a config file
```bash
kind create cluster --name my-cluster --config kind-config.yaml
```

### List clusters
```bash
kind get clusters
```

### Delete a cluster (default)
```bash
kind delete cluster
```

### Delete a specific cluster
```bash
kind delete cluster --name my-cluster
```

## Usage example

### Load a local docker image to the cluster (image from 02-first-app)
```bash
kind load docker-image devopspro2-k8s-02-first-app-conversao-temperatura:latest --name my-cluster
```

### Apply deployment
```bash
kubectl apply -f .k8s/deployment.yaml
```

### Check deployment
```bash
kubectl get deploy,po
```

### Apply service
```bash
kubectl apply .k8s/service.yaml
```

### Check service
```bash
kubect get services
```

### Forward port to access the service
```bash
kubectl port-forward service/conversao-temperatura 8080:80
```