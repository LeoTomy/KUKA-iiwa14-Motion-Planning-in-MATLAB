# 🤖 KUKA iiwa14 Robot Simulation with Gripper and Collision Analysis

![License](https://img.shields.io/badge/license-MIT-green.svg)
![Top language](https://img.shields.io/github/languages/top/LeoTomy/KUKA-iiwa14-Motion-Planning-in-MATLAB)


## 📖 Overview
This project demonstrates a MATLAB-based simulation of the **KUKA LBR iiwa14 robot arm** equipped with a gripper.  
The simulation visualizes robot motion, plans trajectories, and evaluates collision distances between the robot gripper and an object on a worktop.

---

## 📌 Features
- Import and visualize **KUKA iiwa14 robot model** with a custom **gripper**.
- Define a **work environment** with a worktop and a cuboid object.
- Use **inverse kinematics (IK)** to move the robot end-effector (TCP) to target poses.
- Generate **trajectory motion** using `trapveltraj`.
- Run a smooth **animation of the robot motion**.
- Perform **collision checking** and calculate the minimum distance between gripper fingers and the object.
- Plot results of **distance over time** to analyze approach safety.

---

## 🛠️ Requirements
- MATLAB with Robotics System Toolbox  
- URDF file for the **THWS Gripper** (`THWSGripper.URDF`)

---

## 🛠️ THWS Gripper URDF
The simulation uses a **THWS Gripper** attached to the KUKA iiwa14 robot.  
This gripper is imported using the URDF file: https://github.com/LeoTomy/KUKA-iiwa14-Motion-Planning-in-MATLAB/THWSGripper.URDF

---
## 🚀 How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/LeoTomy/KUKA-iiwa14-Motion-Planning-in-MATLAB
   cd kuka-iiwa14-simulation
2. Open MATLAB and make sure the project files are in your MATLAB path.
3. Run the main script: kuka_iiwa14_simulation.m
4. Interactively explore the robot configurations and trajectory animation.

---

## 📊 Output

Interactive robot visualization (interactiveRigidBodyTree)

Trajectory animation showing smooth motion between configurations

Collision distance plot between gripper and cuboid object

Example result:

A plot showing the minimum distance (cm) of the gripper fingers to the object over time.

## 🧭 Demo & Results
📷 Gripper-Object Distance Plot:  
https://github.com/LeoTomy/KUKA-iiwa14-Motion-Planning-in-MATLAB/blob/main/kuka_iiwa14_simulation.m

🎥 Robot Simulation Video:  
https://youtu.be/vAR7RZywHOg


---


##  📖 License

This project is licensed under the **MIT License** – free to use, modify, and distribute.
