#!/bin/bash
GIT_REPOSITORY_URI=https://github.com/Trepix/Java-kata-skeleton.git

TMP_FOLDER=$(mktemp -d)


if ! (git clone -q $GIT_REPOSITORY_URI "$TMP_FOLDER"); then
  echo "Can't clone repository from $GIT_REPOSITORY_URI"
  exit 1
fi
echo "Successfully downloaded repository"

rm -rf "$TMP_FOLDER"/.git
rm "$TMP_FOLDER"/install.sh "$TMP_FOLDER"/README.md

mv "$TMP_FOLDER"/* .

echo "Successfully set up scaffolding"