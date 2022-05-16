```bash
kubectl apply -f nginx-service.yaml

kubectl get services -o wide

kubectl describe service service-name

kubectl port-forward service/nginx-service 8080:80
```