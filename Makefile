all: build copy

build:
	bundle exec jekyll build

copy:
	rsync -vr -e ssh _site/* amueller@compute.cs.columbia.edu:~/html
