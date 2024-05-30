---
title: "Header"
insert_anchor_links: "left"
template: "partials/header.html"
extra:
  logoPath: "images/black_threefold.png"
  button_Path: "/images/gettft_white.png"
---

- [About]("/about")
- [Deploy]("/deploy")
- [Host]("/host")
- [Utilization]("/utilization")
- [TFT]("/tft")
- Info


{% row() %}

<button onclick="window.location.href='/newsroom'">

[Newsroom](/newsroom)
<br>
<p class="text-sm">Check the Latest Updates</p>

</button>

|||

<button onclick="window.location.href='/blog'">

[Blog](/blog)
<br>
<p class="text-sm">Explore the Blogs</p>

</button>

|||

<button onclick="window.location.href='/people'">

[Our People](/people)
<br>
<p class="text-sm">Team, stories, & more</p>

</button>

|||

<button onclick="openInNewTab('https&#58;//library.threefold.me/info/threefold#/')">

[Documentation](https://manual.grid.tf)
<br>
<p class="text-sm">Explore the Documentation</p>

</button>


{% end %}