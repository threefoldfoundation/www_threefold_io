---
title: "What"
description: "TF offers a secure, sovereign infrastructure layer for Web4, delivering unparalleled scalability, incorruptible and permanent data storage, AI and Web2/Web3/Edge compatibility, and 100% uptime for a resilient digital future." # quotation marks to allow colons where used
template: "page.html"
insert_anchor_links: "left"
extra:
 author: ThreeFold
 imgPath: tf.png
---

<!-- section 1 (header) -->

{{ hero_text_center(
    image_src="/images/become_farmer.png",
    image_alt="Become a Farmer",
    title="Decentralized Internet Infrastructure",
    subtitle="",
    description="Our unique technology enables anyone to become a provider of network, storage and compute capacity.",
    button1_text="Dive Deeper",
    button1_link="https://docs.threefold.io/docs/introduction"
    target="_blank"
  

) }}


 <!--section 2 (horizontal_features)-->

<div class="lg:py-24 py-12 mx-auto max-w-7xl lg:px-8">



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

</div>


<!--section 3 (Portfolio)-->


<div class="lg:py-24 py-12 mx-auto max-w-7xl lg:px-8">

  ## What We’ve Built

  At ThreeFold, we've created products that embody innovation, authenticity, and simplicity. Each solution is crafted to empower individuals and communities, blending cutting-edge technology with practical usability.



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


<!-- section 8 Cta -->

{{ cta(
    title_1="Build the",
    title_2="Internet of Tomorrow,",
    title_3="Today",  
    button_text_1="Take the Next Step",
    button_link_1="/signup",
    button_text_2="Learn More",
    button_link_2="/action"
) }}







