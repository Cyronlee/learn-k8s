# 部署应用
delopy:
	kubectl apply -f foo-deployment.yaml

# 查看deployment
all-deployment:
	kubectl get deployment

# 查看pod列表
all-pods:
	kubectl get pods

# 查看pod详情
pod-detail:
	kubectl describe pod pod-name

# 转发端口到本地5678
port-forward:
	kubectl port-forward pod-name 5678:5678

# 测试连通性
test:
	curl localhost:5678

# 查看pod的日志
logs:
	kubectl logs -f pod-name

# 进入pod的终端，-c container-name可以指定进入哪个容器
exex:
	kubectl exec -it pod-name -- bash

# 伸缩扩展副本
scale:
	kubectl scale deployment foo-deployment --replicas=3