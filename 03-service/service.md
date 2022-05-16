```bash
# 部署service
kubectl apply -f nginx-service.yaml

# 查看service状态
kubectl get services -o wide

# 查看service详情
kubectl describe service service-name

# 转发端口到本地5678
kubectl port-forward service/foo-service 5678:5678
```