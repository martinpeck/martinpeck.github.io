---
layout: post
title:  Building and Deploying Jekyll Sites using VSTS Build Pipelines
author: martin
categories: [ Jekyll, tutorial, blog ]
image: images/jekyll-vsts/main-image.png
featured: true

---

I'm a big fan of [Jekyll][jekyll] when it comes to static sites, such as blogs, documentation etc. This post describes how I've set up a [VSTS][vsts] Build Pipeline to build and deploy a static Jekyll site using Docker images to do the actual build steps.

## The Problem

This blog is a Jekyll site, [hosted on GitHub][martinpeck] as a [GitHub Pages site][githubpages].

However, Jekyll requires you to have a Ruby environment in order to run and build your web site, and this can sometimes be a pain to set up and maintain.

If you're not a Ruby developer then keeping your environment up to date with the latest versions of Gems and other dependencies can be time consuming if all you want to do is edit some markdown files and get stuff published.

Also, if you're working on a site that's being edited by many people, you'll want to have a common setup...and you'll want your website built in a reliable, predictable and repeatable manner.

Recently I hit this issue in my day job, and found a neat way to set up a Jekyll build and deployment pipeline in VSTS.

## The Requirements

So, what I want is:

1. A way to avoid having to install Ruby, Jekyll and all of the other dependencies on my local machine **or** on any build machines/VMs
2. Something that will work with VSTS (because my markdown happens to live in a git repo within VSTS)
3. Something that will trigger a build and deployment each time a change is pushed to the git repo
4. Deployment to an Azure App Service once the build is complete
5. Use as little 3rd party stuff as possible (i.e. stuff that comes with VSTS "out of the box")

## Avoid installing Jekyll by using Docker images

In order to avoid having to install Jekyll at all, I've decided to go hunting for a Docker image that would do the job for me. I quickly found this project on GitHub...

<https://github.com/envygeeks/jekyll-docker>

... where three images are maintained:

- `jekyll/jekyll`: Default image.
- `jekyll/minimal`: Very minimal image.
- `jekyll/builder`: Includes tools.

The `jekyll/builder` image is exactly what I was looking for so that's the one I've been using.

<https://hub.docker.com/r/jekyll/builder/>

I'm suing the `jekyll/builder` image for my CI pipeline, but you can use the other images for local editing of your Jekyll site. I'm assuming you have Docker installed...because...well...you should.

Now that I had this image, all I needed to do was work out how to integrate it into a VSTS build pipeline.

## Jekyll Build in VSTS

TODO

## Deploying to an App Service

TODO

## Conclusion

Once I'd figured out the various parameters need in the build steps, what I'm left with is a very simple and easy to understand CI/CD pipeline that will build and deploy my Jekyll site. It's pretty simple, so I can reuse this setup across a number of sites.

[jekyll]: https://jekyllrb.com/
[martinpeck]: https://github.com/martinpeck/martinpeck.com
[githubpages]: https://pages.github.com/
[VSTS]: https://visualstudio.microsoft.com/team-services/