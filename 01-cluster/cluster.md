[Setting Up An Ingress Controller](https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx)

```bash

# 查看所有的context
kubectl config get-contexts

# 切换到kind的context
kubectl config use-context kind-kind

# 看看当前集群的信息
kubectl cluster-info

# 查看当前有哪些节点
kubectl get nodes
```