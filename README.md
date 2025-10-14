# sample-argocd-helm-5apps

This repo contains **5 sample webapps** (Node.js), **Helm charts** (one per app),
**multi-env overrides** using a **single file per environment** (`envs/<env>/app.values.yaml`),
and an **Argo CD ApplicationSet** wired with **Argo CD Image Updater (Git write-back)** to that single file.

Replace placeholders:
- Docker Hub user: `your-dockerhub-user`
- GitHub repo: `https://github.com/your-github-user/sample-argocd-helm-5apps.git`

## Clusters
Register clusters once:
```
argocd cluster add <dev-kubecontext>  --name dev-cluster
argocd cluster add <qa-kubecontext>   --name qa-cluster
argocd cluster add <prod-kubecontext> --name prod-cluster
```

## Build & push example
```
docker build -t app1:1.0.0 ./apps/app1
docker tag app1:1.0.0 your-dockerhub-user/app1:1.0.0
docker push your-dockerhub-user/app1:1.0.0
```

## Apply
```
kubectl apply -f argocd/appset.yaml
```

Image Updater will update `envs/<env>/app.values.yaml` under `apps.appN.image.tag` and Argo CD will sync the rollout to the right cluster+namespace.
