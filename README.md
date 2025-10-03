# 🤖 KUKA iiwa14 Robot Simulation with Gripper and Collision Analysis

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

## 🚀 How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/kuka-iiwa14-simulation.git
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
![Line Follower Robot](docs/robot.jpg)

🎥 Robot Simulation Video:  
https://studio.youtube.com/video/vAR7RZywHOg/edit


---


##  📖 License

This project is licensed under the **MIT License** – free to use, modify, and distribute.