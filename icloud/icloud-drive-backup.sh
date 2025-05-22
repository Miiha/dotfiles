#!/bin/bash

USER=mkao
DEST=/Volumes/sync1/familie/
SRC="/Users/$USER/Library/Mobile Documents/com~apple~CloudDocs/Familie/"

rsync --verbose --recursive --delete-before --whole-file --times --exclude=".DS_Store" --exclude=".Trash/" "$SRC" "$DEST"
