build:
	pack build jordanyong/review-service --builder gcr.io/buildpacks/builder:v1
publish:
	docker push jordanyong/review-service
helm-update:
	helm dependency update charts
release:
	helm upgrade --install review-service charts