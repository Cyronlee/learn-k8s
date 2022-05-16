# 查看所有的context
get-contexts:
	kubectl config get-contexts

# 切换到kind的context
switch-context:
	kubectl config use-context kind-kind

# 看看当前集群的信息
cluster-info:
	kubectl cluster-info

# 查看当前有哪些节点
all-nodes:
	kubectl get nodes
