build: build.sh ## The build option will execute the hugo creeate website.
	/bin/bash build.sh -b
clean: build.sh ## The clean option will remove any file from the folder dist/
	/bin/bash build.sh -c
post: build.sh ## The post option will create a new post with the specific file name and title
ifdef $(and POST_NAME, POST_TITLE)
	/bin/bash build.sh -N=${POST_NAME} -T="${POST_TITLE}" -p
endif
help:
	printf "build:"
	printf "post:"
	printf "clean:"
	printf "help: Show this help usage"


