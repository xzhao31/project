# Learner's Guide
Use this file to learn about the space-time model used in this project

## Introduction
stuff

## Constructing a model
To make a space-time model, you will need to create 3 files and have Python version 3 or newer on your computer. The GMNS system requires all files to be in the csv format. See the example folder for information about how to format your data.

### File: node.csv
### File: road_link.csv
### File: agent.csv
This file contains data about each agent that travels through the network, whether it be trucks, cars, or dogs. This file has 6 standard columns. Their names and functions are described below.

|column|function|
|---|---|
|agent_id|assign each different agent traveling through the network a unique ID|
|o_node_id|the origin node ID. Which node is the agent coming from?|
|d_node_id|the destination node ID. Which node is the agent going to?|
|agent_type|depending on the situation, you will need to categorize the agent. For example, is it fast, medium, or slow? This column will determine the color of the line in your space-time graph|
|node_sequence|the order in which your agent travels to each node. Does it stop at 5 nodes before arriving at its destination, or does it take a direct path?|
|time_sequence|the time that the agent arrives at each node. For example, at minute 2, it arrives at node 2, and at minute 3, it arrives at node 4|


### Python code
Now, we will take the data from all 3 files and construct the actual visual. Open the file space_time.py
