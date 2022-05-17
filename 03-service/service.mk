# 部署service
delopy:
	kubectl apply -f foo-service.yaml

# 查看service状态
all-services:
	kubectl get services -o wide

# 查看service详情
service-detail:
	kubectl describe service foo-service

# 转发端口到本地5678
port-forward:
	kubectl port-forward service/foo-service 5678:5678

# 测试连通性
test:
	curl localhost:5678
