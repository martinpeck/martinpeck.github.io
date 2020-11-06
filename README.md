# martinpeck.com

This is the source code for the [martinpeck.com](https://martinpeck.com) blog. If you've spotted a typo in that blog, you're welcome to send me a pull request.

## Building the Site

The easiest way to build the site locally is to install docker, and then use the following command to run a Jekyll server:

``` bash
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:3.8 \
  jekyll serve --future --drafts
```

This will generate the `_site` folder and then start a local webserver. Changes to the content are watched, and the site will build.

You can then open the site at <http://localhost:4000>

If you simply want to build the site then use the following command:

``` bash
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  jekyll/jekyll:3.8 \
  jekyll build --future --drafts
```

This will generate the `_site` folder.

For convinience, there is a `Makefile` in this repo that defines the following rules:

- `make build` to build the site
- `make serve` to build and then serve the site on `http://localhost:4000`

## Azure DevOps Build and Release Pipelines

Commits to this repository will kick off an Azure DevOps build pipeline. You can find that here: <https://dev.azure.com/martinpeck-github/martinpeck.com/_build?>

Successful builds will initiate an Azure DevOps release pipeline. You can find that here: <https://dev.azure.com/martinpeck-github/martinpeck.com/_release>

The release pipeline deploys the static site to an Azure storage account. You can view the deployed site here: <https://martinpeck.z35.web.core.windows.net/>

## Acknowledgements

This blog uses a modified version of [Mediumish](https://github.com/wowthemesnet/mediumish-theme-jekyll) for its theme, and is built using [Jekyll](http://jekyllrb.com).

## License

Open sourced under the [MIT license](LICENSE.md).

Copyright (c) 2016 - 2020 Martin Peck
