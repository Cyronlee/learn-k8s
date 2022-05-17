# 部署应用
delopy:
	kubectl apply -f foo-deployment.yaml

# 查看deployment
all-deployment:
	kubectl get deployment

# 查看pod列表
all-pods:
	kubectl get pods -o wide

# 查看pod详情
pod-detail:
	kubectl describe pod foo-deployment-6cf4f56f6-j4wv6

# 转发端口到本地5678
port-forward:
	kubectl port-forward foo-deployment-6cf4f56f6-q8ng7 5678:5678

# 测试连通性
test:
	curl localhost:5678

# 查看pod的日志
logs:
	kubectl logs -f foo-deployment-6cf4f56f6-j4wv6

# 进入pod的终端，-c container-name可以指定进入哪个容器
exec:
	kubectl exec -it foo-deployment-6cf4f56f6-q8ng7 -- bash

# 伸缩扩展副本
scale:
	kubectl scale deployment foo-deployment --replicas=3
