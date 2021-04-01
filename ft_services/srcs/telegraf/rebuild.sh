eval $(minikube docker-env)
kubectl delete -f ./srcs/telegraf.yaml > /dev/null
docker stop telegraf
docker build -t "telegraf" .
kubectl apply -f ./srcs/telegraf.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
