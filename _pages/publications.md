---
layout: page
permalink: /publications/
title: Publications
description: 
years: [2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013]
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->

<div class="publications">
<h2>Journal Papers</h2>
{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}} && keywords=journal-paper]* %}
{% endfor %}

<h2>Conference Papers</h2>
{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}} && keywords=conf-proc]* %}
{% endfor %}

<h2>Conference Presentations</h2>
{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}} && keywords=conf-pres]* %}
{% endfor %}

<h2>Theses</h2>
{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}} && keywords=thesis]* %}
{% endfor %}

</div>
