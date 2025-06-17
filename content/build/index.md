---
title: "Build"
description: "TF offers a secure, sovereign infrastructure layer for Web4, delivering unparalleled scalability, incorruptible and permanent data storage, AI and Web2/Web3/Edge compatibility, and 100% uptime for a resilient digital future." # quotation marks to allow colons where used
template: "page.html"
insert_anchor_links: "left"
extra:
 author: ThreeFold
 imgPath: tf.png
---

<!-- section 1 (header) -->

{{ hero_text_center(
    image_src="",
    image_alt="",
    title=" Build on a Decentralized Internet Infrastructure",
    subtitle="",
    description="Our unique technology enables anyone to become a provider of network, storage and compute capacity.",
    button1_text="Dive Deeper",
    button1_link="https://docs.threefold.io/docs/introduction/"
    target="_blank"
) }}

<!----------------------------------------------------------------------------------------->

<!--section 2 (tabs)-->

<div class="lg:pb-24 pb-12 mx-auto max-w-7xl px-4 lg:px-8">



  ## Building for Web2, Web3, AI, and Beyond

  ThreeFold builds the infrastructure to power today’s and tomorrow’s digital world, across Web2, Web3, AI, and Edge IT workloads.

  <br>

  We are currently running **V3.16.0**, a large-scale Proof-of-Concept Network, while simultaneously preparing for **V4.0.0**, our upcoming production-ready release, delivering a fully operational, self-sustaining internet infrastructure built on three foundational pillars.

{{ tabs() }}

</div>

<!----------------------------------------------------------------------------------------->

<!-- section 3 (Build With ThreeFold) -->

<div class="lg:py-24 py12 ">
<div class="container max-w-7xl mx-auto  px-4 lg:px-8">

## Build with ThreeFold

<div class="max-w-7xl mx-4 md:mx-10 lg:mx-20 mt-16 xl:mx-auto">
    <div class="flex lg:flex-row flex-col">
    
{{ image_card(
    header="Deploy",
    target="_blank",
    tooltip=" ",
    card_link="https://dashboard.grid.tf/#/deploy/labs/"
) }}

{{ image_card(
    header="Host",
    tooltip=" ",
    card_link="/host"
) }}

{{ image_card(
    header="Manual",
    target="_blank",
    tooltip=" ",
    card_link="https://manual.grid.tf/"
) }}

{{ image_card(
    header="Demos",
    target="_blank",
    tooltip=" ",
    card_link="https://www.youtube.com/playlist?list=PLTGQlepPqwUUhbtKZW2okEszK3AkDgC4Y"
) }}

</div>
</div>
</div>
</div>

<!----------------------------------------------------------------------------------------->

<!--section 4 (Deploy with ThreeFold)-->

 <div class="lg:py-24 py-12 mx-auto max-w-7xl px-4 lg:px-8">

  ## Deploy with ThreeFold

  Explore and deploy ready-to-use apps on the ThreeFold Grid.

  <br>

![Deploy with ThreeFold](/images/all_apps.png)

<br>

<div class="mt-6 lg:mt-10 flex items-center justify-center gap-x-6">
        <a href="https://dashboard.grid.tf/#/deploy/labs/" target="_blank" class="fade-in rounded-2xl bg-white px-4 py-2 text-sm font-semibold text-black shadow-sm hover:bg-green hover:text-gray-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2">Discover Labs</a>
</div> 
</div>

<!----------------------------------------------------------------------------------------->

<!--section 2 (horizontal_features)-->

<!-- <div class="lg:py-24 py-12 mx-auto max-w-7xl px-4 lg:px-8">



  ## What We Do

  ThreeFold can be used by any Web2, Web3, AI, or Edge IT workload.

  <br>

  We are currently running V3.16.0, a large-scale Proof-of-Concept Network, while simultaneously preparing for V4.0.0, our upcoming production-ready release. This will deliver a fully operational infrastructure built around three core pillars:


