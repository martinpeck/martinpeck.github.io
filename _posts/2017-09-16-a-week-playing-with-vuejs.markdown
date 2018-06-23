---
layout: post
title:  A Week Playing with Vue.js
author: mpeck
categories: [ blog ]
excerpt: A round-up of my week playing with Vue.js, building some basic websites.

---

I've spent the last week playing with [Vue.js] and associated modules. I have to say...I'm impressed with how quickly and easily I've been able to throw together some little web apps.

If you're interested in what I've done, here's the summary:

## Pokemon-Vue-er: *a Pokemon Search app*

This was my first experiement into Vue.js, and I've already blogged about it [here][part1] and [here][part2].

The app makes use of [axios] to make API calls to a Pokemon API, and Vue.js to render the results.

- the code: <https://github.com/martinpeck/pokemon-vue-er>
- the app: <https://pokemonvue-er.surge.sh>

![Pokemon Vue-er](/images/vue-apps/pokemon-vue-er.gif)

## Vuex-Notes-App: *a Notes app that uses Vuex for state management*

I started following a tutorial to build a notes app in Vue.js that used Vuex (the flux library build for Vue.js) and quickly realised it was written for Vue/Vuex version 1.x. I decided to keep going, using the basic structure of the app, but to write it
in the latest versions of Vue/Vuex.

- the code: <https://github.com/martinpeck/vuex-notes-app>
- the app: <https://vuex-notes-app.surge.sh>

![Vuex Notes App](/images/vue-apps/vuex-notes-app.gif)

## Vigenere-App: *encode and decode text usign the Vigenere Cipher*

This app allows you to encode and decode text using the Vignere Cipher (a series of Ceaser ciphers). I build this app after a conversation with my daugher about a book she's reading.

- The code: <https://github.com/martinpeck/vigenere-cipher-app-app>
- The app: <https://vigenere-app.surge.sh>

![Vigenere App](/images/vue-apps/vigenere-app.gif)

## Conclusion
I've particularly enjoyed using Vue.js...a joy that I've yet to experience with React. It's been easy to get my head around, and has allowed me to get on and build things. If you've not had a chance to play with Vue.js yet, I'd recommend giving it a go.

Other things I've discovered this week include:

- Surge.sh is a fantastic way of showcasing front end code
- Vuex, as a mechansim for managing state in apps, makes a lot of sense and was easy to get up and running
- axios exposes a very clean API for making, and processing, HTTP requests
- I still like Python more than Javascript...but ES6 goes a long way to making JS a bit better

[Vue.js]: https://vuejs.org/
[axios]: https://github.com/mzabriskie/axios
[Surge.sh]: https://surge.sh

[part1]: {{ site.baseurl }}{% post_url 2017-09-06-playing-with-axios-part1 %}
[part2]: {{ site.baseurl }}{% post_url 2017-09-08-playing-with-axios-part2 %}
