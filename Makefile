serve:
	bundle exec jekyll serve --future --drafts

build:
	bundle exec jekyll build --future --drafts

ci-build:
	./.github/workflows/ci-build.sh