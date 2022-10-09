---
layout: page
permalink: /teaching/
title: Teaching
description: Materials for courses you taught. Replace this text with your description.
nav: false
nav_order: 4
---

{% assign teachingData = site.data.teaching %}

{% for entry in teachingData %}
<h3>{{entry.institution}}</h3>
{% for course in entry.course %}
<div class="card mt-3">
  <div class="p-3">
    <div class="row">
      <div class="col-sm-10">
        <h5 class="font-weight-bold">{{course.title}}</h5>
      </div>
      <div class="col-sm-2 text-left text-sm-right">
        {% if course.url %}
        <a href="{{course.url}}" target="_blank"><span class="badge font-weight-bold blue darken-2 text-uppercase align-middle" >
            {{course.code}}
        </span></a>
        {% else %}
        <span class="badge font-weight-bold blue darken-2 text-uppercase align-middle" >
            {{course.code}}
        </span>
      {% endif %}
      </div>
    </div>
    <h6 class="font-italic mt-2 mt-sm-0">{{course.years}}: {{course.position}}</h6>
    <ul style="list-style-type: circle;">
      {% for item in course.description %}
      <li style="padding-top: 1rem">{{item}}</li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endfor %}
{% endfor %}
