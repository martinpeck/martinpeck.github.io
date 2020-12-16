---
layout: post
title:  Using AutoComplete for Azure DevOps Pull Requests
author: mpeck
categories: [ blog ]
featured: false
hidden: false
excerpt: When should you use the auto-complete feature of Azure DevOps to automatically merge your pull request? In my opinion...less often than I see it used.
---

Azure DevOps has a really neat feature that allows the author or a pull request, or any of the reviews of the PR, to mark the pull request as "auto-complete".

This means that as soon as any other policies are marked as complete, the change will get auto-merged into the main branch. The usual list of things that need to happen before a PR gets auto-completed include:

- no merge conflicts detected
- the CI build has completed successfully
- if you've set a minimum number of approvals, that number has been met
- any comments left by reviewered have been resolved

Once all of the PR requirements are met, Azure DevOps will then automatically merge the changes and close the PR.

This is really useful in speeding things up, and prevents PRS that are approved, and ready to merge, from sitting there blocking other work. So, a really useful feature.

Personally, as an author of PRs I generally set auto-complete in the following situations:

1. My Pull Request is "trivial" (e.g. a doc update)
2. My Pull Request is in an area of the code that isn't going to impact anyone else (i.e. the risk of something getting auto-merged is very low)
3. I've had some initial comments, and maybe had 1 approval already, so I have a high confidence that the PR looks good

In other words, I tend to use it only when the risk of something going wrong is very low, either because of the nature of the PR or because I've already had feedback from others that it looks good.

The other time I tend to use auto-complete is when I'm the main person reviewing the PR. I'll review the code, makes some comments, approve the PR "with suggestions" and then switch the PR to auto-complete. 
I see this as a strong signal to the PR author that their code looks good, and assuming they address my comments it's good to go.

HOWEVER, too often I see PR authors set autocomplete as a way to "fire and forget" their PR, often for complex pull requests, or for PRs where feedback on the code, or the approach, are likely.
Developers should never just throw their PRs "over the wall" and hope they get merged. It's important to see your PRs through the entire process, and this is especially true of large/complex PRs.

So. my guidance on using auto-complete is therefore:

- If you're a PR author, set auto-complete when you publish the PR **only** if the PR is trivial or clearly safe to merge. Explain why you feel this is the case in the PR description.
- As the author, feel free to see auto-complete on more complex PRs when you've had some feedback and/or approvals, and have a high confidence that the PR is in good shape.
- As a reviewer of a PR, set auto-complete as part of your approval process as a signal to the PR author that the PR looks good and can be merged when comments are resolved.

