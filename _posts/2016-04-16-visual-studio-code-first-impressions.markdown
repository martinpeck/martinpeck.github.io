---
layout: post
title:  Visual Studio Code - First Impressions
author: mpeck
categories: [ blog ]

---

After listening to a number of recent podcasts related to [Visual Studio Code](https://code.visualstudio.com/), and then seeing it hit it's 1.0 offical release, I figured I'd give it a go.

I've been using [Sublime Text 3](https://www.sublimetext.com/3) for most of my development and text editing needs for a long time. I've tried Atom (which, at the time, was a little too buggy in places and slower than ST) and recently I've tried to stear clear of fully featured IDEs.

Before that, I worked for Microsoft for 10 years and spent all of my time in the full version of Visual Studio. Visual Studio is a fantastic IDE - one of the most powerful available - but most of my work right now is on a non-MS tech stack, using a MacBook for development, so I've not had many reasons to use VS.

So far, I'm pretty impressed with VS Code. The editor starts up nice and quickly, the git support looks pretty neat, and for markdown editing (which is what I'm doing right now as I write this post) the support for markdown and previewing the output is pretty good. I even managed to get it to build my site using Jekyll so that Cmd+Shift+B will kick off `jekyll serve`.

Many of the keyboard shortcuts that I use in Sublime Text work in Code too, so I'm also not having to learn too many new tricks.

I'm going to see how it does with Ruby and Python development, and will report back.

For now, though, I'm pleasantly surprised.

Oh, and if you want to know how I got my jekyll build to work, here's what I did...

- using VS Code, type Cmd+Shift+P to get access to the command list
- type "task" and select the option to configure the task runner
- you will be given some options. Select the one for a custom task.
- VS code will create a file `.vscode/tasks.json`
- Set up the task you want to run here. Mine looks like this...

{% highlight json %}
{
  "version": "0.1.0",
  "command": "jekyll",
  "isShellCommand": true,
  "args": ["serve"],
  "showOutput": "always"
}
{% endhighlight %}