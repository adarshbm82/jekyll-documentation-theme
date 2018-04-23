---
title: "Articles"
breadcrumb: article
layout: site/site-breadcrumb
---
## Existing Articles

<ul>
{% for contentPage in site.pages %}
  {% comment %} only show subpages {% endcomment %}
  {% if contentPage.url contains page.url and page.url !=contentPage.url  %}
    <li><a href="{{contentPage.url}}">{{contentPage.title}}</a></li>
  {% endif %}
{% endfor %}
</ul>
