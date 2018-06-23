---
layout: post
title:  Playing with axios (and Vue.js) - Part 2
author: mpeck
categories: [ blog ]
excerpt: A quick post related to axios and Vue.js (part 2)

---

*If you want to read Part 1, you'll [find it here][part1]*

The reason I'd started to play with [axios] was because I'd started reading some articles about [Vue.js] and how will axios worked with it. So, I figured the best thing to do was to create a small app, written using [Vue.js], that used axios to retrieve data.

The app allows you to enter the ID of a Pokemon, and it then retrieves some basic details and displays them. It's hardly rocket-science, but it's allowed me to play with a number of [Vue.js] concepts. I'm going to continue to add more features over time (to try out more of [Vue.js]).

* You can find the [source code on Github][source] at <https://github.com/martinpeck/pokemon-vue-er>
* An [instance of the app][app] is deployed to [Surge.sh] at the domain <https://pokemonvue-er.surge.sh>
* The api that this app calls is the [Pokemon API][pokemonapi], details of which can be found at <https://pokeapi.co/docsv2/#>

## Vue.js

I'm really impressed with [Vue.js]. I've recently been getting my head around React, and so this detour into [Vue.js] has come at a point where I'm still learning React. What's striking is how quick it is to get up and running with [Vue.js]. My app does hardly anything, but I was able to create a component-based app, with basic routing, in no time at all. I'm going to go back to my React tutorials soon, but I've really enjoyed being productive with [Vue.js].

## Surge vs GH-Pages
At first, I was going to deploy this app to GitHub pages. I'd found an npm package that helped with this, but I ran up against a couple of issues.

While trying get things working I read a post that recommended [Surge.sh], so I gave that a go. It is **SO EASY** to deploy to Surge, and so I ripped out the GH pages deployment and will be using [Surge.sh] for all of my future HTML/JS web apps.

## Conclusion

In the end, the use of [axios] in the app was pretty trivial. The learning curve required to get up and running with [axios] and [Vue.js] was very shallow, and I felt productive with both in a short amount of time. I'll be playing with both of these in the future.


[part1]: {{ site.baseurl }}{% post_url 2017-09-06-playing-with-axios-part1 %}
[Vue.js]: https://vuejs.org/
[axios]: https://github.com/mzabriskie/axios
[pokemonapi]: https://pokeapi.co/docsv2/#
[Surge.sh]: https://surge.sh
[app]: https://pokemonvue-er.surge.sh
[source]: https://github.com/martinpeck/pokemon-vue-er