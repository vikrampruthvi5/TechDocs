# Kubernetes and Cloud-Native Associate (KCNA)

## Scheduling
### Pod Binding
When a pod is already assigned to a node using nodeName. Kubernetes do not allow you to change the ndoe name once assigned. For that you need to use binding

```yaml
apiVersion: v1
kind: Binding 
metadata:
    name: nginx
target:
    apiVersion: v1
    kind: Node 
    name: node02
```

```yaml
apiVersion: v1
kind: Pod
metadata:
    name: nginx 
    labels:
        name: nginx
spec:
    containers:
    - name: nginx 
      image: nginx 
      ports:
        - containerPort:
```