{{ horizontal_features(

  title_1="Data",
  point_1_1="Private, scalable, and autonomous—designed for AI-native environments.",
  point_1_2="Distributed and decentralized, offering 10x efficiency and unprecedented security over existing cloud solutions.",
  point_1_3="User-centric, unbreakable storage system ensuring redundancy & privacy.",
  point_1_4="Geo-aware for compliance & data localization.",


  title_2="Network",
  point_2_1="End-to-end encrypted, peer-to-peer communication—no intermediaries.",
  point_2_2="Shortest-path routing—intelligent traffic optimization for latency reduction and cost efficiency.",
  point_2_3="Self-sustaining and censorship-resistant network.",
 


  title_3="Compute",
  point_3_1="Self-healing compute fabric—automatically redistributes workloads to healthy nodes. Fault tolerance is achieved via live migration of workloads, maintaining service availability. The Grid supports a peer-to-peer (P2P) AI compute and storage marketplace, allowing individuals and enterprises to monetize excess compute and GPU resources.",
  point_3_2="No reliance on hyperscalers—agents dynamically manage resources, ensuring uptime and resilience.",
  point_3_3="Optimized for AI & Web3—ideal for running autonomous applications, LLMs, and metaverse infrastructure. The Grid is designed to support AI inference and training at the edge.",
  point_3_4="ThreeFold Grid V3 uses ZOS (Zero-OS), a highly optimized, minimalistic OS designed specifically for stateless, immutable, and self-healing workloads. ZOS runs on bare metal and supports:",
  point_3_5="MicroVMs & Containerized Workloads (Kubernetes, Docker, Firecracker).",
  point_3_6="AI & Machine Learning Workloads (LLM inference, federated learning).",
  point_3_7="Web3 & Blockchain Nodes."

) }}

</div> -->

<!----------------------------------------------------------------------------------------->

<!--section 5 (ThreeFold Stack)-->

<div class="lg:py-24 py-12 mx-auto max-w-7xl  px-4 lg:px-8">

  ## The ThreeFold Stack

 Products designed to power a decentralized, sustainable digital future.

<dl class="pt-12 grid max-w-xl grid-cols-1 gap-x-8 gap-y-8 lg:max-w-none lg:grid-cols-3">

{{ portfolio(
  title="ZERO-OS V3",
  description="A stateless and lightweight operating system that allows for an improved efficiency of up to 10x for certain workloads.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/knowledge_base/technology/concepts/zos.html?highlight=zero-os#overview-of-zero-os"
)}}

{{ portfolio(
  title="MYCELIUM NETWORK",
  description="Decentralized communication layer of TF Grid that connects and coordinates nodes on the ThreeFold Grid, enabling secure and efficient peer-to-peer interactions.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/system_administrators/mycelium/overview.html"
)}}

{{ portfolio(
  title="QUANTUM SAFE STORAGE",
  description="QSS is a decentralized, globally distributed data storage system. It is unbreakable, self-healing, append-only, and immutable.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/knowledge_base/technology/qsss/qsss_home.html"
)}}

{{ portfolio(
  title="TF CHAIN",
  description="n application-specific blockchain customized for the operation of a single application – provisioning decentralized compute, storage, and network capacity.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/knowledge_base/technology/concepts/tfchain.html"
)}}

{{ portfolio(
  title="3NODES",
  description="ecentralized, user-owned hardware devices that provides computing, storage, and networking resources to power the TF Grid.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/developers/tfchain/tfchain.html?highlight=nodes#nodes"
)}}

{{ portfolio(
  title="GATEWAY NODES",
  description="Specialized nodes that provide secure access points to the ThreeFold Grid, enabling decentralized networking, private data communication, and seamless interaction between users and applications.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/dashboard/deploy/node_finder.html?highlight=gateway%20nodes#gateway-nodes"
)}}

{{ portfolio(
  title="TF DASHBOARD",
  description="A user-friendly interface for monitoring, managing, and deploying resources on the ThreeFold Grid.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/dashboard/dashboard.html"
)}}

{{ portfolio(
  title="TF DAO",
  description="A community-driven governance model that allows token holders to participate in decision-making processes related to the development and direction of the ThreeFold ecosystem.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/dashboard/tfchain/tf_dao.html"
)}}

{{ portfolio(
  title="TF CONNECT APP",
  description="A mobile app that serves as a gateway to the ThreeFold ecosystem and its various ThreeFold products and services.",
  button_text="Learn More",
  button_link="https://manual.grid.tf/documentation/tfconnect/tfconnect_toc.html"
)}}

</dl>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 6 Cta -->

{{ cta(
    title_1="Building a",
    title_2="New Internet,",
    title_3="Together",  
    button_text_1="Participate",
    button_link_1="https://form.typeform.com/to/GO9G8ZBa",
    button_text_2="Stay Updated",
    button_link_2="https://t.me/threefoldnews",
    button_text_3="Chat",
    button_link_3="https://t.me/threefold"
) }}








