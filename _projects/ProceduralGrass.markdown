---
layout: page
title: Procedural Grass in Call of Duty
description:  A procedural grass system that I implemented for Call of Duty Black Ops 4 [Internship, Summer 2018]
img: /assets/img/grass.png
importance: 2
---

I interned at Activision's office in Portland, Maine (ACME) in Summer 2018 and implemented a procedural grass system for [Call of Duty : Black Ops 4](https://www.callofduty.com/blackops4)'s battle royale mode. Procedural grass is shipped with BO4 across all platforms in October 2018.



<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/grass/down-Lake 1.png' | relative_url }}" alt="" title="example image"/>
    </div>
</div>
<div class="caption">
    Rendered procedural grass in game.
</div>


<div class="row justify-content-sm-center">
    <iframe class="rounded z-depth-1"  width="560" height="315" src="//www.youtube.com/embed/FXXzZuo9TPc" frameborder="0"> </iframe>

</div>
<div class="caption">
    A demo video that showcases the LOD transition, color cache and parameterization of the grass, among other things that I implemented.
</div>


# Why Procedural Grass?
  As opposed to static grass where a grass texture is applied on a "card-like" model, procedural grass is fully programmed and rendered as a collection of triangles. Procedural grass is flexible in its look, and have huge potentials in improving the rendering time, which is crucial in a FPS game like COD. The deployment of grass in game is also fully programmed, so that artists don't need to place static grass models in game one-by-one. Advanced animations on grass, such as swinging or burning also become a possibility.

# Super Terrain System
  The procedural grass system is implemented as a sub-system inside the super terrain system of this COD blackout engine. This allows grass-related computations to take-advantage of the terrain information underneath. For example, the color of the grass can be dynamically determined according to the terrain type. On a lawn the grass can be green, whereas near a gravel field grass can adopt a less vibrant color to match the atmosphere.   

# Geometric Representation
 Each grass blade is represented using a collection of triangles. There are three level of details for grass blades. The highest LOD has blades made up of 7 vertices, followed by LOD 1 with 5 vertices and LOD 2 with 3 vertices.

 <div class="row justify-content-sm-center">
 <img class="img-fluid rounded z-depth-1" src="{{ '/assets/projects/grass/bladeLod.svg?sanitize=1' | relative_url }}" alt="" title="example image"/>
</div>

Different LOD levels are used depending on the grass blade's distance to the camera to save performance. Near camera, LOD 0 is used to provide best visual look. Higher LOD levels kick in as distance increases since the grass blades occupy much less space (even less then a pixel) on screen.

# Vertex Data
 To give grass a randomized look, each grass blade is attached with some random numbers generated on CPU during buffer initialization. Two of these random numbers are used to determine grass's position in the underlying terrain tile. The remaining five random numbers are used to vary grass blade height, width and bend. In the first implementation, these numbers are copied for vertices on the same blade. During optimization phase, These random numbers are moved to a byte buffer to save space usage.

# Sliding Grass Vertex / Index Buffer
To have a smoothly blend the three LOD levels together, we can't use a hard cutoff threshold for LDO transitions, since it creates two visible grass quality degrade on screen.

Instead, a sliding grass vertex buffer is used to seamlessly blend the three LOD levels. The sliding buffer is a buffer with mixing LOD grass blade data with a higher percentage of LOD0 grass blades at the beginning and LOD3 grass blades at the end. A sliding window is used to determine grass blade type for each grass patch. The head of the buffer is used if the patch is close to camera, and vice versa.

# Grass Draw Emit
  During the quad tree traversal of the super terrain, a terrain tile draw is followed by a grass draw. View frustum culls are performed to avoid submitting grass patch that are not in view, which saves performance. Each grass draw corresponds to a grass patch on a terrain tile.

# Grass Color Cache
  Each grass blades repeats the color computation of the underlying super terrain to match the atmosphere of the environment. However, because each grass vertex of a blade is independently processed on the GPU, the same computation is repeated for all the vertices on a blade. And since nearby grass blades usually adopt the same color, the computation waste is even larger. To save the computation, a grass color cache is computed at the beginning of each frame, which samples a low resolution of the terrain color in camera. Grass vertices can then directly sample from this texture. Since grass color computation is the most computation-intensive part of procedural grass, this brings a huge performance gain to the module.

  Even better, the computation of the grass color texture has room for optimization. Note that when a user moves, only the peripheral part of the camera has scene changes, and a huge portion of the previous frame computation can be re-used. Using a special coordinate system trick, this optimization was succesfully realized.
