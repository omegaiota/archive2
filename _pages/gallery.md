---
layout: page
permalink: /gallery/
title: Gallery
description:
photos: [highway1/1.JPG, yosemite/1.jpg, highway1/3.jpg, highway1/7.jpg, highway1/6.jpg,  belize/1.jpg, belize/2.jpg, guozijian/3.jpg, guozijian/4.jpg,guozijian/5.jpg,guozijian/6.jpg, wuzhen/4.jpg, wuzhen/5.jpg, wuzhen/6.jpg, winter19/17.JPG, wuzhen/1.jpg, wuzhen/2.jpg, wuzhen/3.jpg,  wuzhen/7.jpg, winter19/1.JPG, winter19/2.JPG,  winter19/4.JPG, winter19/5.JPG, winter19/15.JPG, winter19/16.JPG, winter19/6.JPG, winter19/7.JPG, winter19/8.JPG, winter19/9.JPG, winter19/10.JPG, winter19/11.JPG, winter19/12.JPG, winter19/13.JPG, maldives/1.JPG, maldives/2.JPG, maldives/3.JPG,]
nav: true
---

<div class="row justify-content-sm-center">

{% for y in page.photos %}

  <div class="col-sm-4 mt-3 mt-md-0">
      <a href="{{ '/assets/img/photography/' | relative_url }}{{y}}"><img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/photography/' | relative_url }}{{y}}"  alt="" title="example image"/></a>
  </div>


{% endfor %}
</div>


<!--
<div class="publications">

{% for y in page.photos %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div> -->
