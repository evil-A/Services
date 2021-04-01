eval $(minikube docker-env)
kubectl delete -f ./srcs/ftps.yaml > /dev/null
docker stop ftps
docker build -t "ftps" .
kubectl apply -f ./srcs/ftps.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
