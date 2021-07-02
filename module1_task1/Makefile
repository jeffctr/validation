build: ## The build option will execute the hugo creeate website.
	@hugo > /dev/null 2>&1
clean: ## The clean option will remove any file from the folder dist/
	@rm -rf dist/*
post: ## The post option will create a new post with the specific file name and title
ifdef $(and POST_NAME, POST_TITLE)
	@hugo new posts/"${POST_NAME}.md"
	## Now read the file and change title
	@sed -i "s/${POST_NAME}/${POST_TITLE}/gi" "./content/posts/${POST_NAME}.md"
endif
help:
	@echo "build: Creates compile and execute the hugo webpage"
	@echo "post: POST_NAME=<file_name> POST_TITLE=<file_title> post: Creates a new post inside content/posts"
	@echo "clean: Deletes everything that is in the folder dist"
	@echo "help: Show this help usage"


