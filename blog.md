---
title: Blog
permalink: /blog/
layout: page
---

<ul>
    {% for post in site.posts %}
    <li>
        <h2 class="post-title p-name"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
        <p class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</p>
        <p>{{ post.excerpt }}</p>
    </li>
    {% endfor %}
</ul>