eval $(minikube docker-env)
#cd srcs/nginx/
kubectl delete -f ./srcs/grafana.yaml > /dev/null
docker stop grafana
docker build -t "grafana" .
kubectl apply -f ./srcs/grafana.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
