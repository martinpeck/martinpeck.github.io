---
layout: post
title:  "Stop Skype for Business (on MacOS) from Playing a Login Sound"
date:   2018-06-26 00:00:00
excerpt: How I stopped Skype for Business, on my Mac, from playing that really annoying "whoosh" sounds when it starts up.
author: mpeck
category: [blog]

---

If you're in a meeting, and you open your laptop, the last thing you want is a bunch of start-up sounds playing and drawing attention to you. That's *exactly* what happens whenever I open Skype for Business (s4b) on my MacBook.

For some reason, the option to "not play sounds when you start up" is missing from the MacOS version of s4b, and there's been a [UserVoice request for this open for a while now (*please* go and vote on it!)][uservoice]

For now, I've come up with a workaround. First, here's the health warning:

* What I'm about to describe here is not supported, or even recommended.
* This work around might cause other problems now, or in the future
* This work around might not work on your machine (it works on mine, and that's all the testing I've done)
* Your files and folder names may differ from mine.
* You will need admin access to your machine do to this
* In fact, I encourage you **not** to do any of this. Seriously... stop reading, [vote on the UserVoice ticket][uservoice], and put up with the annoying noise!

Here's what I did...

1. Opened Finder and pressed `Cmd+Shift+G` and navigate to `/Applications/Skype for Business.app/Contents/Resources/sounds/`. This is where the sound files used by s4b live on my MacBook Pro.
2. I discovered that if you delete these files, s4b will crash on startup (of course) so I first duplicated `SFB_Login_01.m4a` (just in case I needed it back) and then opened the original `SFB_Login_01.m4a` in QuickTime Player
3. I used the `Edit | Trim...` menu in QuickTime Player to edit the sound file and trimmed it down to the last few ms of "silence"
4. I saved this file, and launched s4b...

**SILENCE!** YAY!

[uservoice]: https://www.skypefeedback.com/forums/299910--recently-released/suggestions/32559769-login-sound
