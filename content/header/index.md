---
title: "Header"
insert_anchor_links: "left"
template: "partials/header.html"
extra:
  logoPath: "images/new_logo_tft.png"

---

- [Why]("/why")
- [What]("/what")
- [12.12.24]("/action")
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

<button class="dropdown" onclick="openInNewTab('https&#58;//https://docs.threefold.io/')">

[Documentation](https://docs.threefold.io/)
<br>
<p class="text-sm">Explore the Documentation</p>

</button>


{% end %}
