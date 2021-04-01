eval $(minikube docker-env)
#cd srcs/nginx/
kubectl delete -f ./srcs/wordpress.yaml > /dev/null
docker stop wordpress
docker build -t "wordpress" .
kubectl apply -f ./srcs/wordpress.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
