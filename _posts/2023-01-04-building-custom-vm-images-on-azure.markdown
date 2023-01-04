---
layout: post
title:  Building Custom VM Images on Azure
author: mpeck
categories: [ blog ]
featured: true
hidden: true
image: images/customvm/process.png
excerpt: I've written some scripts that helped me build customer VM images for Azure. You might find them helpful.
---

Recently I found myself having to define, and build, some custom virtual machine definitions on Azure. The reason I needed to do this was so that I had some custom Linux and Windows VM images that had certain tools and config pre-configured. 

This was a new experience for me, and while I found the documentation and samples pretty useful there's a lot of copy/pasting and not a lot of scripted, repeatable stuff. I wanted something that was simple to drive, repeatable, and prescriptive.

So, I wrote something for myself.

After reviewing the docs (most of which are listed below) I set about writing a collection of reusable bash scripts, and driving them from a Makefile.

The result is a sample repository on GitHub that allows me to...

1. set up the core infrastructure needed to create custom VM image templates and publish them to an Azure Compute Gallery
2. define and deploy the various images/versions/templates that Azure requires
3. build the custom VM images, using Azure Image Builder, and publish them to Azure Compute Gallery

... so that I can now more easily focus on the actual VM template customisation, and not have to remember the dozen or so Azure CLI commands for setting up the infrastructure or deploying my templates to Azure.

My sample project (note: it's a SAMPLE...it might not work, it's not production-ready, and it's certainly not to be considered "best practice") can be found on GitHub:

<https://github.com/martinpeck/custom-vm-sample-toolkit>

If it's useful to someone other than me...YAY! 

If not, well YAY anyway because it helped me.

Oh, and Happy New Year!

## Some Bedtime Reading

Here are some useful links/docs if you're thinking of playing with customer VM images in Azure:

- [Azure VM Image Builder overview](https://docs.microsoft.com/en-us/azure/virtual-machines/image-builder-overview?tabs=azure-cli)
- [Azure Image Builder Quickstarts - GitHub](https://github.com/azure/azvmimagebuilder)
- [Create a Linux image and distribute it to an Azure Compute Gallery](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/image-builder-gallery)
- [Create a Windows image and distribute it to an Azure Compute Gallery](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/image-builder-gallery)
- [Example VM Image Template](https://github.com/Azure/azvmimagebuilder/blob/main/quickquickstarts/1_Creating_a_Custom_Linux_Shared_Image_Gallery_Image/helloImageTemplateforSIG.json)
- [Sharing Images in an Azure Gompute Gallery](https://docs.microsoft.com/en-us/azure/virtual-machines/shared-image-galleries?tabs=azure-cli#sharing)
- [Copy Azure Compute Gallery Image Versions between Azure Clouds, Tenants, and Subscriptions](https://techcommunity.microsoft.com/t5/fasttrack-for-azure/copy-azure-compute-gallery-image-versions-between-azure-clouds/ba-p/3373145)
- [Azure VM Image Builder networking options](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/image-builder-networking)

