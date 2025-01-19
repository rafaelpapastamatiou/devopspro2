# Projeto conversão de temperatura

### Sobre o projeto
O projeto conversão de temperatura é um projeto desenvolvido em NodeJS. O projeto tem como objetivo ser um exemplo para a criação de ambiente com containers usando NodeJS.

### Observações do projeto
A aplicação é exposta usando a porta 8080

### Buildar imagem
```bash
docker build -t devopspro2-k8s-02-first-app-conversao-temperatura .
```

### Criar cluster K3D
```bash
k3d cluster create --servers 3 --agents 3 my-cluster
```

### Importar imagem para o cluster k3d
```bash
k3d image import devopspro2-k8s-02-first-app-conversao-temperatura --cluster my-cluster
```

### Aplicar deployment
```bash
kubectl apply -f .k8s/deployment.yaml
```

### Verificar deployment e pods
```bash
kubectl get deploy,po
``` 

### Aplicar service
```bash
kubectl apply -f .k8s/service.yaml
```

### Verificar service
```bash
kubectl get services
```