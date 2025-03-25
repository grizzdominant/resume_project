# resume_project
# HTML/CSS project for WGU course that I turned into testing Github Actions + Docker build + Helm chart + ArgoCD automation
# Code push to the repo results in Github Actions workflow firing off.
# The Github Actions workflow builds a new version of the Docker image and pushes it to Dockerhub.
# The workflow then updates the Helm chart in this repo with a new image tag.
# An ArgoCD instance has a deployment setup to monitor this repo for any changes to the Helm charts and automatically pull down the Helm chart when updated (the new image tag in the previous step is the update)
# ArgoCD rolls out new pods with the updated image in my k8s cluster.
