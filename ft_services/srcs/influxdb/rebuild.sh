eval $(minikube docker-env)
kubectl delete -f ./srcs/influxdb.yaml > /dev/null
docker stop influxdb
docker build -t "influxdb" .
kubectl apply -f ./srcs/influxdb.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
