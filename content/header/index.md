---
title: "Header"
insert_anchor_links: "left"
template: "partials/header.html"
extra:
  logoPath: "images/new_logo_tft.png"

---

- [Why]("/why")
- [What]("/what")
- [Take Action]("/action")
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

<button class="dropdown" onclick="openInNewTab('https&#58;//docs.threefold.io/docs/introduction')">

[Docs](https://docs.threefold.io)
<br>
<p class="text-sm">V4 Documentation</p>

</button>

|||

<button class="dropdown" onclick="openInNewTab('https&#58;//manual.grid.tf/')">

[Manual](https://manual.grid.tf/)
<br>
<p class="text-sm">V3 Documentation</p>

</button>



{% end %}


