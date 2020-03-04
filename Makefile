update: lint package index

sync:
	rsync -avz ../prometheus-msteams/chart/prometheus-msteams/ ./charts/prometheus-msteams

lint:
	helm lint ./charts/*

package:
	helm package ./charts/*

index:
	helm repo index --url https://prometheus-msteams.github.io/helm-chart/ .
