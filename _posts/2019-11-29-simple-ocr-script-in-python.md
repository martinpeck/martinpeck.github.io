---
layout: post
title:  Using Azure Cognative Services Computer Vision with Python to Extract Handwritten Text 
author: mpeck
featured: false
hidden: false

excerpt: To help my daughter convert a hand-written essay into an electronic format I wrote a Python script that uses Azure Cognative Services to extract text from handwriting.

---

The other day my daughter presented me with 4 pages of hand-written essay and said "Can you help me? I've written this essay, but I was supposed to do type
it up!". There are plenty of tools and services out there that can do this, but I decided to use the Computer Vision service that's part of Azure's Cognative Services.

My initial script was pretty scrappy, but it very quickly did the job and gave my daughter the text she needed. I've since tidied up the script, and added
a nice command line interface to make it easier to use.

<https://github.com/martinpeck/ocr_tool>

In order to use the tool you'll need to create an Azure account and set up Azure Cognitive Services.

<https://azure.microsoft.com/en-gb/free/services/cognitive-services/>

To show you what it does, here's an image with some text embedded within it:

![example image](/images/ocr-example.jpg)

Here's what happens when I run this tool against this image:

```bash
$ python main.py file --filepath images/example2.jpg
This is an example of some
text. I wonder if it will
get extracted perfectly
```
