serve:
	jekyll serve --future --drafts

build:
	jekyll build --future --drafts

docker-serve:
	docker run --rm -it \
	--volume="$$PWD:/srv/jekyll" \
	--volume="$$PWD/vendor/bundle:/usr/local/bundle" \
	-p 4000:4000 jekyll/jekyll:3.8 \
	jekyll serve --future --drafts

docker-build:
	docker run --rm -it \
	--volume="$$PWD:/srv/jekyll" \
	--volume="$$PWD/vendor/bundle:/usr/local/bundle" \
	jekyll/jekyll:3.8 \
	jekyll build --future --drafts