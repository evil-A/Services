eval $(minikube docker-env)
kubectl delete -f ./srcs/mysql.yaml > /dev/null
docker stop mysql
docker build -t "mysql" .
kubectl apply -f ./srcs/mysql.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
