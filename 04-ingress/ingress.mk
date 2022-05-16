# 部署ingress
deploy:
	kubectl apply -f ingress.yaml

# 部署多路由的ingress
deploy-multipath:
	kubectl apply -f ingress-multipath.yaml


