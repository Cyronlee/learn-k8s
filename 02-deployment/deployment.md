```shell
# 部署应用
kubectl apply -f foo-deployment.yaml

# 查看deployment
kubectl get deployment

# 查看pod列表
kubectl get pods

# 查看pod详情
kubectl describe pod pod-name

# 转发端口到本地5678
kubectl port-forward pod-name 5678:5678

# 查看pod的日志
kubectl logs -f pod-name

# 进入pod的终端，-c container-name可以指定进入哪个容器
kubectl exec -it pod-name -- bash

# 伸缩扩展副本
kubectl scale deployment foo-deployment --replicas=3

---

# 查看历史
kubectl rollout history deployment foo-deployment

# 回到上个版本
kubectl rollout undo deployment foo-deployment

# 回到指定版本
kubectl rollout undo deployment foo-deployment --to-revision=2

# 删除部署
kubectl delete deployment foo-deployment
```