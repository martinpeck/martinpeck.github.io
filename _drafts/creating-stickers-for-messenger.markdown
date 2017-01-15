I enjoy drawing cartoon characters, and my recent purchase of an iPad Pro with Apple Pencil meant that I spent a good deal of time over the Christmas break drawing.

At the same time, my kids have started using their iPhones and, in particular, the Messages app (iMessage) to send me texts, photos and to play turn-based games.

[INSERT IMAGE]

So, I figured I'd see how easy it is to take some of my drawings, package them up into an iMessage sticker application, and publish it on the iOS App Store.

TL;DR: once you've fought with XCode and got it set up correctly, and once you're a paid up Apple Developer, it's actually pretty simple. The set-up, however, isn't as well documented as you might like.

## What are iMessage Sticker Apps?

Within the latest versions of iOS is it possible to apply stickers to your iMessage conversations. These stickers might be used as photos (e.g. they appear with text below them, just like when you share a photo) or they can be stuck onto the conversation, or onto other photos.

[INSERT IMAGE]

iMessage exposes a special area of the AppStore, called the iMessage Store. This allows iOS users to purchase/download iMessage Sticker packs.

[INSERT IMAGE]

An iMessage Sticker Pack has one or more images in it. These images can one of three standard sizes, described in [Apples HIG documentation](http://), and can either be static or dynamic. Generally, stickers have a transparent background to allow them to be stuck over other content.

Within XCode 10 there is an option to create an iMessage Sticker Application. This will create a new project that contains all you need to create a sticker pack. These projects are code-less. They simply contain the metadata and resources that can be compiled into an archive that can be uploaded to the AppStore.

The steps to creating an iMessage Sticker pack, and getting it published are as follows:

1. Pay for an Apple Developer Account.
2. Install and setup the latest version of XCode
3. Create your new iMessage Sticker App project
4. Import your stickers
5. Create the App Icons
6. Create an App on iTunes Connect
7. Archive and Upload your app to iTunes Connect
8. Create the store images for your sticker app
9. Submit for Review

Let's go into detail on these steps

## Step 1 : Pay for an Apple Developer Account.

You're going to need one of these at some point, and many of the problems I encountered related to certificates, provisioning profiles and App Bundle IDs were all caused by starting off with a local/free developer profile, and then trying to convert my project over to my official Apple Developer account.

If you're just playing around with no intention of ever publishing your sticker pack, you can get away with a free account. However, if you're building a sticker pack  you might one day want to publish, get on and pay for an official Apple Developer account before you start.

Converting my first project from "free" to "paid" profile was a massive pain, and very poorly documented. I would probably have been better off starting a brand new XCode project, with a totally new name/Bundle ID etc.

## Step 2 : Install and setup the latest version of XCode

Before you get started, I recommend you get the latest version of XCode installed. At the time of writing, I'm using XCode Version 8.2.1 (8C1002).

## Step 3 : Create your new iMessage Sticker App project

Upon opening XCode you are given the choice of opening an existing project or creating a new one. Create a new one, and then select Sticker Pack Application as the type of project.

[INSERT IMAGE]

**I then got tripped up by picking the wrong values in the next stage. In fact, it caused me hours of research, dead ends and a support call.**

You have to pick a Team when creating your new project. If you've already signed in to XCode, and if you've signed up as an Apple Developer, you'll probably have two entries in this list...

* One of them is your Apple Developer team
* The other is a "free" developer account

You need to pick the Apple Developer team if you want any chance of publishing your stickers. If you pick the other one you'll end up with the App Bundle ID (the unique ID that identifies your application) being unavailable when publishing.

Now, for me, that list includes the following items...

* Martin Peck
* Martin Peck (Personal Team)

... and I couldn't find *anything* online to tell me which of these was which. I picked the wrong one, and then had all sorts of problems with my sticker app later.

I also asked Apple Support, who also told be the *wrong one*.

The one with the (Personal Team) suffix is the free one, so (for me) I need to pick the `Martin Peck` team and NOT the `Martin Peck (Personal Team)` one.

If you pick the right team, everything after that is easy.

## Step 4 : Import your stickers

You now have a new Sticker Pack Application. You now need to import your stickers (the images for your stickers). There's a decent video on the Apple Developer site that shows you how this part is done

<https://developer.apple.com/stickers/>

## Step 5 : Create the App Icons

Other than creating your stickers, you also need to create a number of app icons for your sticker pack. Doing this is a pain, as you need to create 12 icons of various sizes. I've scripted this to make my life easier.

I draw all of my stickers at 1024x1024 and then resize them down to 408x408 (the size of a regular iMessage sticker) and so I pick one of these stickers and use it as the base for my app icons.

I then use the following script to resize that icon to all the sizes I need:

<https://gist.github.com/martinpeck/6904db7a81fb84d6ef42ccdc8af19294>

You'll notice there are a couple of aspect ratios here, and that this script takes the square sticker and places it centrally on a white background. This might not work for your stickers, but for me it's good enough.

## Step 7 : Create an App on iTunes Connect

Once you've built and tested your stickers locally on the Simulator, and (ideally) on some real hardware, it's time to upload your app to iTunes Connect.

The first thing you need to do is go iTunes Connect <https://itunesconnect.apple.com> and create a new application.

When you do this you're asked for the Bundle ID. First, you need to select the provisioning profile, and then supply a Bundle ID. Assuming you've gone with all the defaults, and assuming you picked the correct Team in Step 3, then you need to supply the following:

1. XC Wildcard as the provisioning profile
2. Supply the exact Bundle ID you entered when you created the application.

Once you've saved this, you're read to upload your app.

## Step 8 : Archive and Upload your app to iTunes Connect

Within XCode, you need to Archive your project build.

[INSERT IMAGE]

Once you've created an archive, you can then upload it to the App Store. A number of checks will be made at this point (e.g. you need to have all of those app icons in place). The upload process will also check that the Bundle ID of the app you're uploading matches the Bundle ID you defined in iTunes Connect.

Assuming everything has worked, your app will now take a little while (10 to 15 mins, in my experience) before it is available on iTunes Connect.

## Step 9 : Create the store images for your sticker app

This is the part of the process that then, for me, takes almost as long as everything else. In order to market your stickers you need to create a number of images for the App Store. You need at least 1 image for the App Store on iPhone, 1 for iPad, and 1 for the iMessage store. Personally, I find that I end up creating 3 for each, and have created some templates that I use to make this process easier.

You also need to supply other metadata to support your App Store pages.

Creating these images, and the data to go with them, can take some time.

## Step 10 : Submit for Review

You're ready to submit your app for review! Yay!
