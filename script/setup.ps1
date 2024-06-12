# Set Azure subscription
Write-Host "Setting Azure subscription..."
az account set --subscription 999b83ca-672c-408d-86f7-fef298206376

# Get AKS cluster credentials
az aks get-credentials --resource-group mira-production-resource-group --name mira-production --overwrite-existing

# Create namespaces
kubectl create namespace cert-manager
kubectl create namespace nginx-ingress

# Add Helm repositories and update
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# Install NGINX Ingress Controller
helm upgrade --install nginx-ingress ingress-nginx/ingress-nginx --version 4.5.0 --set controller.publishService.enabled=true --namespace nginx-ingress

# Install Cert-Manager
helm repo update
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v1.10.1 --set installCRDs=true

# Apply cluster issuer YAML
kubectl apply -f ./script/cluster-issuer.yml