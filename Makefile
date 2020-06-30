pwd=`pwd`

run:
	docker container run \
		-p 11111:80 \
		-v "${pwd}:/usr/local/apache2/htdocs/" \
		-d \
		--name "pcewing.github.io" \
		httpd
	echo "Running at http://localhost:11111/"

stop:
	docker rm -f "pcewing.github.io"

