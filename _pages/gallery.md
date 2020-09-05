---
layout: page
permalink: /gallery/
title: Gallery
description:
photos: [belize/1.jpg, belize/2.jpg, guozijian/1.jpg, guozijian/2.jpg, guozijian/3.jpg, guozijian/4.jpg,guozijian/5.jpg,guozijian/6.jpg,yosemite/1.jpg,yosemite/3.jpg,highway1/1.JPG,highway1/3.JPG, highway1/7.JPG, highway1/6.JPG, wuzhen/1.jpg, wuzhen/2.jpg,wuzhen/3.jpg,wuzhen/4.jpg,wuzhen/5.jpg,wuzhen/6.jpg,wuzhen/7.jpg,]
nav: true
---
<div class="row justify-content-sm-center">

{% for y in page.photos %}

  <div class="col-sm-4 mt-3 mt-md-0">
      <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/photography/' | relative_url }}{{y}}"  alt="" title="example image"/>
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
