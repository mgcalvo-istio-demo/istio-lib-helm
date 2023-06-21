#!/bin/bash
dir="istio-lib-helm"
helmUrl="https://mgcalvo-istio-demo.github.io/istio-lib-helm"
helm package ${dir}/. 
helm repo index --url ${helmUrl} .
git add . && git commit -m "chore: update helm $(date)" && git push origin