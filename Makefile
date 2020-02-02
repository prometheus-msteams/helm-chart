update: lint package index

lint:
	helm lint ./charts/*

package:
	helm package ./charts/*

index:
	helm repo index --url https://prometheus-msteams.github.io/helm-chart/ .
