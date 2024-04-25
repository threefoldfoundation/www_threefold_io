---
id: machine_learning
title: "Deploy Machine Learning Workloads on the ThreeFold Grid"
image_caption: Machine Learning on ThreeFold Grid
description: Deploy machine learning workloads on a decentralized cloud
date: 2024-05-01
taxonomies:
    people: [mik_perreault]
    tags: [threefold_grid, cloud, Peer_to_peer]
    categories: [foundation]
extra:
    imgPath: machine_learning.png
---

## Introduction

We present a basic method to deploy artificial intelligence (AI) and machine learning (ML) on the TFGrid. For this, we make use of dedicated nodes and GPU support.

In the first part, we show the steps to install the Nvidia driver of a GPU card on a full VM Ubuntu 22.04 running on the TFGrid.

In the second part, we show how to use PyTorch to run AI/ML tasks.

## Get Started

All you need to deploy workloads on the grid is a [wallet](https://manual.grid.tf/documentation/dashboard/wallet_connector.html) filled with some TFT. You can create a TFChain wallet on the Dashboard, then [buy](https://manual.grid.tf/documentation/threefold_token/buy_sell_tft/buy_sell_tft.html) TFT and [bridge](https://manual.grid.tf/documentation/threefold_token/tft_bridges/tfchain_stellar_bridge.html) it to your TFChain wallet.

With TFT, you can rent a [dedicated machine](https://manual.grid.tf/documentation/dashboard/deploy/dedicated_machines.html) on the grid and deploy a [full VM](https://manual.grid.tf/documentation/dashboard/solutions/fullVm.html) on it.

## Set your Node

First, we set the virtual machine.

```
dpkg --add-architecture i386
apt-get update
apt-get dist-upgrade
reboot
```

You can use the following lines to check the GPU info.

```
lspci | grep VGA
lshw -c video
```

## Set the GPU

We now download the latest Nvidia driver.

We start by checking which driver is recommended

```
apt install ubuntu-drivers-common
ubuntu-drivers devices
```

Then, we install the recommended driver (e.g. with 535).

```
apt install nvidia-driver-535
```

Once this is done, reboot and reconnect to the VM. Then you can check the GPU status

```
nvidia-smi
```

Now that the GPU node is set, let's work on setting PyTorch to run AI/ML workloads.

## Set a Python Virtual Environment

Before installing Python package with pip, you should create a virtual environment.

Install the prerequisites to set the virtual environment.

```
apt update
apt install python3-pip python3-dev
pip3 install --upgrade pip
pip3 install virtualenv
```

Create a virtual environment with Python

```
mkdir ~/python_project
cd ~/python_project
virtualenv python_project_env
source python_project_env/bin/activate
```

## Install PyTorch and Test Cuda

Once you've created and activated a virtual environment for Python, you can install different Python packages.

Install PyTorch and upgrade Numpy

```
pip3 install torch
pip3 install numpy --upgrade
```

Before going further, you can check if Cuda is properly installed on your machine.

Check that Cuda is available on Python with PyTorch by using the following lines:

```
import torch
torch.cuda.is_available()
```

The ouput should be `true`.

## Set and Access Jupyter Notebook

You can run Jupyter Notebook on the remote VM and access it on your local browser.

Install Jupyter Notebook

```
pip3 install notebook
```

Run Jupyter Notebook in no-browser mode and take note of the URL and the token

```
jupyter notebook --no-browser --port=8080 --ip=0.0.0.0
```

On your local machine, copy and paste on a browser the given URL but make sure to change 127.0.0.1 with the WireGuard IP (here it is 10.20.4.2) and to set the correct token.

```
http://10.20.4.2:8080/tree?token=<insert_token>
```

## Run AI & ML Workloads

After following the steps above, you should now be able to run Python codes that will make use of your GPU node to compute AI and ML workloads.

Let’s create a new Jupyter notebook and run some codes.

```
from transformers import pipeline
classifier = pipeline("sentiment-analysis")
classifier(
    [
        "This code is running on the decentralized ThreeFold grid.",
        "I love exploring machine learning!",
    ]
)
```

Here we use the Transformers Python library to obtain sentiment analysis of texts.


```

from transformers import pipeline

classifier = pipeline("zero-shot-classification")
classifier(
    "This guide showed how to use machine learning with Python on the ThreeFold grid.",
    candidate_labels=["education", "politics", "business"],
)

```

Here we use Transforms Python library to obtain to analyze sentences and categorize them.

You can try different pipelines to explore machine learning at a glance.

This is just the start. Once you prepared your virtual machine to run machine learning, you can write codes and explore as you wish.

## Questions and Feedback

If you have any questions or feedback, please let us know by either writing a post on the [ThreeFold Forum](https://forum.threefold.io/), or by chatting with us on the [TF Grid Tester Community](https://t.me/threefoldtesting) Telegram channel.