# Learner's Guide
Use this file to learn about the space-time model used in this project


## Introduction
Mathematical modeling is the necessary prerequisite towards understanding, diagnosing, and solving the world's issues. When faced with problems like geographical modeling, the task becomes a degree harder. This is because physical space has many dimensions, and it is difficult to plot data on a 2D graph. Furthermore, there are many layers in a network, and they are all interconnected, so it becomes hard to track all the different components. Example problems that require mathematical modeling include finding the least-cost route, tracking shipments from various warehouses to different depots, and arranging pickup and drop-off of passengers.

As stated in the README file, the GMNS framework is a new way to store and read csv files for geographical data. The NeXTA-GMNS software creates a visual network for using those files, made out of static **nodes** and **links** which join various nodes. Space-time diagrams attempt to model that network on a 2D graph. 


## Constructing a model
The following sections use the ideas from Mr. Yongxiang (John) Zhang and Dr. Xuesong (Simon) Zhou in their open-source space-time diagram visualization tool for GMNS (https://github.com/YXZhangSWJTU/space-time-diagram_gmns). To make a space-time model, you will need to create 3 files and have Python version 3 or newer on your computer. The GMNS system requires all files to be in the csv format. See the example folder and follow along.

### File: node.csv
This file contains data on the nodes of the network, which can be intersections, parks, food banks, or beaches. This file has 4 standard columns. Their names and functions are described below.

|column|function|
|---|---|
|name|(optional) what is the name of this node?|
|node_id|assign each node a unique identifier|
|x_coord|the x-coordinate of the node's location. It can be in any units that you prefer|
|y_coord|the y-coordinate of the node's location. It can be in any units that you prefer|

In the food bank example, we have 6 nodes, each being a different food bank. %insert description here

### File: road_link.csv
This file contains data about the roads--or links--connecting the nodes. This file has 7 standard columns. Their names and functions are described below.

|column|function|
|---|---|
|name|(optional) what is the name of this link?|
|road_link_id|assign a unique identifier to each link|
|from_node_id|which two nodes does this link connect? assign one as the "from" node and the other as the "to" node|
|to_node_id|see above|
|length|the length of the link, in the same units that x_coord and y_coord were assigned|
|display_sequence|this is the order that the nodes will appear in on the space-time diagram. take a look at the to_node_id and make sure any duplicates are labeled as "-1" in display_sequence", otherwise multiple copies of the to_node_id (if not labeled in display_sequence as -1) will appear on the space-time diagram.|

At this point, if you would like to visualize the network, refer to the NeXTA-GMNS software (https://github.com/xzhou99/nexta-gmns) and follow the instructions to download the package. The network should look like this: %insert image here

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
Now, we will take the data from all 3 files and construct the actual visual. In this example, we will use the files for a food bank network. You can access these files in the examples folder. Download them to your computer, then open the file space_time.py. For now, just run the program. The picture below should show up:

![](https://github.com/xzhao31/project/blob/master/space-time-model/example/image.png)

We have 6 nodes in the file node.csv, and they are all lined up on the y-axis. Links can be seen in road_link.csv and can be visualized using the NeXTA-GMNS software. In our food bank example, there are 4 agents. As an example, agent 1 travels from Matthew's Crossing at 5:04 to Resurrection Street Ministry at 5:05. Agent 2 starts from United Food Bank, makes stops at Paz de Cristo Community Center, Resurrection Street Ministry, Tempe First United Methodist Church, then ends at Society of St. Vincent de Paul. The space-time diagram is a way to see the progress of one or many vehicles along various paths. It would be rather difficult to show both space and time on a 2D map, so the space-time diagram is effective in depicting that.


## Applications


## Make your own!
Now that you know how to make space-time diagrams for a simple food bank network, you should try to create your own network and use this method to model it! Just follow the examples for creating files, and work from there.
