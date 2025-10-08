---
title: "about"
description: "Our mission is to empower individuals and organizations with secure, private, and autonomous access to computing resources, ensuring fair cloud access for everyone." # quotation marks to allow colons where used
template: "page.html"
insert_anchor_links: "left"
extra:
 author: ThreeFold
 imgPath: tf.png
---

<!-- section 1 (header) -->

 <div class="px-4 mt-12 lg:py-24 py-12 lg:px-8">
 <div class="mx-auto max-w-5xl text-center fade-in">

# The Internet Needs an Upgrade

The Internet brings the world together, yet much of it is now concentrated in the hands of a few powerful corporations. This wasn't its original intent. The Internet was envisioned as a decentralized, open space. A tool for freedom, collaboration, and equal access for all.

<br>

**ThreeFold has invented a new Data, Network, and Cloud system as an engine for the new Internet.**

 </div>
 </div>
 
<!----------------------------------------------------------------------------------------->

<!-- section 2 (reason) -->

{{ description_blockquote(
    title="The Reason Behind It All",

    description_1="The Internet started as a peer-to-peer network, but over time it has become fragile and overly centralized. This shift has led to serious issues: data centers are extremely expensive to build and maintain, privacy and security are compromised, misinformation is rampant, and half the world remains poorly connected.",

    description_2="Big tech companies now dominate the Internet, tracking our activities and influencing our decisions, consolidating control in ways that don't serve everyone equally.",

    description_3="For +30 years, we’ve dedicated ourselves to this vision, and ThreeFold is the culmination of that journey. Today, we have a fully operational product (V3) and a thriving community of farmers, users, and partners.",

    description_4="Therefore we believe the Internet needs a fresh start—one that addresses these challenges with a focus on authenticity, equality, and sustainability for everyone."  
) }}

<!----------------------------------------------------------------------------------------->

<!-- section 3 (AI) -->

 <div class="px-4 mt-12 lg:py-24 py-12 lg:px-8">
 <div class="mx-auto max-w-4xl text-center fade-in">

## AI needs to be decentralized

We are at the dawn of AI, a transformative force that will redefine how we live, work, and interact with technology. AI presents an incredible opportunity for humanity, however, as AI systems become more powerful, their control sits in the hands of a few corporations, raising serious concerns around privacy, bias, accessibility, and so on.

<br>

Further, centralized cloud providers are bottlenecks, as AI compute demand is outpacing supply and training AI models is too expensive.

<br>

We must not repeat mistakes of the past. Without decentralization, AI will remain controlled by a few corporations—limiting accessibility, innovation, and independence. To ensure AI benefits everyone, we must advocate for decentralized, open-source AI models that are transparent, ethical, and community-driven. And this can only happen on an infrastructure like ThreeFold.

 </div>
 </div>

<!----------------------------------------------------------------------------------------->

 <!-- section 4 (web4) -->

 <div class="px-4 lg:px-8 lg:py-24 py-12">
 <div class="mx-auto max-w-7xl fade-in">

## The Vision for a New Internet

<div class="max-w-3xl">

Unlike traditional internet infrastructure, which relies on centralized data centers and corporate control, ThreeFold is built on a global mesh of independent cloud providers—individuals and organizations who contribute data, cloud and network power directly to the ecosystem.

<br>

This makes ThreeFold uniquely decentralized at the physical layer, eliminating single points of failure and gatekeepers. It’s a truly neutral and scalable foundation that puts privacy, resilience, and digital sovereignty at the core of the internet.

 </div>
 </div>
 </div>

<!----------------------------------------------------------------------------------------->

<!-- section 5 (timeline) -->

 <div class="px-4 mt-12 lg:py-24 py-12 lg:px-8">
 <div class="mx-auto max-w-3xl text-center fade-in">

## ThreeFold’s Journey

Over the past decades, we’ve tackled complex challenges in areas such as data storage, secure overlay networking, and autonomous cloud security. With significant experience in Internet and Cloud and a strong vision for the future, these pivotal milestones have shaped our growth and drive us towards a better digital future.

 </div>

 {{ timeline(
  subtitle_1="Phase I",
  title_1="Creation of Core Technology",
  point_1_1="Open Source Development.",
  point_1_2="Built decentralized, autonomous, edge internet technology.",
  point_1_3="Self-funded and private investment from founders, community, and TF Tech investors.",

  subtitle_2="Phase II",
  title_2="Global Proof Of Concept.",
  point_2_1="Open Source Development.",
  point_2_2="50+ Countries.",
  point_2_3="50,000+ Cores.",
  point_2_4="25,000,000 GB of Storage.",
  point_2_5="Thousands of enthusiasts actively engage with and contribute to the evolution of the ThreeFold Network.",
  point_2_6="Decentralized reliable compute, network and storage layer for Web 2-3.",
  point_2_7="Commitments from wonderful projects to build on top of us.",

  subtitle_3="Current Phase – 2025",
  title_3="Decentralized AI and Cloud",
  point_3_1="Introduce 3Phone & 3Router.",
  point_3_2="Introduce decentralized AI infrastructure and capabilities.",
  point_3_3="Expand the network considerably.",
  point_3_4="Build a network of commercial farmers for optimal performance and uptime.",
  point_3_5="Expand the network considerably.",
  point_3_6="Build a network of commercial farmers for optimal performance and uptime.",

  subtitle_4="The Result",
  title_4="Autonomy for All",
  point_4_1="An upgraded Internet for Billions.",
  point_4_2="A planet-and-people-first hybrid of Humans and machines delivers on the promise of Augmented Collective Intelligence."

 ) }}

 </div>

<!----------------------------------------------------------------------------------------->

<!-- section 6 (Values) -->

{{ values(

  title_1="Open Source.",
  title_2="Authenticity.",
  title_3="Simplicity."

) }}

<!----------------------------------------------------------------------------------------->

<!-- section 7 (Team) -->

<div class="lg:py-24 py-12 text-center">

{{ text_center(
    title="Founded by Internet 1.0 Pioneers and All of You",
    description_1="The founders have been working in Internet technology since its early days when it operated as a decentralized, peer-to-peer network. ThreeFold is an open-source movement driven by a dedicated team and a vibrant community of contributors helping to bring our shared vision to life.",
    description_2="The project is supported by over 50 full-time active developers.",
    button_text_1="Meet the Team",
    button_link_1="/people"

) }}

</div>
</div>

<!----------------------------------------------------------------------------------------->

<!-- section 8 Cta -->

{{ cta(
    title_1="Building a",
    title_2="New Internet,",
    title_3="Together",  
    button_text_1="Participate",
    button_link_1="/signup",
    button_text_2="Stay Updated",
    button_link_2="https://t.me/threefoldnews"
) }}


  <style>
    /* Define the fade-in animation */
    @keyframes fadeIn {
      0% {
        opacity: 0;
      }
      100% {
        opacity: 1;
      }
    }
  
    /* Apply the fade-in animation to elements with the 'fade-in' class */
    .fade-in {
      animation: fadeIn 4s ease-in-out forwards; /* Adjust the duration (2s) to make it slower or faster */
    }
  
    /* Optional: Delay the animation for a more staggered effect */
    h1, h2 {
      animation-delay: 0.5s; /* Delay for header */
    }
  
    p {
      animation-delay: 1s; /* Delay for paragraphs */
    }
  </style>






