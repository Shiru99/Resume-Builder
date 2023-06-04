# Deploying on minikube on Mac M-1

## Prerequisites

-  Install [docker](https://docs.docker.com/get-docker/)
-  Install [minikube](https://minikube.sigs.k8s.io/docs/start/)



## Start minikube

```bash
minikube start
```

## Enable ingress

```bash
minikube addons enable ingress
```

## Minikube tunnel

```bash
minikube tunnel
```

## Update hosts file

* update /etc/hosts with - `127.0.0.1 resume-builder.dev`
* 127.0.0.1 is [must](https://github.com/kubernetes/minikube/issues/13510#issuecomment-1130152467) 

```bash
sudo nano /etc/hosts
```

## Verify

```bash
curl -Is http://resume-builder.dev/
```

---