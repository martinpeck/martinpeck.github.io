---
layout: post
title:  "plinky - A Short URL Service in Python"
date:   2015-07-11 00:00:00
excerpt: I got fed up with bit.ly and wrote something of my own.
category: blog
---

[https://github.com/martinpeck/plinky](plinky)

I recently got frustrated with bit.ly as a url shorter. If you've ever used bit.ly then you'll know it has some limitations when it comes to generating meaningful short urls...

Your short url hash needs to be globally unique across the whole of bitly's service. This means that if someone has already used `bit.ly/cake` then no one else can use it...even if you use a custom domain.

The hash is the bit that appears as the path of the url. Bit.ly will create one of these for you, but you can customize it to make it more meaningful/readable. However, these hashes need to be globally unique across bit.ly, so if someone has taken the hash you want you're stuck - this is especially annoying if you're using a custom domain with bit.ly.

[plinky]:(https://github.com/martinpeck/plinky)
