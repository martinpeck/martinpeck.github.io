# martinpeck.com

[![Build Status](https://travis-ci.org/martinpeck/martinpeck.com.svg?branch=gh-pages)](https://travis-ci.org/martinpeck/martinpeck.com)

[![Build Status](https://dev.azure.com/martinpeck-github/martinpeck.com/_apis/build/status/martinpeck.martinpeck.com?branchName=gh-pages)](https://dev.azure.com/martinpeck-github/martinpeck.com/_build/latest?definitionId=2&branchName=gh-pages)

This is the source code for the [martinpeck.com](https://martinpeck.com) blog.

## Building the Site

The easiest way to build the site locally is to install docker, and then use the following command to run a Jekyll server:

``` bash
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:3.8 \
  jekyll serve
```

If you simply want to build the site then use the following command:

``` bash
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  jekyll/jekyll:3.8 \
  jekyll build
```

## Acknowledgements

This blog uses a modified version of [Mediumish](https://github.com/wowthemesnet/mediumish-theme-jekyll) for its theme, and is built using [Jekyll](http://jekyllrb.com).

## License

Open sourced under the [MIT license](LICENSE.md).

Copyright (c) 2016 - 2019 Martin Peck
