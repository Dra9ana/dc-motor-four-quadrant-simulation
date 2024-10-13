# Four-Quadrant Chopper DC Motor Simulation

## Project Overview

This project involves simulating a four-quadrant chopper that powers a DC motor, as part of the course "Control of Electric Motor Drives." The objective is to design a control system that effectively manages motor performance under various operational conditions.

### Key Objectives:
- Develop a simulation block diagram using Simulink.
- Implement control algorithms for speed and current regulation.
- Analyze the motor's response to predefined speed and load changes.
- Utilize MATLAB for calculations and confirmations of results.

## Project Details

### Requirements:
- Create a simulation block diagram for a four-quadrant chopper.
- Choose appropriate control loop structures and block parameters.
- Implement filters for current and voltage measurements.
- Design PI regulators for current and speed control.
- Demonstrate system behavior through response simulations.

### Important Parameters:
- Motor Specifications:
  - Nominal Voltage (Un): 230 V
  - Nominal Current (In): 26 A
  - Nominal Speed (nn): 1430 rpm
  - Armature Resistance (Ra): 0.9 Ω
  - Armature Inductance (La): 25 mH
  - Inertia (J): 0.5 kg·m²

- Chopper Specifications:
  - DC Link Voltage (Udc): 250 V
  - Switching Frequency (fc): 1 kHz

### Control Structure:
- Implemented filters:
  - Current filter with time constant \(T_{pi} = 2.6 \, ms\)
  - Voltage filter with time constant \(T_{pu} = 2.6 \, ms\)
  - Speed feedback filter with time constant \(T_{\omega} = 5 \, ms\)

- PI Controllers:
  - Current PI Controller
  - Speed PI Controller

## Implementation

### MATLAB Functions:
1. **Soft Start Function**: Gradually ramps speed to nominal over 2 seconds.
2. **Current Regulation**: Includes calculations for current loop dynamics.
3. **Speed Regulation**: Manages the motor speed control logic.
4. **Low-Pass Filters**: Smoothens the measurements of voltage, current, and speed.

### Simulink Model:
- A comprehensive model is constructed to visualize and analyze the control strategies and motor performance.

### Results and Analysis:
- Simulations depict the motor response to rapid speed changes and varying load conditions.
- Time diagrams illustrate how the control system stabilizes motor operation under specified conditions.

## Conclusion

This project successfully demonstrates the principles of motor control and simulation techniques. The analysis of motor performance under various conditions offers valuable insights into the dynamics of electric drive systems.
