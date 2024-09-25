---
id: three_layers
title: "The Building Blocks of the Internet"
image_caption: The Building Blocks of the Internet
description: Learn about the layers of the Internet to understand how digital information is processed, stored, and accessed.
date: 2024-03-04
taxonomies:
  people: [emilie_ouwerx]
  tags: [decentralization, grid, cloud, tech]
  categories: [foundation]
extra:
    imgPath: img/three_layers.png
    isFeatured: true
---

Just as the Earth is made up of layers—from the crust to the core — so too is the Internet, with three key layers: compute & storage, network, and applications. Distinguishing these layers helps us to understand how digital information is currently processed, stored, and accessed across the globe and how ThreeFold technology can transform this model. ThreeFold can be likened to tectonic forces, reshaping the digital landscape by introducing improved ways for these layers to interact. Let’s break down these three layers, their current challenges, and ThreeFold’s approach to each of them.  

### **Compute & Storage**

**What it is:**

<br>

Compute is responsible for processing data. It runs programs and applications by leveraging computational resources like CPUs (Central Processing Units) and GPUs (Graphics Processing Units). It handles the calculations, logic, and running of software that users depend on. Compute resources are provided by servers located in centralized data centers and cloud platforms.

<br>

Storage is about saving and retrieving data. It provides a persistent way to store data so that it can be accessed in the future. This encompasses various types of storage media, such as hard drives (HDDs), solid-state drives (SSDs), and distributed storage systems that span across multiple locations. Storage ensures that data is kept safe and available for when it's needed, either for immediate use by applications or for long-term retention.

<br>

**The problem with the current model:**

<br>

A key problem with the current compute & storage layer lies in its centralized structure, which creates vulnerabilities, scalability challenges, and performance issues. Relying on centralized data centers and cloud platforms leads to single points of failure, which increases the risk of outages and cyberattacks, thus heightening concerns about service disruption and data security. Scaling this centralized infrastructure to meet increasing demand is costly and not straightforward, while latency issues hinder real-time data processing. 

<br>

The concentration of the compute & storage within data centers primarily located in Europe, North America, or China raises significant concerns. This geographical bias in Internet infrastructure keeps data, jobs, and economic benefits centralized in certain regions, putting developing areas at a disadvantage and raising concerns around data sovereignty and autonomy.

<br>

For example, when two people in Zanzibar undertake a video call, their call data is sent to a data center in Europe via costly fiber optics, wasting resources and diminishing performance. This scenario represents a broader problem affecting various locations and use cases. This inefficient and inequitable system can be changed.

<br>

