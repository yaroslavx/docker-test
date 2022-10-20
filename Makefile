run: 
	docker run -d -p 3000:7777 -v logs:/app/data --rm --name logsapp logsapp:vol
run-dev:
	docker run -d -p 3000:7777 -v /app/node_modules -v "/Users/yaroslav/Projects/docker-test:/app" -v logs:/app/data --rm --name logsapp logsapp:vol
stop: 
	docker stop logsapp