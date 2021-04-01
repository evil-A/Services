eval $(minikube docker-env)
#cd srcs/nginx/
kubectl delete -f ./srcs/nginx.yaml > /dev/null
docker stop nginx
docker build -t "nginx" .
kubectl apply -f ./srcs/nginx.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
