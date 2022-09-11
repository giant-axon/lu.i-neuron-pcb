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

![](doc/animation.gif)

## Example Networks
Because the neurons can be connected with each other, we can build networks out of them and in the following we want to describe some simple networks.

### Synfire chain
![](doc/tikz/synfirechain.svg)
The name synfire chain is an abbreviation for synchronous firing chain and describes a circular feed-forward chain, in which activity travels from layer to layer.
When suitably configured, a spike in one of our neurons will elicit a consecutive spike in the next neuron in the chain.

This can also be put in a circular shape where the activity travels indefinitely.
![](doc/tikz/synfirering.svg)

### General hierarchical network
![](doc/tikz/hierarchical.svg)

### Solving the XOR problem rate based
![](doc/tikz/hierarchical_xor.svg)


## Circuits

### Leaky integrator

![leaky-integrator](https://user-images.githubusercontent.com/175670/189528439-84f5fa99-e8dd-4edf-aba1-f1f1033e523d.png)

### Firing mechanism
![reset](https://user-images.githubusercontent.com/175670/189528443-891a017c-b192-4f26-8734-1af3a4c02263.png)
and refractory period

### Synapses
![synapse](https://user-images.githubusercontent.com/175670/189528447-8921455d-16ae-4b91-8e19-7236ed268995.png)

---

<a name="footnote-1">¹</a> The name »Lu.i« (phonetic notation of »Louis«) is a tribute to Louis E. Lapicque, who first formulated the leaky integrate-and-fire equations modeling the dynamics of a neuron.
