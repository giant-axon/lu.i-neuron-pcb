# Lu.i[¹](#footnote-1) – an educational neuron PCB

Lu.i is an electronic neuron circuit mimicking and illustrating the basic dynamics of real, biological neurons.
The printed circuit board (PCB) features a configurable, fully analog implementation of the leaky integrate-and-fire model and visualizes the internal state, the *membrane potential*, through a VU-meter-style chain of LEDs.
The neuron emits a short pulse whenever the membrane potential crosses a predefined threshold voltage.
Neurons communicate by exchanging these *spikes*.
Multiple boards can be connected via jumper wires to form networks.

![](doc/photograph-coin.jpg)

## Features

- fully analog implementation of the leaky integrate-and-fire model
- configurable leak potential and membrane time constant
- three synapses with tunable weight and sign (excitatory or inhibitory)
- three output terminals to forward spikes to other neurons
- VU-meter-style visualization of the membrane potential and spike LED
- optimized for low-cost production (~ 3 € per neuron)

![](doc/animation.webp)


## Example Networks

Very much resembling the structure of the nervous system, multiple *lu.i* boards can be connected to form even complex neural networks.
The latter may simply serve illustrative purposes, mimick biological behavior, or even solve functional tasks.
The following hierarchical network, e.g., implements an *exclusive OR* (XOR).

![](doc/figures/example-networks/hierarchical_xor.png)

For a more extensive list of example networks please refer to [*lu.i*'s documentation](doc/example-networks.md).


## Circuits

### Leaky integrator
![leaky-integrator](https://user-images.githubusercontent.com/175670/189981274-81cd3b70-414f-4f70-bc67-193bad2581c4.png)

### Firing mechanism and refractory period
![reset](https://user-images.githubusercontent.com/175670/189981287-a6f1e051-edd6-414d-b50f-ba3afb94ade9.png)

### Synapses
![synapse](https://user-images.githubusercontent.com/175670/189981309-f7842ae6-b764-4464-a458-433a2358af77.png)

---

<a name="footnote-1">¹</a> The name »Lu.i« (phonetic notation of »Louis«) is a tribute to Louis E. Lapicque, who first formulated the leaky integrate-and-fire equations modeling the dynamics of a neuron.
