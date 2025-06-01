---
title: "ThreeFold"
description: "TF offers a secure, sovereign infrastructure layer for Web4, delivering unparalleled scalability, incorruptible and permanent data storage, AI and Web2/Web3/Edge compatibility, and 100% uptime for a resilient digital future." 
insert_anchor_links: "left"
extra:
 author: ThreeFold
 imgPath: home/tf.png
---

<!-- section 1 (header) -->


{{ hero_text_center(
    title="Built for Everyone by Everyone, Everywhere",
    subtitle="Unleashing the Power of Decentralized Networks",
    description="ThreeFold is a fully operational, decentralized internet infrastructure – deployed locally, scalable globally, and owned and powered by the people.",
    button1_text="What We've Built",
    button1_link="/what"
    button2_text="Why We Do It",
    button2_link="/why"
    button3_text="Read EV3's Report",
    button3_link="https://paragraph.com/@ev3news/threefold-rearchitecting-the-internet"

) }}



<!-- section 2 -->

<div class="lg:pb-24 pb-12">
  <div class="mx-auto grid max-w-2xl grid-cols-1 items-start gap-y-16 px-4 lg:max-w-7xl lg:grid-cols-2 lg:px-8">

  <!-- left section -->

  {{ left_text( 
    title="ThreeFold is a Decentralized Infrastructure Layer for The Internet",
    description_1="We have built a foundational platform that runs directly on bare metal, offering a scalable solution focused on the essential building blocks of the Internet and Cloud: compute, data, and network.",
    button_text="Discover How It Works",
    button_link="/what"

  ) }}

 <div class="lg:px-16 fade-in">

  <!-- right section -->

   ### Three Inventions at the Core of Our System

<br>

  <dl class="grid grid-cols-1 mx-auto lg:gap-x-8 sm:grid-cols-2 lg:gap-y-8 gap-y-4">
   {{ right_content(
    subtitle ="COMPUTE",
    header="Bare Metal Operating System",
    description1="Zero OS, an efficient and secure operating system, runs directly on the hardware – enabling an autonomous cloud.",
    description2="Can run any Web2, Web3, or AI workload at the edge of the Internet, with more scalability and reliability." 
) }}

   {{ right_content(
    subtitle="DATA",
    header="Unbreakable Data",
    description1="Data cannot be compromised and always remains private, owned by you. A scalable system, to the planetary level.",
    description2="Can be distributed and stored in ways which are at least 10x more efficient and orders of magnitude more secure and reliable."
) }}

   {{ right_content(
    subtitle="NETWORK",
    header="Unbreakable Network",
    description1="End-to-end encrypted overlay network, always looking for the shortest possible path between participants.",
    description2="Logical Internet address securely linked to a private key. Unlimited scale and performance optimizations."
) }}

</dl>
</div>
</div>
</div>



<!-- section 3 -->

{{ grid_stats(
    title_1="Powered by",
    title_2="A Global Community",
    description_1="ThreeFold’s groundbreaking technology enables anyone – individuals, organizations, and communities – to deploy their own Internet infrastructure.",
    description_2="Today, our proof-of-concept network is live and operational worldwide, running on version 3.16 technology.",
    subtitle="As we expand, we may need millions of nodes to support this growing ecosystem to build a truly decentralized and resilient infrastructure",
    button_text="Explore Grid Capacity",
    button_link="https://dashboard.grid.tf/#/tf-grid/node-statistics/"

) }}



<!-- section 4 -->

<div class="lg:py-24 py-12">

{{ center_text(
    title="Anything That Runs on Linux Can Run on ThreeFold",
    description="The new internet infrastructure can be used by any Web2, Web3, AI, or Edge IT workload – enabling a world of possibilities.", 
    button_text="",
    button_link=""

) }}

<div class="max-w-6xl mx-4 md:mx-10 lg:mx-20 mt-16 xl:mx-auto">
    <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-8 lg:max-w-none lg:grid-cols-3">

{{ use_cases(
    image_src="/images/tft_logo.png",
    image_alt="ThreeFold Cloud",
    title="ThreeFold Cloud",
    description="ThreeFold is open for developers and system administrators. Deploy virtual machines, containers, Kubernetes clusters, web gateways, and more on top of a best-effort decentralized open source cloud.",
    subtitle ="Open-Source Cloud",
    button_text_1="Dashboard",
    button_link_1="https://dashboard.grid.tf/#/tf-grid/node-statistics/",
    button_text_2="Manual",
    button_link_2="https://manual.grid.tf/"
) }}

{{ use_cases(
    image_src="/images/mycelium_logo.png",
    image_alt="Mycelium",
    title="Mycelium",
    description="An adaptive and resilient network solution that not only keeps your data safe but also guarantees uninterrupted and efficient communication. The Mycelium Network is the backbone of a new era of connectivity, prioritizing speed, security, and reliability for all users.",
    button_text_1="Website",
    button_link_1="https://mycelium.threefold.io/",
    button_text_2="Docs",
    button_link_2="https://threefold.info/mycelium/docs/"
) }}

{{ use_cases(
    image_src="/images/aibox_logo.png",
    image_alt="AIBOX",
    title="AIBOX",
    description="A decentralized AI solution that enables anyone to run, train, and use AI models locally, keeping their data private while sharing unused computing power with the network—eliminating the need for centralized data centers.",
    subtitle ="Decentralized AI",
    button_text_1="Website",
    button_link_1="https://aibox.threefold.io/",
    button_text_2="Docs",
    button_link_2="https://threefold.info/aibox/docs/"
) }}


   </dl>
</div>

</div>
</div>





<!-- section 5 -->

<div class="container mx-auto lg:max-w-7xl lg:py-24 py-12 px-4 lg:px-0">

  {{ left_text( 
      title="How it works",
      description_1="At the base, nodes form the physical foundation—distributed computers that provide processing power, storage, and networking capabilities. These nodes work together to create a global, community-powered infrastructure.",
      description_2="Regardless of technical expertise, anyone can deploy nodes from their homes or offices, and participate in a decentralized alternative to corporate-owned data centers – while earning rewards for their contributions. We call this process 'farming.'",
      button_text="",
      button_link=""

  ) }}

<div class="max-w-6xl mx-4 md:mx-10 lg:mx-20 xl:mx-auto">
  
<dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-8 lg:max-w-none lg:grid-cols-3">

{{ farm_steps(
    title="1. HOST A NODE",
    description="All you need to get started is a modern computer, electricity and network. Once booted with Zero OS, a computer becomes a ThreeFold Node."    
) }}

{{ farm_steps(
    title="2. OFFER CAPACITY",
    description="After your node is set up and verified, you’ll be rewarded for the capacity that you provide to the ThreeFold Grid."    
) }}

{{ farm_steps(
    title="3. EARN REWARDS",
    description="The capacity of the node gets verified and registered in the ThreeFold Blockchain, securing access to a decentralized autonomous cloud."    
) }}


   </dl>
</div>

  <div class="mt-6 flex items-center justify-center gap-x-6">
        <a href="https://docs.threefold.io/docs/category/become-a-farmer" target="_blank" class="fade-in rounded-2xl bg-white px-4 py-2.5 text-sm font-semibold text-black shadow-sm hover:bg-green hover:text-gray-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 mt-8">Become a Farmer</a>
      </div>

</div>

<!-- section 6 -->

{{ self_healing() }}

<!-- section 7 -->

{{ web4() }}

<!-- section 8 -->

{{ cta() }}











