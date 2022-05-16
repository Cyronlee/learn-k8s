```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

kubectl proxy

http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

# 创建账户
kubectl apply -f service-account.yaml


kubectl describe serviceaccount admin-user -n kubernetes-dashboard


kubectl describe secret admin-user-token-dpjbg -n kubernetes-dashboard
```