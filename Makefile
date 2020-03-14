update: lint package index

sync:
	rsync -avz ../prometheus-msteams/chart/prometheus-msteams/** ./prometheus-msteams/

lint:
	helm lint ./prometheus-msteams/

package:
	helm package ./prometheus-msteams/

index:
	helm repo index --url https://prometheus-msteams.github.io/helm-chart/ .
