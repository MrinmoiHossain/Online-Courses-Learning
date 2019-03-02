### ACC: Adaptive Cruise Control
- A cruise control system for vehicles which controls longitudinal speed. ACC can maintain a desired reference speed or adjust its speed accordingly to maintain safe driving distances to other vehicles. 

### Ego

- A term to express the notion of self, which is used to refer to the vehicle being controlled autonomously, as opposed to other vehicles or objects in the scene. It is most often used in the form ego-vehicle, meaning the self-vehicle.

### FMEA: Failure Mode and Effects Analysis

- A bottom up approach of failure analysis which examines individual causes and determines their effects on the higher level system.

### GNSS: Global Navigation Satellite System

- A generic term for all satellite systems which provide position estimation. The Global Positioning System (GPS) made by the United States is a type of GNSS. Another example is the Russian made GLONASS (Globalnaya Navigazionnaya Sputnikovaya Sistema).

### HAZOP: Hazard and Operability Study

- A variation of FMEA (Failure Mode and Effects Analysis) which uses guide words to brainstorm over sets of possible failures that can arise.

### IMU: Inertial Measurement Unit

- A sensor device consisting of an accelerometer and a gyroscope. The IMU is used to measure vehicle acceleration and angular velocity, and its data can be fused with other sensors for state estimation.

### LIDAR: Light Detection and Ranging

- A type of sensor which detects range by transmitting light and measuring return time and shifts of the reflected signal.

### LTI: Linear Time Invariant

- A linear system whose dynamics do not change with time. For example, a car using the unicycle model is a LTI system. If the model includes the tires degrading over time (and changing the vehicle dynamics), then the system would no longer be LTI.

### LQR: Linear Quadratic Regulation

- A method of control utilizing full state feedback. The method seeks to optimize a quadratic cost function dependent on the state and control input.

### MPC: Model Predictive Control

- A method of control whose control input optimizes a user defined cost function over a finite time horizon. A common form of MPC is finite horizon LQR (linear quadratic regulation).

### NHTSA: National Highway Traffic Safety Administration

- An agency of the Executive Branch of the U.S. government who has developed a 12-part framework to structure safety assessment for autonomous driving. The framework can be found here. https://www.nhtsa.gov/sites/nhtsa.dot.gov/files/documents/13069a-ads2.0_090617_v9a_tag.pdf

### ODD: Operational Design Domain

- The set of conditions under which a given system is designed to function. For example, a self driving car can have a control system designed for driving in urban environments, and another for driving on the highway.

### OEDR: Object and Event Detection and Response

- The ability to detect objects and events that immediately affect the driving task, and to react to them appropriately. 

### PID: Proportional Integral Derivative Control

- A common method of control defined by 3 gains.

1. A proportional gain which scales the control output based on the amount of the error

2. An integral gain which scales the control output based on the amount of accumulated error

3. A derivative gain which scales the control output based on the error rate of change

### RADAR: Radio Detection And Ranging

- A type of sensor which detects range and movement by transmitting radio waves and measuring return time and shifts of the reflected signal.

### SONAR: Sound Navigation And Ranging

- A type of sensor which detects range and movement by transmitting sound waves and measuring return time and shifts of the reflected signal. 