build: build.sh ## The build option will execute the hugo creeate website.
	$(shell /bin/bash build.sh -b)
clean: build.sh ## The clean option will remove any file from the folder dist/
	$(shell /bin/bash build.sh -c)
post: build.sh ## The post option will create a new post with the specific file name and title
ifdef $(and POST_NAME, POST_TITLE)
	@hugo new posts/"${POST_NAME}.md"
	# Now read the file and change title
	@sed -i "s/${POST_NAME}/${POST_TITLE}/gi" "./content/posts/${POST_NAME}.md"
endif
help:
	@echo "build: build info"
	@echo "post: post info"
	@echo "clean: clean info clean Clean"
	@echo "help: help info"


