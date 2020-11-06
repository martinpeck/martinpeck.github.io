# martinpeck.com

![Build Site with Jekyll](https://github.com/martinpeck/martinpeck.com/workflows/Build%20Site%20with%20Jekyll/badge.svg?branch=gh-pages)

This is the source code for the [martinpeck.com](https://martinpeck.com) blog. If you've spotted a typo in that blog, you're welcome to send me a pull request.

## Building the Site

The site uses a Visual Studio Code DevContainer to make local setup easier. Read this to find out more...

<https://code.visualstudio.com/docs/remote/containers>

Assuming you're set up with VS Code, and the Remote Containers extension, you just need to open the project with VSCode and away you go!

For convinience, there is a `Makefile` in this repo that defines the following rules:

- `make build` to build the site
- `make serve` to build and then serve the site on `http://localhost:4000`

## Acknowledgements

This blog uses a modified version of [Mediumish](https://github.com/wowthemesnet/mediumish-theme-jekyll) for its theme, and is built using [Jekyll](http://jekyllrb.com).

## License

Open sourced under the [MIT license](LICENSE.md).

Copyright (c) 2016 - 2020 Martin Peck
