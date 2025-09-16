---
id: QSS
title: "The Quantum Age Is Coming: Will Your Data Survive?"
image_caption: QSS
description: The quantum era is here, threatening encryption, blockchains, and security. ThreeFold’s Quantum Safe Storage delivers sovereign, resilient, and unbreakable protection for data in a post-quantum world.
date: 2024-06-21
taxonomies:
  people: [raj_mitra]
  tags: [tech,grid,community]
  categories: [tech,grid,community]
extra:
    imgPath: QSS_blog.png
---

The world is standing at the edge of a technological revolution. Quantum computing, once confined to theoretical discussions in labs, has begun breaking into reality. With advancements like [Google Willow](https://blog.google/technology/research/google-willow-quantum-chip/) and the race towards more powerful machines, quantum computers are an approaching storm, and most of us are not even close to being ready.

### The Quantum Threat to Security
For decades, the bedrock of digital trust has been cryptography. Public-key encryption (RSA, ECC), digital signatures, and hashing algorithms are what secure our bank accounts, blockchain transactions, confidential files, and online identities.

<br/>

But here’s the problem: quantum computers are tailor-made to break these very defenses. [Shor’s algorithm](https://en.wikipedia.org/wiki/Shor%27s_algorithm) allows quantum systems to factor large numbers and break asymmetric encryption at a speed classical computers could never match. Once a quantum machine with sufficient qubits (the basic unit of information used to encode data in quantum computing) and error correction is operational, today’s standard cryptography becomes obsolete.

<br/>

This danger unfolds in multiple ways:

- **Harvest-now, decrypt-later:** Encrypted data stolen today can be stored and easily decrypted by quantum machines in the future.
- **Compromised blockchains:** Bitcoin, Ethereum, and other cryptocurrencies are secured by vulnerable cryptography. A sufficiently advanced quantum computer could forge transactions or drain wallets.
- **Broken trust in communications:** VPNs, HTTPS, and secure messaging would be exposed, jeopardizing global internet security.
- **Critical infrastructure risk:** Power grids, defense systems, and financial networks could all be destabilized by quantum attacks.

<br/>

In short, quantum computing threatens the very assumption of “safety” on which the digital world has been built.

<br/>

For businesses, governments, and individuals alike, this presents both unparalleled opportunity and unprecedented danger.

#### Why Existing Systems Can’t Adapt Quickly 
Crypto networks, cloud providers, and enterprises face a brutal truth. It is absolutely critical for them to get quantum-safe.

<br/>

For blockchains, transitioning means changing the very essence of their algorithms, requiring contentious hard forks that could split communities and collapse valuations.

<br/>

For cloud storage providers, petabytes of vulnerable data are already locked in centralized infrastructures, making retrofitting costly and slow.

<br/>

For governments and enterprises, complacency is the biggest risk, assuming quantum is “decades away” when in reality, technological breakthroughs are accelerating faster than anyone expected.

<br/>

What’s needed isn’t retrofitting. It’s rethinking.


### Enter ThreeFold’s Quantum Safe Storage (QSS)
Zero-OS provides several core storage primitives like disks, volumes, and 0-DB. Quantum Safe Storage is constructed on top of these primitives, adding the encryption, encoding, and dispersion mechanisms that deliver a storage layer that is unbreakable, sovereign, and efficient.

<br/>

[QSS](https://manual.grid.tf/labs/knowledge_base/technology_toc/qsss_home/) is the productized form of Zero-OS storage, designed specifically for the quantum age. QSS packages its core advantages into a clear value proposition:

- **Quantum-Resistant Security:** Mathematically encoded fragments and post-quantum cryptography protect against future quantum attacks.
- **Immutable & Append-Only:** Data can’t be altered or erased, ensuring integrity forever.
- **Self-Healing:** Automatic detection and reconstruction of lost or corrupted fragments.
- **Sovereign & Compliant:** Data placement can be controlled geographically for governance and compliance.
- **Efficient:** Achieves redundancy with only ~20% overhead, compared to 400%+ for replication systems.

### The QSS Storage Stack
The storage stack is made up of three core layers:

- **ZDBFS (Zero-DB FS):** A filesystem abstraction layer that makes the system accessible to applications, developers, and end-users.
- **ZSTOR (Zero-Stor):** The encoding, encryption, and distribution engine that applies error-correcting codes and disperses fragments.
- **ZDB (Zero-DB):** The append-only, immutable storage daemon that directly interfaces with physical drives.

#### #1 ZDBFS (Zero-DB FS)
At the surface, Zero-OS offers the ZBDFS. In this layer, users and applications can interact with each other. To the user, ZBDFS feels like a familiar mounted filesystem. Beneath the surface, every action taken is translated into operations that the deeper architecture understands.

<br/>

When applications interact with ZDBFS, it passes those instructions down to ZSTOR, which performs the real work of encoding, encryption, and dispersal. On retrieval, ZBDFS orchestrates the reverse process, seamlessly reconstructing files from distributed fragments.

<br/>

The filesystem itself is robust at scale:

- It can hold petabytes of data
- Manage up to two million files per instance
- Transfer at speeds of 100 MB/s
- It is optimized for larger objects. 

<br/>

Metadata is redundantly maintained with configurable consistency, typically within a fifteen-minute window, ensuring durability without compromise.

#### #2 Zero-Stor (ZSTOR)
In ZSTOR, raw input becomes mathematically encoded resilience. When data enters ZSTOR it goes through the following stages:

- The data is compressed to conserve space, then encrypted with user-defined keys
- Forward error correction transforms it into fragments redundant yet efficient equations that can survive node failures without loss.
- These fragments are distributed across multiple Zero-DB backends, with metadata carefully managed to map locations, redundancy, and integrity.

<br/>

ZSTOR also watches over data. A built-in monitoring layer continuously checks the health of every connected device, automatically rebuilding missing fragments if one goes dark. ZSTOR can even synchronize across clusters in real time, ensuring redundancy and failover across geographies.

#### #3 Zero-DB (ZDB)
Unlike conventional storage engines, ZDB is designed for simplicity. It is append-only by default. New data is added sequentially, references update to the latest version, and old data remains as history. Mutation or deletion requires a compaction process, which is possible but not part of normal operation.

<br/>

ZDB is a general-purpose data store. It can hold entire unencrypted objects or the fragmented shards used by ZBDFS, and the engine itself remains indifferent to the content.

### Scalability in QSS
QSS is built to scale outward, not upward. Each use case runs on its own dedicated instance of ZBDFS and ZSTOR, which connect to a constellation of ZDBs spread across the grid. A typical configuration uses around twenty or more, but the exact number is configurable by the user.

<br/>

These components can be distributed across geographies, giving the system reach without sacrificing integrity.

<br/>

There is no ceiling here. The architecture can support an unlimited number of ZBDFS and ZSTOR instances, each operating independently yet harmoniously. Since data is always processed and consumed at the place of its creation, latency is minimized and sovereignty preserved.

<br/>

The result is a storage fabric that grows horizontally, node by node, instead of demanding ever more powerful centralized machines.

### The Maths Behind QSS
Replication is the crutch of conventional storage. QSS leaves it behind. A file, once ingested, is broken into sixteen fragments. From those fragments, twenty equations are born. Any sixteen of those equations can rebuild the whole. Four nodes may vanish from the network, and the data remains untouched, its integrity intact.

<br/>

Where traditional systems bloat themselves with 400% overhead just to promise redundancy, QSS achieves it with only 20%.

<br/>

**Example Implementation**

Imagine a piece of data split into three fragments with values:

- a = 1
- b = 2
- c = 3

Instead of storing these fragments directly, the system encodes them as equations:

- a + b + c = 6
- c − b − a = 0
- b − c + a = 0
- 2b + a − c = 2
- 5c − b − a = 12
- …and more.

<br/>

At first glance this looks like overkill: why so many equations for just three unknowns?

<br/>

Here’s the math behind it:

<br/>

In a system with three variables (a, b, c), only three linearly independent equations are needed to uniquely recover them.

<br/>

Any set of more than three equations will be linearly dependent—they don’t add new information but can be expressed as combinations of the others.

<br/>

From a storage perspective, that means only three equations are strictly necessary.

<br/>

So why generate extra equations? For resilience. If some equations are lost or corrupted, the system can still pick any valid set of three independent ones and reconstruct the original fragments. This redundancy ensures the data remains recoverable even under failure.

<br/>

In production, the model scales. A typical configuration splits each object into sixteen fragments, then produces twenty equations, each stored on a separate device. To rebuild the data, only sixteen of the twenty are required. The system can lose four entire nodes and still recover the file without corruption.

<br/>

This mathematical method achieves redundancy with just 20% overhead, compared to the 400% overhead demanded by traditional replication systems. 

### Deploy Quantum Safe Storage
The [Quantum Daemon](https://github.com/threefoldtech/quantum-storage/blob/master/quantumd/README.md) is designed to manage all aspects of QSS that don’t fit neatly into the roles of the core components. Its goal is to simplify deployment, operation, and recovery of QSS into a single binary with a single config file.

#### Responsibilities
The daemon takes care of:

- **Backend deployment:** Initial deployment of backend zdbs and replacement of failed backends during operation.
- **Service management:** Installation of all required binaries and creation of system services (supports both systemd and zinit).
- **Event handling:** Processing hook events from zdb (replacing legacy shell scripts).
- **Data integrity:** Running checks and retries for failed uploads.
- **Config management:** Providing a single central config file for end users (QSS component configs and CLI args are generated automatically).
- **Recovery:** Automated restoration of QSS onto a new machine in case of frontend failure.
- **Simplified operation:** One binary and one config file can bring up the whole system.

#### Usage
A subset of functionality is already implemented, with heavy changes expected as the project evolves. Today, QSS can already be deployed with quantumd using either local or remote backends.

- Local backends are useful for testing, and can be spun up quickly with a single command.
- Remote backends are used for real deployments, requiring a TFChain account and configuration details.
- Daemon mode handles retries, hooks, and caching in the background once set up.

For step-by-step installation and deployment instructions, [see the official deployment guide](https://github.com/threefoldtech/quantum-storage/blob/master/docs/03_deployment.md).

### Comparing QSS With Traditional Storage Solutions
Here is a comparison between QSS and traditional storage to show how it outperforms conventional systems.


| | **QSS** | **Traditional Storage Solutions** |
| --- | --- | --- |
| **Scalability** | Horizontally scalable architecture with no theoretical size limitations | Variable scalability |
| **Compatibility** | High compatibility through the abstraction layer | Varies by implementation |
| **Performance** | Optimized for reliability | Variable performance characteristics |
| **Redundancy Efficiency** | With a 16–20 node setup, QSS achieves 4-node failure tolerance with only ~20% overhead. The overhead changes depending on the cluster size. This flexibility means QSS can be tuned to balance redundancy and efficiency for different deployment needs. | Typically 400-500% overhead (4-5 complete copies) for equivalent redundancy |
| **Compute Integration** | Integrated with Infrastructure-as-Code tooling | Diverse integration approaches with varying complexity |
| **Geographic Control** | User-controlled data placement with geographic autonomy | Limited geographic control due to centralized routing |
| **Security Architecture** | Implements mathematical encoding and encryption | Conventional encryption models |
| **Post-Quantum Readiness** | Implements post-quantum cryptographic algorithms | Not designed with quantum resistance |

### In Closing
ZDBFS, ZSTOR, and ZDB form a storage stack that balances performance, sovereignty, and quantum resistance. Whether deployed for simple file storage, global applications, or blockchain-grade data integrity, QSS offers enterprises and governments a way to move beyond the vulnerabilities of conventional storage and prepare for the quantum era.

