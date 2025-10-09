---
id: sep_2025_roundup
title: "Unfolding ThreeFold: September 2025 Roundup"
image_caption: September 2025 Monthly Roundup
description: Learn about the team's key efforts over the past weeks, with a strong focus on commercialization and fundraising activities.
date: 2025-10-09
taxonomies:
  people: [sam_taggart]
  tags: [community, grid, tech]
  news-category: [community, grid, tech]
extra:
    imgPath: sep_2025_roundup.png
    isFeatured: true
---

We’re pleased to share with you key highlights from the past month or so. First, to set the stage:

<br/>

We recognize that progress may not always feel as fast as we’d like, but important steps are being made across both technology and partnerships. Our teams – TF Tech (Geomind) and TF Dubai – remain focused, with ±80% of our current resources dedicated to engineering.

<br/>

TF Tech is advancing commercial discussions and ecosystem collaborations, while TF Dubai is progressing on the funding side, having closed the seed round and now working on larger growth financing. We are getting positive responses and the outlook is good on both of these fronts.

<br/>

Regarding current traction, we now have more than five major channels ready to offtake grid capacity, but we are in a chicken and egg situation. We need more nodes, especially in highly connected locations, to support the needs of these partners. Here are some items which we are working on addressing to improve the situation and reduce friction for grid users:

<br/>

- Implement new utilization based rewards system
- Minimal implementation of marketplace (farmers set own price, etc)
- Launch Kubernetes Cloud offering (tech ready, requires above bullet to be resolved)
- More high-quality high-performance nodes, and many more GPUs
- V4 of of the grid with ZOS V4 (2-3 months till production; for now we can use V3)
- End-user applications on top of the grid for some of these channels to sell

<br/>

Tomorrow, we will share more information on the above and announce a community call to discuss further. Now, as for your September recap:

<br/>

### **TF Grid Development**
Below is a summary of the team’s outputs on key products and features over the past few weeks.

<br/>

#### KubeCloud (Active Development – v0.1.0 base)

<br/>

- Rapid progress on edge Kubernetes platform with multi-master K8s cluster support, automated scaling (CRDs), integrated Stripe billing with millicent precision, EWF workflow engine with Gorm store, robust node management (resource-based filtering, KYC verification, maintenance mode), and real-time updates via SSE
- Frontend enhancements include cluster editing, SSH key management, and admin announcements, currently in active development toward production readiness.

<br/>

*This is one of our commercial products in development. From a technical perspective, it is more or less complete but needs minimal implementation of the marketplace.*

<br/>

#### Mycelium (v0.6.2)
- Enhanced networking capabilities with automatic SOCKS5 proxy discovery on the overlay network
- A new plain log format for broader compatibility
- Improved key management with a dedicated generate-keys command.
- Strengthened RPC API error handling for cleaner message polling
- Builds on v0.6.1 improvements such as better route handling, new peer discovery metrics, and critical security fixes.

<br/>

*A team is currently working on the Mycelium Network experience layer. This is one of the above-mentioned end user products in development.*

<br/>

#### Quantum Safe Storage (v0.4.3)
- Critical zstor template configuration fixes, improved documentation
- Builds on v0.4.2’s new quantumd management daemon with health monitoring, enhanced metadata registry, TOML-based configuration system, and ongoing S3 compatibility evaluations.

<br/>

#### Zero OS (v3.13.6)
- Updated zosbase with enhanced provisiond debugging for improved troubleshooting, and prerelease support for cloud providers
- Security patches further harden production deployments

<br/>

#### TFGrid SDK Go (v0.17.0)
- Major reliability upgrade with adaptive relay failover using cooldown-based selection mechanism
- Context-driven lifecycle management with resource leak prevention
- Hardened TTL validation
- New request tag support (TagFailFast)
- Includes a new ConnObserver interface for monitoring, buffered channels for better performance under load, improved node tracking, CLI support for v4 nodes and the Solana bridge, plus clearer developer documentation.

<br/>

#### TFGrid Gateway
- A complete solution for deploying IPv4 gateway VMs on the ThreeFold Grid, leveraging Terraform/OpenTofu for infrastructure provisioning and automated configuration to ensure secure, reliable network connectivity.

<br/>

*Check out the demo on this offering from September, link down below.*

<br/>

### **On the Ground in Singapore**
Some of the team was in Singapore recently for TOKEN2049 and the Network State Conference, conducting high-level discussions around fundraising and partnerships. The reactions from people, funds, and other organizations who truly get it – decentralization enthusiasts, privacy seekers, deep tech thinkers – have been incredibly validating. They see what has been built, they are excited by what we’ve built and refreshed by our approach as compared to the market – we are now in discussions on how they can support in various ways from investments to driving grid expansion to marketing and promotion.

<br/>

### **TFT Minting Transition Plan**

As announced in September, the last round of minting of TFT will be this month, October 2025. Starting November 2025, we will transition to a utilization-based reward system. Significant capacity reservations will be made in connection with ThreeFold's commercial offerings, ensuring an income for all farmers. More details are coming.

<br/>

### **Community Call**
We hosted a call with some of our more active community members to share transparent progress. As mentioned above, we’ll be hosting a similar call next week. Some highlights from our last call:

<br/>

- Marketplace: Soft launch very soon; first commercialization step with farmer-set prices, buy/sell resources, and transparent revenue.
- Decentralized Kubernetes: One-click deployments with scaling, redundancy, and discounts for full-node use. Product nearly ready.
- AI Agents: Becoming the main user interface for the grid – autonomy, memory, and personal data control.
- Token & Governance: Minting ends in October; TFT capped at 1B. Cooperative model with open dashboards and governance.
- Community Requests: Messenger app in development; other asks include email, backups, and clearer communication.

<br/>

Read full recap [here](https://forum.threefold.io/t/recapping-august-29-community-call/4630).

<br/>

### **Demos**
Mik and Scott demonstrated how a single IPv4 gateway VM can help connect non-IPv4 workloads and even enable private apps to go public, without consuming scarce IPv4 addresses. It is a flexible setup that builders can play with, opening up possibilities such as CDN features, scalable apps, and decentralized databases. Watch the demo [here](https://www.youtube.com/watch?v=L36FbD3oY2s).

<br/>

We also hosted a demo on Quantum Safe Filesystem and Quantumd although we ran into some issues with the recording and we’ll revisit when we can.

<br/>

### **Blogs Published**
- [Kubernetes in Context](https://threefold.io/blog/kubernetes-in-context/): Kubernetes has reshaped how the world builds and runs software but faces key challenges because of centralization. ThreeFold has a solution.
- [The Quantum Age is Coming](https://www.threefold.io/blog/quantum-safe-storage/): The quantum era is approaching fast, threatening encryption, blockchains, and security. ThreeFold’s Quantum Safe Storage delivers sovereign, resilient, and unbreakable protection for data in a post-quantum world.
- [Decentralization in Production](https://www.threefold.io/blog/tf-decentralized-cloud-new/): A network of decentralized nodes around the world power live workloads for developers and independent projects. This isn’t a vision for the future. It’s a functioning, decentralized infrastructure already in production.

<br/>

### **Looking Ahead**
As we move into the fourth quarter of the year, our focus remains on execution and scaling. Key priorities include: finalizing the marketplace implementation, launching the Kubernetes Cloud offering, expanding high-performance node availability, and rolling out other end-user applications on top of the grid. Part of the team remains dedicated to continuing ecosystem and funding discussions to accelerate adoption and support growth.
