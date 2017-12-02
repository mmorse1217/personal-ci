ci-setup: Dockerfile
	docker build -t ci-server -f Dockerfile .
ci-run: ci-setup
	docker run -it -p 8080:8080 -d -u root -v /var/run/docker.sock:/var/run/docker.sock ci-server /bin/bash
