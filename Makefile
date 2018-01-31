all: build copy

build:
	JEKYLL_ENV=production bundle exec jekyll build

copy:
	rsync -vr -e ssh _site/* amueller@compute.cs.columbia.edu:~/html
