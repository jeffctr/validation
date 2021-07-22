build: ## The build option will create the require files
	@go build
run: ## The run option will execute the app.
	@./awesome-api >./awesome.log 2>&1 &
clean: ## The clean option will remove the binary and log files
	@rm awesome-api awesome.log
test: ## Check if the app is running
	@curl http://localhost:9999
	@sleep 1
	@curl http://localhost:9999/health
stop:
	@pgrep awesome-api | xargs kill
help:
	@echo "build: The build option will create the require files"
	@echo "run: The run option will execute the app"
	@echo "clean: The clean option will remove the binary and log files "
	@echo "test: Check if the app is running"
	@echo "stop: kill the process"
	@echo "help: Show this help usage"
