docker build -t naren9990/multi-client-k8s:latest -t naren9990/multi-client-k8s:$SHA -f ./client/Dockerfile ./client
docker build -t naren9990/multi-server-k8s:latest -t naren9990/multi-server-k8s:$SHA -f ./server/Dockerfile ./server
docker build -t naren9990/multi-worker-k8s:latest -t naren9990/multi-worker-k8s:$SHA -f ./worker/Dockerfile ./worker

#docker push naren9990/multi-client-k8s:latest
#docker push naren9990/multi-server-k8s:latest
#docker push naren9990/multi-worker-k8s:latest

#docker push naren9990/multi-client-k8s:$SHA
#docker push naren9990/multi-server-k8s:$SHA
#docker push naren9990/multi-worker-k8s:$SHA

#kubectl apply -f k8s
#kubectl set image deployments/server-deployment server=naren9990/multi-server-k8s:$SHA
#kubectl set image deployments/client-deployment client=naren9990/multi-client-k8s:$SHA
#kubectl set image deployments/worker-deployment worker=naren9990/multi-worker-k8s:$SHA