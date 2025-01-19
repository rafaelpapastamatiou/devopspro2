# Kubernetes

### Create a new Kubernetes cluster with K3D (3 control planes + 3 worker nodes)
```bash
k3d cluster create mycluster --servers 3 --agents 3
```


## Pod
A Pod is the smallest and simplest Kubernetes object. It represents a single instance of a running process in your cluster.

### Apply Pod Configuration
Apply the Pod configuration file in the workspace:
```bash
kubectl apply -f pod.yaml
```

### Check Pod Status
Check the status of your Pods:
```bash
kubectl get pods
```

### Describe Pod
Get detailed information about a Pod:
```bash
kubectl describe pod my-pod
```

### Delete Pod
Delete the Pod:
```bash
kubectl delete -f pod.yaml
```



## ReplicaSet
A ReplicaSet ensures that a specified number of pod replicas are running at any given time. It is used to maintain a stable set of replica Pods running at any given time.

### Apply ReplicaSet Configuration
Apply the ReplicaSet configuration file in the workspace:
```bash
kubectl apply -f replicaset.yaml
```

### Check ReplicaSet Status
Check the status of your ReplicaSets:
```bash
kubectl get replicasets
```

### Describe ReplicaSet
Get detailed information about a ReplicaSet:
```bash
kubectl describe replicaset my-replicaset
```

### Delete ReplicaSet
Delete the ReplicaSet:
```bash
kubectl delete -f replicaset.yaml
```



## Deployment
A Deployment provides declarative updates to applications. It manages ReplicaSets and provides rollout and rollback capabilities.

### Apply Deployment Configuration
Apply the Deployment configuration file in the workspace:
```bash
kubectl apply -f deployment.yaml
```

### Check Deployment Status
Check the status of your Deployments:
```bash
kubectl get deployments
```

### Describe Deployment
Get detailed information about a Deployment:
```bash
kubectl describe deployment my-deployment
```

### Delete Deployment
Delete the Deployment:
```bash
kubectl delete -f deployment.yaml
```

### Rollout Strategy for Deployment
Check the rollout status of the deployment:
```bash
kubectl rollout status deployment/my-deployment
```

Pause the rollout of the deployment:
```bash
kubectl rollout pause deployment/my-deployment
```

Resume the rollout of the deployment:
```bash
kubectl rollout resume deployment/my-deployment
```

Undo the last rollout:
```bash
kubectl rollout undo deployment/my-deployment
```



## Kubernetes Service Types

### ClusterIP
Exposes the service on an internal IP address within the cluster. This type of service is only accessible from within the cluster.
```bash
kubectl apply -f service-clusterip.yaml
kubectl get service my-service-clusterip
kubectl describe service my-service-clusterip
```

### NodePort
Exposes the service on each Node's IP at a static port (the NodePort). A `ClusterIP` service, to which the NodePort service routes, is automatically created.
```bash
kubectl apply -f service-nodeport.yaml
kubectl get service my-service-nodeport
kubectl describe service my-service-nodeport
```

### LoadBalancer
Exposes the service externally using a cloud provider's load balancer. A `ClusterIP` service, to which the external load balancer routes, is automatically created.
```bash
kubectl apply -f service-loadbalancer.yaml
kubectl get service my-service-loadbalancer
kubectl describe service my-service-loadbalancer
```

### ExternalName
Maps the service to the contents of the `externalName` field (e.g., `foo.bar.example.com`), by returning a CNAME record with its value. No proxying of any kind is set up.
```bash
kubectl apply -f service-externalname.yaml
kubectl get service my-service-externalname
kubectl describe service my-service-externalname
```



## Endpoints

Endpoints are objects that store the IP addresses of the Pods that are associated with a Service. They are automatically created when a Service is created and updated as the Pods are created or destroyed.

### Check Endpoints
Check the status of your Endpoints:
```bash
kubectl get endpoints
```

### Describe Endpoints
Get detailed information about an Endpoint:
```bash
kubectl describe endpoints SERVICE_NAME
```

### Delete Endpoints
Delete an Endpoint:
```bash
kubectl delete endpoints SERVICE_NAME
```



## EndpointSlices

EndpointSlices provide a more scalable and extensible alternative to Endpoints. They group network endpoints together and provide additional metadata about the endpoints.

### Check EndpointSlices
Check the status of your EndpointSlices:
```bash
kubectl get endpointslices
```

### Describe EndpointSlices
Get detailed information about an EndpointSlice:
```bash
kubectl describe endpointslice ENDPOINTSLICE_NAME
```

### Delete EndpointSlices
Delete an EndpointSlice:
```bash
kubectl delete endpointslice ENDPOINTSLICE_NAME
```



# Important `kubectl` Commands

## General Commands

### Get Cluster Information
Get detailed information about the cluster:
```bash
kubectl cluster-info
```

### List API Resources
List all available API resources:
```bash
kubectl api-resources
```

### List API Versions
List all available API versions:
```bash
kubectl api-versions
```

### Get Nodes
List all nodes in the cluster:
```bash
kubectl get nodes
```

### Get Namespaces
List all namespaces in the cluster:
```bash
kubectl get namespaces
```

## Pod Commands

### Get Pod Logs
Get logs from a Pod:
```bash
kubectl logs <pod-name>
```

### Execute Command in Pod
Execute a command in a running Pod:
```bash
kubectl exec <pod-name> -- <command>
```

### Port Forward
Forward a local port to a port on the Pod:
```bash
kubectl port-forward <pod-name> <local-port>:<pod-port>
```

## Service Commands

### Get Services
List all services in the cluster:
```bash
kubectl get services
```

### Describe Service
Get detailed information about a service:
```bash
kubectl describe service <service-name>
```

### Expose Pod as Service
Expose a Pod as a new service:
```bash
kubectl expose pod <pod-name> --type=<service-type> --port=<port>
```

## Miscellaneous Commands

### Apply Configuration
Apply a configuration file:
```bash
kubectl apply -f <file-path>
```

### Delete Resource
Delete a resource from a file:
```bash
kubectl delete -f <file-path>
```

### Get Events
List all events in the cluster:
```bash
kubectl get events
```

### Get Resource Usage
Get resource usage of nodes or pods:
```bash
kubectl top nodes
kubectl top pods
```