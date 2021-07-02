build: build.sh
	/bin/bash build.sh -b
clean: build.sh
	/bin/bash build.sh -c
post: build.sh
ifdef $(and POST_NAME, POST_TITLE)
	/bin/bash build.sh -N=${POST_NAME} -T="${POST_TITLE}" -p
endif


