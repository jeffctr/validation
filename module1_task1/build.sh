#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
    -b|build)
      shift # past argument
      hugo
      ;;
    -c|clean)
      shift # past argument
       rm -rf dist/*
      ;;
    -N=*|POST_NAME=*)
      POSTNAME="${key#*=}"
      shift # past argument=value
      ;;
    -T=*|POST_TITLE=*)
      POSTTITLE="${key#*=}"
      shift # past argument=value
      ;;
    -p|post)
      shift # past argument
      if [ ! -z "$POSTNAME" ]; then
          hugo new posts/"$POSTNAME.md"  $POSTTITLE
          # Now read the file and change title
          sed -i "s/${POSTNAME}/${POSTTITLE}/gi" "./content/posts/${POSTNAME}.md"
      fi
      ;;
    *)    # unknown option
      POSITIONAL+=("$1") # save it in an array for later
      shift # past argument
      ;;
  esac
done

set -- "${POSITIONAL[@]}" # restore positional parameters

if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 "$1"
fi
