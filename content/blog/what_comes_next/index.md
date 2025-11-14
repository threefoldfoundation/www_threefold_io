---
id: what_comes_next
title: When the Cloud Stopped Working, and What Comes Next?
image_caption: what_comes_next
description: ThreeFold’s decentralized infrastructure offers a stronger, more reliable path for the future of the internet, a reality made even clearer by the recent AWS outage and the growing risks of centralized cloud models.
date: 2025-11-04
taxonomies:
  people: [raj_mitra]
  tags: [tech,grid,community]
  categories: [tech,grid,community]
extra:
    imgPath: what_comes_next.png
    
---

Last month, the world was reminded of an uncomfortable truth: even the cloud can fail.

<br/>

For hours, millions of people couldn’t stream, shop, or even switch on their smart lights. The cause? A massive outage in Amazon Web Services’ (AWS) US-East-1 region, the digital heartbeat of thousands of apps, from Netflix to banking systems.

<br/>

What began as a small DNS failure spiraled into a full-scale breakdown: databases couldn’t be found, load balancers misfired, and apps flooded the network with endless reconnection attempts. By the time AWS engineers restored service, much of the internet had already felt the impact.

<br/>

It wasn’t the first time, and it most certainly won’t be the last.

<br/>

Zero OS has been specifically designed to ensure that:

### **The Cracks in the Cloud**

The irony of modern computing is that we’ve built the most advanced infrastructure in human history, yet it’s still held together by a handful of companies. When one of them sneezes, the entire web stumbles.

<br/>

David Heinemeier Hansson (DHH), the creator of Ruby on Rails and co-founder of Basecamp, has been one of the loudest critics of this model. In 2023, his team made headlines [by leaving both AWS and Google Cloud](https://x.com/dhh/status/1980245233339408596), migrating all their apps, [Basecamp](https://basecamp.com/cloud-exit), HEY, and others. onto their own hardware. According to him, they are projected to save $10M in over five years.

<br/>

*“The cloud was supposed to be cheaper, faster, and easier,” DHH wrote. “But the savings never materialized, and the team never shrunk.”*

<br/>

There was also another reason behind this move. For DHH, the decision wasn’t just financial. He argues that the modern internet has strayed far from its original design, a distributed network meant to survive even if one node went down. Instead, we’ve rebuilt it around a handful of hyperscale data centers like AWS’s US-East-1, turning the web into a system where a single outage can take out a third of global traffic.

<br/>

Ultimately, his critique is simple. The cloud was sold as faster, easier, and cheaper, yet in practice it’s become more complex, more expensive, and dangerously centralized. AWS, once seen as a democratizer, now runs at nearly 40% margins, proof that the economies of scale no longer benefit users, only the providers.

<br/>

And...he is right. For the most part. Centralization does indeed breed dependence. However, his approach is easier said than done. 

<br/>

Not every company can afford to buy, house, and maintain its own servers across multiple continents. Wasn’t that the whole point of the cloud in the first place? For most organizations, the choice still feels binary: go cloud or go home.

### **Enter ThreeFold’s Solution**

At ThreeFold, we believe the internet should belong to everyone, not a handful of corporations. At the center of this vision is the [ThreeFold Grid](https://manual.grid.tf/), a decentralized infrastructure layer designed to make the internet more autonomous, efficient, and resilient. Each node on the Grid provides compute, storage, and network capacity through a peer-to-peer architecture. These nodes, operated by independent farmers, form the backbone of the network.

<br/>

Anyone can access this capacity directly, no intermediaries, no corporate gatekeepers. The result is a self-healing data, network, and cloud layer that keeps running even when parts of it fail.

<br/>

On top of this infrastructure runs the ThreeFold Cloud, a 100% Kubernetes-compatible decentralized cloud built on the global Grid. It allows developers to deploy applications anywhere in the world using familiar workflows, without renting space from Amazon or Google.

### **The Three Paths Ahead**

So, as a company today, you really have three paths in front of you:

<br/>

- **Centralized Cloud**: You rent capacity from service providers, and when they go down, so do you. 
- **Run Your Own Servers**: What DHH’s Basecamp chose. You buy and maintain physical hardware.
- **Decentralized Cloud**: Shared, decentralized infrastructure that combines the resilience of self-hosting with the accessibility of the cloud. (In this article we specifically focus on ThreeFold.)


<br/>

| | **Centralized Cloud** | **Run Your Own Servers** | **ThreeFold** |
| -- | -- | -- | -- |
| **Infrastructure** | None. Fully managed by provider | Full physical and operational control | Shared and self-managed through a peer-to-peer grid |
| **Cost Structure** | Starts low, rises with usage | High upfront, lower long-term | Pay-per-use with option to contribute capacity |
| **Scalability** | Near-instant global scaling | Limited by owned capacity | Global scaling through distributed nodes |
| **Complexity** | Easy to start, complex to manage at scale | Requires in-house expertise | Moderate setup, familiar Kubernetes workflows | 
| **Resilience** | Single points of failure in provider regions | High | Self-healing through distributed design | 
| **Vendor Dependence** | High | None | Minimal. Community-governed |

<br/>

As we see it, the answer isn’t to abandon the cloud, but to decentralize it, to distribute its power, its risks, and its rewards.

<br/>

The choice to consume or provide capacity doesn't have to be binary either. ThreeFold Grid users who want to install their own nodes can do so at any time, both to optimize their own use cases and earn additional revenue from spare capacity.

<br/>

The ThreeFold Grid shows that a different kind of internet is not only possible, it’s already working. The future doesn’t belong to data centers. It belongs to people.

<br/>

The next step is simple. Become part of it. Run a node. Deploy an app. Help rebuild the web as it was meant to be, open, resilient, and human.
