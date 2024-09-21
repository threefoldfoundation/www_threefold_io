---
title: "Header"
insert_anchor_links: "left"
template: "partials/header.html"
extra:
  logoPath: "images/black_threefold.png"
  button_Path: "/images/gettft_node_2.png"
---

- [About]("/about")
- [Technology]("/technology")
- [Host]("/host")
- [Deploy]("/deploy")
- [Utilization]("/utilization") 
- Info


{% row() %}

<button class="dropdown" onclick="window.location.href='/newsroom'">

[Newsroom](/newsroom)
<br>
<p class="text-sm">Check the Latest Updates</p>

</button>

|||

<button class="dropdown" onclick="window.location.href='/blog'">

[Blog](/blog)
<br>
<p class="text-sm">Explore the Blogs</p>

</button>

|||

<button class="dropdown" onclick="window.location.href='/people'">

[Our People](/people)
<br>
<p class="text-sm">Team, stories, & more</p>

</button>

|||

<button class="dropdown" onclick="openInNewTab('https&#58;//manual.grid.tf/')">

[Documentation](https://manual.grid.tf)
<br>
<p class="text-sm">Explore the Documentation</p>

</button>


{% end %}
