build:
	pack build jordanyong/sample-review-service --builder gcr.io/buildpacks/builder:v1
publish:
	docker push jordanyong/sample-review-service
helm-update:
	helm dependency update charts
release:
	helm upgrade --install sample-review-service charts