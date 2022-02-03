---
layout: post
title:  Let's Rewrite Everything!
author: mpeck
categories: [ blog ]
featured: true
hidden: false
image: images/rewrite.jpg
excerpt: How to react when someone suggests rewriting everything. How to convince someone it's a good idea.
---

It's common in software engineering to find yourself in a situation where you suddently have the idea that "if I just rewrite all this code life will be SO much better". 

It often happens after you've been frustrated by a a set of bugs, or performance issues. It's also very common when you inherit someone else's code. 

Typical examples might be..

- "If I replace all of this Python code with Go it'll be SO much faster!"
- "We should replace our current web framework with this funky new web framework. It's so much better!"
- "Let's throw away all of this Powershell and replace it with Bash scripts"

(honestly...that last one about Powershell gets a free pass from me. Go for it!)

## Reasons for Rewrites

Replacing large parts of an existing code base is not a bad thing, and there are very often good reasons to do it.

Some of them include...

**Paying Down Massive Tech Debt**

Some projects get to a stage where everything is brittle, and bugs are hard to control. 
In these situations it might make sense to stop, rewrite stuff, and then move forward with a better base.

**You've Hit a Limit on User Experience or Functionality**

There are times when the features you want to add, or the user experiences you want to deliver, are just not possible with the current code base. You may have a design team asking for new features that you just can't deliver. This might be a good reason to rewrite.

**Lack of Support**

You may have a techology or framework at the heart of your project that is about to hit the end of its support window

## The Cost of a Rewrite

I'm sure there are plenty of other good reasons for rewrites, but in all cases it make sense to keep in mind the **Cost** of a rewrite. 

- What else would you, and your team, be doing if they weren't rewriting things? What new features are your *not* delivering? 
- How much does this change actually cost? In a large company, you might forget about the financial costs, but they're there. In smaller companies your rewrite will have a significant impact on ROI.

## How to Discuss your Rewrite

Whenever you approach others with the idea that "we should rewrite all this code" you need to consider a few things...

## Have a Good Reason

If you're going to convince people that this is a good idea, it better actually be a good idea. "I want to use the new hotness" isn't good enough. 

Frame your rewrite in terms of...

- the bugs it'll fix
- the performance gains, in the app, that it'll bring
- the productivity gains, in the team, that it'll bring

## Bring Facts, Not Opinions

Do some research. Gather real numbers.

- If your change will make the code faster, prototype the change first and bring the evidence.
- If your rewrite will fix a whole set of bugs then find evidence that this is the case
- If every developer on the team is fighting against the current code-base then can you put a number against that? Can you look at the recent bug fixes, or new features, and show how the current code-base made them harder to deliver? 

When discussing a rewrite, you need to show your working.

## Have a Plan

Bring a plan to these discussions. 

- What's the smallest change you can make that'll show the value of your re-write? 
- Can you start your rewrite while mainaing the current approach (i.e. can you avoid a "big bang" rewrite?)
- Is there a new feature, or a part of the system, that you can try this out on?
- Have you worked out the step-by-step plan for the rewrite?

Even if your plan has holes, having *something* that illustrates the what you'd approach the rewrite makes it easier for others to see the way forward.

## Present the Down Side

Someone is likely to point out all the problems your rewrite will bring. You'll find it much easier to convince people if you've already throught these through, and you bring them to the conversation yourself. You should list the downsides before they do.

Even if you don't have answers for these things, the fact that you have clearly thought about them will help others see this as a credible suggestion.

One of the downsides is time and cost. Bring your thoughts on....

- How long will this rewrite take? 
- How much churn will it generate? 
- What other work might it block?

... and **be honest** with these things. Present a pesimistic view of these downsides.

## Be Prepared For "No"

If you're suggesting a wholesale rip and replace of a major component, be prepared to hear people say "no". 

Don't get offended when someone pushes back. Don't react badly. You are going to be told "no" and so prepare yourself for that.

It's highly likely that the person saying "no" is they're worried about the things listed above. They're looking at your change and thinking "why do we need to do *this* when we've got so many other things to do?". 

They might see the issues you see. They may not feel the pain of the current code. If you've done a good job of presenting the facts then, hopefully, they'll have a better understanding of why you want to rewrite things, but they may also just need time.

Be prepared for "no", listen to the feedback, build a better case for your rewrite, and try again later. 

## Be Worried about an Easy "Yes"

If you suggest a rewrite and instantly get an easy "Yes...DO IT!" then stop. Make sure everyone understands what you're suggesting. Don't plough into the rewrite only to get half way through and have the rest of the team ask "what the hell are you doing!?!"

A rewrite shouldn't get an easy pass. If it does then, potentially, no one understands what you're suggesting. It's worth double checking.

# Finally...

Good luck with your rewrite! I'm sure it'll be everything you hope it'll be. It'll probably be finished *way* quicker than you expect, and life will be perfect afterwards. 

Have fun!







