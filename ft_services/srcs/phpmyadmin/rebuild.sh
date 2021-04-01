eval $(minikube docker-env)
#cd srcs/nginx/
kubectl delete -f ./srcs/phpmyadmin.yaml > /dev/null
docker stop phpmyadmin
docker build -t "phpmyadmin" .
kubectl apply -f ./srcs/phpmyadmin.yaml
echo "para ver pods: kubectl get pod"
kubectl get pod
echo "para entrar en el pod: kubectl exec -it <podname> ./bin/sh"
