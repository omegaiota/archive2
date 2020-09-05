---
layout: page
title: Algorithmic Quilting Pattern Generation for Pieced-Quilts
description: Individual research project at CMU that generates quilting patterns, 2017-2019
img: /assets/projects/quilt/categorization.png
importance: 2
---

This is my undergraduate research project from May 2017 - March 2019. The project was presented at the poster session of **2018 ACM Symposium on Computational Fabrication** at MIT in in June 2018. The project was published at **Graphics Interface 2019** at Queens University in May 2019. I was advised by [Prof. Jessica Hodgins](https://www.cs.cmu.edu/~jkh/), [Prof. Jim McCann](http://www.cs.cmu.edu/~jmccann/) and [Prof. David Breen](https://www.cs.drexel.edu/~david/) for this project.

## Abstract
Free-motion quilting patterns are functional and decorative patterns
sewn on pieced quilts using a single-line continuous stitch path
for each region of the quilt. Seven families of quilting patterns
are commonly used by quilters [3]. We present an approach for
computationally generating three of these families. The user can
control the design for each family based on a set of parameters,
including the density and general layout of the pattern as well as the
decorative elements. Our algorithm starts by sampling a point set
in a designated region, generates a skeleton path over that set, then
inserts decorative elements along the skeleton. We provide digital
and quilted examples for each type of pattern.


## Fabricated Results
<div class="row justify-content-sm-center">
    <div class="col-sm-6 mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/quilt/full_quilt_1_warped.jpg' | relative_url }}" alt="" title="example image"/>
    </div>
    <div class="col-sm-6 mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/quilt/full_quilt_2_warped.jpg' | relative_url }}" alt="" title="example image"/>
    </div>

    <div class="col-sm-6 mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/quilt/full_quilt_3_warped.jpg' | relative_url }}" alt="" title="example image"/>
    </div>

    <div class="col-sm-6 mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/quilt/full_quilt_3_back.jpg' | relative_url }}" alt="" title="example image"/>
    </div>
</div>
<div class="caption">
    Fabricated results using algorithms from the paper.
</div>


# Full Paper
[Link to GI2019's website](http://graphicsinterface.org/proceedings/gi2019/gi2019-13/){: .btn}
<object data="https://omegaiota.github.io/assets/pdf/gi2019-13.pdf" type="application/pdf" width="800px" height="300px">
  <embed src="https://omegaiota.github.io/assets/pdf/gi2019-13.pdf">
  <p>This browser does not support PDFs. Please download the PDF to view it: <a href="https://omegaiota.github.io/assets/pdf/gi2019-13.pdf">Download PDF</a>.</p>
  </embed>
</object>



# Talk
  Below is my presentation of the project at **Graphics Interface 2019**.
  <object data="https://omegaiota.github.io/assets/projects/quilt/GI2019-final-no-notes.pdf" type="application/pdf" width="800px" height="500px">
    <embed src="https://omegaiota.github.io/assets/projects/quilt/GI2019-final-no-notes.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="https://omegaiota.github.io/assets/projects/quilt/GI2019-final-no-notes.pdf">Download PDF</a>.</p>
    </embed>
</object>

## Citation
    {% raw %}
    @inproceedings{Li:2019:10.20380/GI2019.13,
     author = {Li, Yifei and Breen, David E. and McCann, James and Hodgins, Jessica},
     title = {Algorithmic Quilting Pattern Generation for Pieced Quilts},
     booktitle = {Proceedings of Graphics Interface 2019},
     series = {GI 2019},
     year = {2019},
     issn = {0713-5424},
     isbn = {978-0-9947868-4-5},
     location = {Kingston, Ontario},
     numpages = {9},
     doi = {10.20380/GI2019.13},
     publisher = {Canadian Information Processing Society},
     keywords = {quilting, pattern generation, spanning tree, texture generation, ornamentation, line drawing, continuous line drawing},
    }
    {% endraw %}