![Image](img/current_call.png#mx-auto)

<br>

**The ThreeFold model:**

<br>

ThreeFold decentralizes compute & storage by distributing it across a global network of independent nodes rather than concentrating it in large data centers. Autonomous technology allows us to remove most human involvement from the equation. This approach allows anyone, regardless of technical know-how, to contribute compute & storage to the network or utilize it for their own applications. In essence, the compute & storage layer becomes co-owned, allowing anyone to become a cloud provider. 

<br>

ThreeFold’s autonomous technology efficiently allocates compute resources, increasing performance and reliability while reducing energy consumption. The distributed storage system fragments data and stores it securely across multiple locations, ensuring that data is always recoverable. Data security is also enhanced as there is no central repository for attackers to target. In this decentralized model, individuals' data remains within their country's borders, safeguarding their information from being exploited as a commodity by external entities. Storing data closer to the end user reduces  latency and improves access speeds.

<br>

Let's revisit the scenario of a video call between two individuals in Zanzibar. With ThreeFold technology, call data will be sent directly between local ThreeFold nodes. These nodes are deployed locally by people and organizations, avoiding centralized ownership by major tech corporations. Instead of relying on data centers thousands of miles away, our decentralized infrastructure significantly shortens the connection distance. The pair in Zanzibar can now communicate peer-to-peer, reducing bandwidth needs by up to 10 times while boosting security. 

<br>

![Image](img/threefold_call.png#mx-auto)

<br>

### **Network**

**What it is:**

<br>

The purpose of the network layer of the Internet is to send data packets from their source (point A) to their destination (point B) across multiple networks. Data packets are small pieces of information which include the data being sent and details like where it's coming from and where it's going. They can be thought of as small parcels of data that travel through the Internet. These parcels can take different paths to reach their destination and once they arrive they are put back together to form the original data.

<br>

The network operates on protocols like IP (Internet Protocol), which assigns unique addresses to devices on the Internet to ensure data reaches the correct location. The network layer handles the path selection and directs data packets through various routers and networks to reach its destination. This layer enables communication between devices in different networks, ensuring efficient delivery across the vast expanse of the Internet.

<br>

**The problem with the current model:**

<br>

The current model of the network layer relies heavily on traditional routing protocols and infrastructure, which often lead to inefficiencies and vulnerabilities. Centralized routing mechanisms may result in suboptimal path selection, leading to longer latency and decreased network performance. As highlighted in the picture below, the path that these data packets take in the current system can be very complex and ineffective. The reliance on a centralized architecture makes the network susceptible to single points of failure and cyberattacks. Traditional networks lack inherent privacy and security measures, leaving data vulnerable to interception and unauthorized access during transmission. The lack of scalability, reliability, and security of the current network model highlights the need for a new approach.

<br>

![Image](img/current_network.png#mx-auto)

Credit: Lazario Gamio, 2015, [The Washington Post](https://www.washingtonpost.com/graphics/national/security-of-the-internet/bgp/)

<br>

**The ThreeFold model:**

<br>

ThreeFold is disrupting the network layer through its new Mycelium technology, a true peer-to-peer mesh network. It is the only overlay network in the world capable of taking locality into consideration, routing decisions based on proximity between individuals, and selecting the quickest route possible. This addresses the current system’s suboptimal path selection as visualized above. In this new model data packets take the quickest route from point A to point B. Mycelium also ensures end-to-end encryption for all traffic, enhancing data privacy and security. This new 'always-on' network offers continuous connectivity and seamless access to resources, even in the face of network disruptions or outages. 

<br>

![Image](img/threefold_network.png#mx-auto)

Credit: Haseeb Qureshi, 2019, [Nakamoto](https://nakamoto.com/p2p-networking/)

<br>

### **Applications**

**What it is:**

<br>

At the top of the Internet stack are applications — the user-facing software that provides the services and experiences we interact with daily. Applications range from web browsers and social media to more complex systems like blockchain platforms and decentralized apps (dApps). They are the interface through which users interact with the digital world.

<br>

**The problem with the current model:**

<br>

The problem with the current model is the lack of control over our digital identities. Currently, users are scattered across numerous platforms, each hosting their data separately. This means that individuals exist in multiple instances online, with their personal information spread across different servers and databases controlled by different applications (visualized in the picture below). This fragmentation not only leads to redundancy but also raises concerns about security, privacy, and control over personal data. Users are forced to trust multiple third-party applications with their sensitive information, often without transparency or control over how their data is used or shared. The centralized nature of these applications exposes users to risks such as data breaches, unauthorized access, and exploitation of personal information for targeted advertising or other purposes. In the existing system, users are at the mercy of application providers, who dictate the terms of service and privacy policies. This asymmetry in power dynamics leaves users with limited options to protect their privacy or exercise control over their data. 

<br>

![Image](img/current_applications.png#mx-auto)

<br>

**The ThreeFold model:**

<br>

ThreeFold delivers a decentralized and user-centric approach to the application layer, empowering users and developers. By providing access to decentralized compute, storage, and networking resources, ThreeFold facilitates the development and deployment of decentralized applications (dApps) within its ecosystem. Unlike traditional centralized applications, which rely on proprietary infrastructure and are subject to the control of centralized entities, dApps built on ThreeFold operate within a decentralized environment increasing security and privacy. Users have greater autonomy and control over their digital identities and data. Instead of being scattered across numerous platforms with data hosted separately, users have one digital identity. This reduces fragmentation and eliminates the need to trust multiple third-party applications with sensitive information. In the ThreeFold model, applications are designed to serve the users rather than the other way round. 

<br>

![Image](img/threefold_applications.png#mx-auto)

<br>

### **Conclusion**

Understanding the Internet’s three layers is key to grasping the current digital landscape and envisioning the transformative potential of ThreeFold's technology. Just as tectonic forces reshape our physical world, ThreeFold is disrupting the layers of the digital world. By decentralizing compute & storage, ThreeFold eliminates the vulnerabilities in centralized models, fostering efficiency and security. Through Mycelium, ThreeFold is rewriting the rules of connectivity, ensuring resilience and security. At the application layer, ThreeFold empowers users, shifting the paradigm to user empowerment. It's a new dawn for the Internet, one where connectivity is inclusive, efficient, and equitable, and ThreeFold is leading the charge. Let’s seize the opportunity to shape an Internet that thrives locally, serves globally, and empowers universally.

<br>