---
layout: post
title:  Using Message Headers to build Inbox Rules for Azure DevOps Notifications Emails
author: mpeck
featured: false
hidden: false

excerpt: If you're drowing under notification e-mails from Azure Devops, and want to build some Inbox rules to manage things, then there are some useful message headers you can use for routing.

---
If you're drowing under notification e-mails from Azure Devops, and want to build some Inbox rules to manage things, then there are some useful email headers you can use for
routing messages with your inbox rules.

I get notifications from a number of Azure DevOps projects, and while it's possible to use the email Subject to build Inbox rules, I discovered that each of these
emails carries a number of customer headers that can make it easier to build these rules.

I've yet to find any official docs that describe these headers, but here's what I've found.

Each notification email carries headers like these (the values here are ones I've made up, but are representative of the real thing)...

``` text
X-VSS-Scope: my-devops-org/MyAzureDevOpsProject/my_awesome_repo
X-VSS-Event-Type: ms.vss-code.git-pullrequest-event
X-VSS-Subscription-ID: ms.vss-code.pull-request-updated-subscription
X-VSS-Event-Initiator: Martin Peck
X-VSS-Event-Initiator-Ascii: Martin Peck
X-VSS-Event-Trigger: StatusUpdateNotification
```

The `X-VSS-Scope` header is the most useful one. It appears to have the format `org/project/repo` for notifications such as pull request updates.
Using the `org` and `project` parts of this header I'm able to move e-mails into folders based upon those paramters.

The other headers describe the type of notification, who initiated the notification, and what triggered it.

If you want to see the headers yourself you need to look at the full email message details.
The way you do this really depends upon the email client you're using, but if you're using Office365 then
the web client (i.e. outlook.office365.com) provides a menu item called "View message details" when you click on the "..." three dots menu for a given
email.

![](/images/azdo-emails/message-headers.png)

In AirMail (on the Mac) it's called "Show raw source" and appears on the application's `View` menue.

As I say, I can't find any decent docs on these headers, but I did find this post from November 2018...

<https://developercommunity.visualstudio.com/solutions/393888/view.html>

> The project information is available in the X-VSS-Scope header of each email. If you're using the project information to filter emails the best solution would be to use these headers. The following email headers can be useful for filtering.
>
> ``` text
> X-VSS-Scope:
> X-VSS-Event-Type:
> X-VSS-Subscription-ID:
> X-VSS-Event-Initiator:
> X-VSS-Event-Initiator-Ascii:
> X-VSS-Event-Trigger:
>```
>
> We'll be adding a "How-to" to the customer documentation that describes how these headers can be used for email filtering but it has not been published yet. But you can examine any of your current email and see these headers and their values.