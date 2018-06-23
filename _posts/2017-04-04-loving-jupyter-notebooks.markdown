---
layout: post
title:  I'm Loving Jupyter Notebooks
author: mpeck
categories: [ blog ]

---

I've become a big fan of the programming language Python, and have been using a number of tools to play around with the language. I'm also helping my son learn Python, and walking him through various coding illustrations.

I've tried a variety of tools and IDEs, including...

- IDLE
- The Python REPL within a terminal
- Geany IDE
- Visual Studio Code
- Sublime Text
- [repl.it](https://repl.it)
- [trinket.io](https://trinket.io/)

All of these options have their good and bad points, but the one I've really fallen for is Jupyter Notebooks, from <http://jupyter.org/>

## Why Jupyter?

I find that Jupyter is a great place to experiement with Python, but in a way that I can save and re-use those experiements. It has the casual stype of a REPL, but is document-centric so I can save my session. It also makes it really easy to take an experimentation session and augment it with comments and notes.

## Installing Jupyter

I would strongly recommend not using the visual installer for Jupyter. Instead, install it as any other package, within a virtual environment. I do this so that I can control exactly which version of Jupter, and any other dependencies, I'm using. I can also then commit those package requirements into git more easily.

Here's what I do:

1. Create a virtual environment in whatever way you normally do this (for me, that's `python3 -m venv venv` within the folder I'm going to store my notebooks)
2. Activate that venv, and then `pip install jupyter`

This will install Jupyter Notebook within your virtual environment.

3. `pip install` anything else you might want
4. Run `jupyter notebook` to start the local notebook webserver

At this point, your browser should open and you should be ready to go.

## Finally

I shall be sharing some notebooks in the near future. That's the other thing I love about Jupyter Notebooks; it's so easy to upload them to github.com and then either share them directy from there, or via the Jupyter website.