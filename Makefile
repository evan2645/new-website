setup:
	npm install

serve:
	hugo server \
	--buildDrafts \
	--buildFuture \
	--disableFastRender

production-build:
	hugo

preview-build:
	hugo --baseURL $(DEPLOY_PRIME_URL)

docker-serve:
	docker run --rm -it -v $(PWD):/src -p 1313:1313 -u hugo jguyomard/hugo-builder hugo server --bind=0.0.0.0