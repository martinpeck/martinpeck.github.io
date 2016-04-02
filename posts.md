---
layout: page
title: Blog Posts
---
<ul>
{% for post in site.posts %}
      <li><a href="{{post.url}}">{{post.date | date_to_string}} - {{post.title}}</a></li>
      <div>{{post.excerpt}}</div>
{% endfor %}
</ul>
