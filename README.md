# Traffic_Light_Controller

<h3 align="center"> Project Creators: Soumya Raj, Kartikey Sharma, Naveen Mahanwal, Manu Mahajan </h3>

Traffic Light Controller is a VHDL project simulating a real life traffic controller and has various components to ensure it's proper functionality.

The heart of the system is a Finite State Machine (FSM) that
directs the unit to light the main and side street lights at
appropriate times for the specified time intervals. This unit
depends on several inputs which are generated outside the
system.

### System Overview
A set of 4 traffic lights have been designed for a 4-way
junction as shown in the figure. Only one green signal will be
activated at a time. We give a continuous clock input. This
design uses a standard two process finite state machine
where one process is used to change states on every clock
cycle while the other process is used to combinatorially
calculate what the next state should be based on the current
inputs and the current state.

### Components Implemented
- Finite State Machine (FSM)
- Arbiter Circuit (for prioritising the traffic lights)

### Simulation Images

<p float="center">
  <img src="https://github.com/KartikeySharma/Traffic_Light_Controller/blob/master/imgs/SIMULATION_1.png" height="250" />
  <img src="https://github.com/KartikeySharma/Traffic_Light_Controller/blob/master/imgs/SIMULATION_2.png" height="250" /> 
</p>
