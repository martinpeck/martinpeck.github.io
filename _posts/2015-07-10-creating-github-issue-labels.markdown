---
layout: post
title:  "Creating Github Issue Labels"
author: mpeck
categories: [ blog ]

---

If you use GitHub Issues for tracking work and bugs, then you probably also use labels for categorizing or highlighting those issues. You might also use labels for applying some sort of workflow, such as highlighting which issues are ready to be worked on, in progress, or blocked.

I have a set of labels that I tend to use in all of my GitHub projects. Creating them by hand is a pain. So, to fix this, I've written a python script that does this for me...

[https://github.com/martinpeck/gh-issue-label-generator](https://github.com/martinpeck/gh-issue-label-generator)

The definition of what labels I want, and which colour to use for them, is described a `definitions.json` file. For example, here are the definitions I generally use...

{% highlight json %}
{
  "label" : [
    {"name": "bug", "color": "eb6420"},
    {"name": "enhancement", "color": "eb6420"},
    {"name": "question", "color": "eb6420"},
    {"name": "by design", "color": "fbca04"},
    {"name": "duplicate", "color": "fbca04"},
    {"name": "not repro", "color": "fbca04"},
    {"name": "wont fix", "color": "fbca04"},
    {"name": "low priority", "color": "207de5"},
    {"name": "important", "color": "e11d21"},
    {"name": "help wanted", "color": "159818"},
    {"name": "in progress", "color": "ededed"},
    {"name": "ready", "color": "ededed"},
    {"name": "blocked", "color": "000000"}
  ]
}
{% endhighlight %}

The script then does all the hard work for me.

It's a pretty dumb script at present, taking no account of labels that already exist - it'll fail to create the label if it already exists, and goes on to the next one. It will also leave any other labels alone. I may get around to changing some of these things...but don't hold your breath.

## Feedback

If you see a problem with the script, or have any suggestions for how it could be improved, then add something to the [issues on GitHub.com][list_of_issues].

[list_of_issues]:https://github.com/martinpeck/gh-issue-label-generator/issues
