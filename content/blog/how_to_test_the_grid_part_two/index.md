---
id: how_to_test_the_grid_part_two
title: ThreeFold Grid Testing - Overview of Manual and Automation Testing
image_caption: technology
description: Go deeper in the exploration of testing the ThreeFold Grid. Learn about two types of testing which combine to ensure a strong and dependable grid.
date: 2024-05-09
taxonomies:
  people: [bernadette_amanda_caster]
  tags: [technology,threefold_grid]
  categories: [farming,cloud,foundation]
extra:
    imgPath: how_to_test_the_grid_part_two.png
---

In our [last post](https://www.threefold.io/blog/how-to-test-the-grid-part-one/), we started to explore what it means to test the ThreeFold Grid by highlighting the key processes and the benefits or reasons. Now, we continue our discovery path through the detailed testing process. In this post, we go deeper into two different ways of testing: Manual and Automation. Each is important, combining to ensure a strong and dependable TF Grid.

### **Manual Testing**

The thorough [manual inspection](https://manual.grid.tf/knowledge_base/collaboration/testing/testing_readme.html?highlight=manual%20testing#manual-testing) of components using the [Testlodge tool](https://manual.grid.tf/knowledge_base/collaboration/testing/testlodge.html) is at the core of our testing process. This tool acts as our guide, leading us through an array of test cases customized for each grid component. We guarantee comprehensive coverage of all grid components by organizing tests manually in specific test suites.

<br/>

When a release candidate arrives from the development phase, our manual test executions come into play. Through meticulous examination, we confirm the smooth operation of each component. Any inconsistencies found during testing are promptly recorded using GitHub issues, facilitating quick resolution in future iterations.

<br/>

Components such as Dashboard & Deployments, Mycelium, TF-Robot, Terraform, TF-Grid-Client, TF-Grid-Proxy, TF chain, Caprover, Kubernetes, and Farmerbot are examples of what undergoes our scrutiny.

### **Why Manual Testing is Important:**

Any new changes added to the grid should first undergo manual testing before going through automation testing. The fundamental principle of testing is that “100% automation is not possible” which makes manual testing necessary.

<br/>

The main idea behind manual testing is to make sure that the grid is free of errors and that it is operating following the stated functional requirements in the manual and documentation. Additionally, it ensures that developers fix reported faults and that testers retest them.

<br/>

Also, manual testing simulates the real-time behavior of the end user and how they think when they use our TF Grid solution, which allows us to do better UX design to meet everyone's expectations.

<br/>

![Image](./navigating_levels.png#mx-large)

### **Automation Testing**

[Automation scripts](https://manual.grid.tf/knowledge_base/collaboration/testing/testing_readme.html#automation-testing) are essential in strengthening our testing capabilities and our manual efforts. By utilizing [GitHub actions](https://github.com/threefoldtech/tfgrid-sdk-ts/actions), we run automated scripts daily to gain early insights into the health of the TF Grid. Our in-house automation tool, [TF-Robot](https://manual.grid.tf/documentation/developers/tfrobot/tfrobot.html?highlight=TFRo#), leads the deployment process on the grid with exceptional efficiency.

<br/>

TF-Robot is a cornerstone of automation, streamlining the deployment of various virtual machines across the ThreeFold Grid. With its capacity to manage large-scale deployments and offer multiple retries for unsuccessful attempts, TF-Robot enables users to navigate the grid seamlessly. Additionally, we leverage its functionalities to ensure the viability of registered nodes by deploying on active nodes regularly to confirm their suitability for deployment.

<br/>

We use GitHub Actions to run our automated tests. These tests – ranging from testing solution deployments, to the status / health of all nodes, to the dashboard UI – are triggered by certain behaviors or activities:

<br/>

- Any code change triggers certain tests
- Tests also run during code reviews
- Some tests run every day, like the Grid Client Nightly and Grid Client Tests
- Other tests run every 6 hours, like Mass Deployments

### **Why Automation Testing is Important:**

Automation testing speeds up the testing process significantly compared to manual testing. Automated tests can run anytime, including nights and weekends, allowing for continuous testing and faster development cycles. This reduces testing time and labor costs, making it a cost-effective approach in the long run.
Automation helps identify issues and defects in the software early in the development process, making them easier and less expensive to fix. Automated test scripts are reusable and can be used throughout different phases of development, even if there are changes in the software's user interface.

<br/>

Sometimes, a node may be misconfigured or have defective hardware. In our automation testing, we run tests like Mass Deployer or TF-Robot, which loop over all online nodes and attempt deployments on them to detect problematic nodes or misconfigured ones early.

<br/>

Additionally, nightly test runs for different test suites (dashboard UI, TS client) can detect incorrect code deployments early and alert developers to fix the pushed code that may affect unexpected parts of the project.

### **How to Report an Error/Issue/Bug Found While Testing:**

All errors found during testing are reported [on GitHub](https://github.com/threefoldtech/tfgrid-sdk-ts/issues). Based on findings, the repository has two templates to choose from: Bug Report and Feature Request. Follow these steps:

<br/>

1. Click on the provided GitHub link.
2. Choose "New Issue."
3. Select either of the templates and fill it out accordingly.
4. Click on "Submit."

<br/>

One of our developers will then work on resolving the issue. We have already fixed over 1,200 issues to date.

<br/>

Testing is a key aspect of maintaining a reliable cloud infrastructure. Because testing is such a thorough process, we can catch and correct bugs before they make their way to mainnet, our “production” environment. A big thanks to all those who have contributed to testing the grid to date, and we invite anyone to [join the testing community](https://t.me/threefoldtesting) and take part in ensuring a smooth and reliable ThreeFold Grid.