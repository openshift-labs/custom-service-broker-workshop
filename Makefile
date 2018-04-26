run:
	docker run -p 8080:8080 -ti --rm --name=workshops -v `pwd`:/app-data -e CONTENT_URL_PREFIX="file:///app-data" -e WORKSHOPS_URLS="file:///app-data/_workshop.yml" osevg/workshopper
