---
layout: post
title:  Playing with axios - Part 1
author: mpeck
categories: [ blog ]
excerpt: A quick post related to axios, a javascript library for async http requests

---

It's often the case that I start doing one thing and end up falling down a rabbit hole of interesting articles. Today, I was reading an e-mail from [Codeship], and ended up reading through an article on their site [Consider VueJS for Your Next Web Project](https://blog.codeship.com/consider-vuejs-next-web-project).

At the end of that article I spotted recommendation that axios was the recommended way to make http requests within [Vue.js], and so it was that I spent this morning having a quick play with [axios].

[axios] is a really clean way of making http requests, and I was pretty impressed with how easily I could get a simple [CodePen.io page up and running][codepen]. I didn't need anything other than the README.md on the [axios] GitHub repository to get something up and running.

My [Codepen example][codepen] makes use of the [Pokemon API][pokemonapi]...my goto free API if I want to try something out. It's sets up some base url config, makes a GET request for a specific pokemon, and then writes some stuff to the console.

<p data-height="532" data-theme-id="0" data-slug-hash="wKyNdz" data-default-tab="js" data-user="martinpeck" data-embed-version="2" data-pen-title="axios - simple pokemon api example" class="codepen">See the Pen <a href="https://codepen.io/martinpeck/pen/wKyNdz/">axios - simple pokemon api example</a> by Martin Peck (<a href="https://codepen.io/martinpeck">@martinpeck</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>

It's hardly the most comprehensive example of [axios] in action, but I hope you can see how simple it is to use [axios] and how readable the code looks.

I'll be playing with this more in the future.

[Vue.js]: https://vuejs.org/
[axios]:https://github.com/mzabriskie/axios
[Codeship]:https://codeship.com
[codepen]: https://codepen.io/martinpeck/pen/wKyNdz
[pokemonapi]: https://pokeapi.co/docsv2/#