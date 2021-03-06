# 安装dashboard
install:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

# 代理入口
proxy:
	kubectl proxy

# 访问dashboard
open:
	open http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

# 访问时选择token认证，创建账户
create-account:
	kubectl apply -f service-account.yaml

# 查看secret名称
secert:
	kubectl describe serviceaccount admin-user -n kubernetes-dashboard

token:
# 通过secret名称查看token
	kubectl describe secret admin-user-token-dpjbg -n kubernetes-dashboard

visit:
# 访问dashboard，输入token即可访问
	open http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
