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
    button1_text="Start Building",
    button1_link="/build"
    button2_text="Start Hosting",
    button2_link="/host"

) }}

<!----------------------------------------------------------------------------------------->

<!-- section 2 (Infrastructure) -->

<div class="lg:pb-24 pb-12">
  <div class="mx-auto grid max-w-2xl grid-cols-1 items-start gap-y-16 px-4 lg:max-w-7xl lg:grid-cols-2 lg:px-8">

  <!-- left section -->

  {{ text_left( 
    title="ThreeFold is a Decentralized Infrastructure Layer for The Internet",
    description_1="We have built a foundational platform that runs directly on bare metal, offering a scalable solution focused on the essential building blocks of the Internet and Cloud: compute, data, and network.",
    button_text="Discover How It Works",
    button_link="/build"

  ) }}

 <div class="lg:px-16 fade-in">

  <!-- right section -->

   ### Three Inventions at the Core of Our System

<br>

  <dl class="grid grid-cols-1 mx-auto lg:gap-x-8 sm:grid-cols-2 lg:gap-y-8 gap-y-4">

   {{ right_content(
    subtitle ="COMPUTE",
    header="Bare Metal",
    sub_header="Operating System",
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

<!----------------------------------------------------------------------------------------->

<!-- section 3 (stats) -->

{{ grid_stats(
    title_1="Powered by",
    title_2="A Global Community",
    description_1="ThreeFold’s groundbreaking technology enables anyone – individuals, organizations, and communities – to deploy their own Internet infrastructure.",
    description_2="Today, our proof-of-concept network is live and operational worldwide, running on version 3.17 technology.",
    subtext="As we expand, we may need millions of nodes to support this growing ecosystem to build a truly decentralized and resilient infrastructure",
    button_text="Explore Grid Capacity",
    button_link="https://dashboard.grid.tf/#/tf-grid/node-statistics/"

) }}

<!----------------------------------------------------------------------------------------->

<!-- section 4 (How it works)-->

<div class="container mx-auto lg:max-w-7xl lg:py-24 py-12 px-4 lg:px-0">
  <div class="max-w-6xl lg:px-8 px-0 lg:pb-12 pb-6">

  ## How It Works

At the base, nodes form the physical foundation. These are distributed computers that provide processing power, storage, and networking capabilities. Together, they create a global, community-powered infrastructure.

<br>

Until now, anyone could deploy nodes from their home or office and earn rewards simply for hosting and take part in a decentralized alternative to corporate-owned data centers. In return for their contributions, participants earn rewards. We call this process “farming.”

<br>

Starting this summer, farming is evolving. With the launch of the ThreeFold Marketplace, rewards will be based on actual usage. This shift unlocks new commercial potential and supports a more sustainable and dynamic decentralized network.

</div>

<div class="max-w-6xl mx-4 md:mx-10 lg:mx-20 xl:mx-auto">
  
<dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-8 lg:max-w-none lg:grid-cols-3">

{{ farm_steps(
    title="1. HOST A NODE",
    description="All you need to get started is a modern computer, electricity and network. Once booted with Zero OS, a computer becomes a ThreeFold Node."    
) }}

{{ farm_steps(
    title="2. OFFER CAPACITY",
    description="The capacity of the node gets verified, registered and secured on the ThreeFold Blockchain. Farmers can then list their resources on the ThreeFold Marketplace, making them available directly to users."    
) }}

{{ farm_steps(
    title="3. EARN REWARDS",
    description="Farmers earn rewards when their resources are used through the Marketplace, enabling a fair and transparent peer-to-peer economy."    
) }}

   </dl>
</div>
<div class="mt-6 lg:mt-10 flex items-center justify-center gap-x-6">
        <a href="/host" class="fade-in rounded-2xl bg-white px-4 py-2 text-sm font-semibold text-black shadow-sm hover:bg-green hover:text-gray-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2">Become a Farmer</a>
  </div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 5 (TF products)-->

<div class="lg:py-24 py-12 container max-w-7xl mx-auto">

{{ text_center(
    title="Anything That Runs on Linux Can Run on ThreeFold",
    description_1="The new internet infrastructure can be used by any Web2, Web3, AI, or Edge IT workload – enabling a world of possibilities." 

) }}


{{ card_with_image(
    image_src="/images/tft_logo.png",
    image_alt="TF logo",
    title="ThreeFold Cloud",
    subtitle="Open-Source Cloud",
    description="ThreeFold is open for developers and system administrators. Deploy virtual machines, containers, Kubernetes clusters, web gateways, and more on top of a best-effort decentralized open source cloud.",
    button_link="https://manual.grid.tf/",
    button_text="Manual",
    image_src_right="/images/app.png",
    image_alt_right="App screenshot"


) }}

</div>


<!----------------------------------------------------------------------------------------->

<!-- section 6 (Join the Movement) -->

<div class="lg:py-24 py-12 px-4">
<div class="container max-w-7xl mx-auto">

## Join the Movement to Build a New Internet

<div class="max-w-4xl">

There are many ways to be part of our mission to create a more open, autonomous, and interconnected digital world. Farming is just one pillar of our ecosystem.
<br>
Explore all the products that are driving this transformation.

</div>

<div class="max-w-7xl mx-4 md:mx-10 lg:mx-20 mt-16 xl:mx-auto">
    <div class="flex lg:flex-row flex-col">

{{ image_card(
    image_src="/images/3node.png",
    image_alt="3node",
    title="3NODE",
    tooltip="The backbone of storage and infrastructure, providing compute and data resources.",
    target="_blank",
    card_link="https://docs.threefold.io/docs/components/3node"
) }}

{{ image_card(
    image_src="/images/mycelium.png",
    image_alt="mycelium",
    title="MYCELIUM",
    tooltip="End-to-end encrypted overlay network, always looking for the shortest possible path between participants ",
    target="_blank",
    card_link="https://mycelium.threefold.io/"
) }}

{{ image_card(
    image_src="/images/aibox.png",
    image_alt="aibox",
    title="AIBOX",
    tooltip="A self-hosted AI compute solution powered by ThreeFold.",
    target="_blank",
    card_link="https://www.aibox.threefold.io/"
) }}

{{ image_card(
    image_src="/images/3phone.png",
    image_alt="3phone",
    title="3PHONE",
    tooltip="OwnPhone is the first secure device in the 3Phone family designed to work seamlessly with the ThreeFold Grid.",
    target="_blank",
    card_link="https://docs.threefold.io/docs/components/3phone/"
) }}

{{ image_card(
    image_src="/images/3router.png",
    image_alt="ThreeFold Cloud",
    title="3ROUTER",
    tooltip="Smart routers ensure shortest-path connections between nodes and phones with end-to-end encryption.",
    target="_blank",
    card_link="https://docs.threefold.io/docs/components/3router"
) }}
</div>
</div>
<div class="mt-6 lg:mt-10 flex items-center justify-center gap-x-6">
        <a href="/signup" target="_black" class="fade-in rounded-2xl bg-white px-4 py-2 text-sm font-semibold text-black shadow-sm hover:bg-green hover:text-gray-800 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2">Join ThreeFold’s Ecosystem</a>
  </div>
</div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 7 (self-healing) -->

<div class="lg:py-24 py-12">

{{ text_center(
    title="A Self-Healing Internet Infrastructure",
    subtitle="Scalable globally, Green, Unbreakable & Secure",
    description_1="",
    image_src ="/images/selfhealing.png",
    image_alt="selfhealin", 
    button_text_1="",
    button_link_1=""

) }}

</div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 8 (More Resilient)-->

<div class="lg:py-24 py-12 text-center">

## More Resilient, More Powerful, <br> More Diverse With You

{{ text_center(
    title="",
    description_1="Unlike the corporate internet, where users are the product, in the new internet, participants are the owners and beneficiaries.",
    description_2="By participating, you're not just using the technology, you're also helping to build a digital world that protects privacy, promotes fairness, and returns control to the people.",
    button_text_1="",
    button_link_1="",
    button_text_2="",
    button_link_2=""

) }}

</div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 9 (Faq) -->
<div class="lg:py-24 py-12 px-6">
<div class="lg:max-w-7xl container mx-auto">

## Frequently Asked Questions

<br>

{{ accordion(
    id_accordion="accordion1"
    question="Is this a separate new Internet?",
    description="No, ThreeFold is a complementary Internet and works alongside the current Internet. It allows you to continue accessing and interacting with the current Internet."
) }}

{{ accordion(
    id_accordion="accordion2"
    question="Why do we need a new Internet?",
    description="The Internet used to be a peer to peer network, but has become fragile and too centralized. There are so many problems with the current Internet, such as authenticity, privacy, security, and sustainability that we believe a fundamental new approach is needed."
) }}

{{ accordion(
    id_accordion="accordion3"
    question="How can I participate?",
    description="You can participate by becoming a farmer, a user, a partner or by developing apps. Provide capacity to the ThreeFold Grid, Use capacity, build solutions, develop applications, and many more."
) }}

{{ accordion(
    id_accordion="accordion4"
    question="How can I get V4 nodes?",
    description="Our partners are selling V4 nodes with a new reward scheme and ready to grow to millions of nodes.",
    link="https://docs.threefold.io/docs/become-a-farmer/get_started/",
    text_link="Click here to get V4 nodes."
) }}

{{ accordion(
    id_accordion="accordion5"
    question="What can I do with the ThreeFold Grid?",
    description="ThreeFold grid can be used to host any web2, web3 and future workload. For more details see ",
    link="https://docs.threefold.io/docs/category/how-to-use/",
    text_link="our docs."

) }}

{{ accordion(
    id_accordion="accordion6"
    question="How secure and private is my data?",
    description="ThreeFold is designed to be secure and private by default. We use end-to-end encryption to protect your data and ensure that only you have access to your data."
    )
    }}

{{ accordion(
    id_accordion="accordion7"
    question="Who should use the ThreeFold Grid ?",
    description="Individuals, businesses, and organizations who want to be autonomous and have full control over their data and applications. Security is a very big problem today, Technology as used by ThreeFold has the potential to resolve this if used properly. We are building a channel of solution providers and integrators who want to build on top of ThreeFold."
    )
    }}

</div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 10 Cta -->

{{ cta(
    title_1="Building a",
    title_2="New Internet,",
    title_3="Together",  
    button_text_1="Participate",
    button_link_1="/signup",
    button_text_2="Stay Updated",
    button_link_2="https://t.me/threefoldnews",
    button_text_3="Chat",
    button_link_3="https://t.me/threefold"
) }}











