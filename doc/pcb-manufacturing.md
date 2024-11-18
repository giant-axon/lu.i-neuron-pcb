# Manufacturing of Lu.i boards
With every [release](../../../releases), we provide the necessary production files for orders at [JLCPCB](https://jlcpcb.com/).
We have used this manufacturer for over 1000 boards in multiple batches for the fabrication of the actual PCB as well as its assembly (PCBA).

> [!CAUTION]
> Although we never had issues during production and publish the production files to the best of our knowledge, we cannot take any liability for failed/disfunctional production runs.
Use this manual at your own risk.

## File structure
In our releases, you will find a file called `jlcpcb.zip`, which contains the following files:
```
jlcpcb.zip
├── …
├── production_files
│   ├── BOM-neuron.csv
│   ├── CPL-neuron.csv
│   └── GERBER-neuron.zip
└── …
```

* **GERBER-neuron.zip** contains the PCB production data in Gerber format, i.e., the layout of connections on the board, drilling information etc.
* **BOM-neuron.csv** contains the *bill of materials*, i.e., a list of all components on the board 
* **CPL-neuron.csv** contains the *component placement* information, i.e., where the components from the BOM should be placed during assembly

## Ordering process
Once you have created an account at JLCPCB and logged in, you can

### 1. Construct the PCB
- Upload the `GERBER-neuron.zip` and wait for processing
- The web interface wil automatically determine the number of layers (2), PCB size etc.
- Specify your *Lu.i* version at will, most importantly: PCB quantity.
  We've found that purple works great as PCB color.
  The design has no special requirements on copper weight, via structure etc. – the defaults should be good enough
- We like to remove the order number to clean up the silk screen
- We usually ask for a confirmation of the production file

### 2. Configure PCBA
- Enable the PCBA option (let JLCPCB assemble all components for you)
- Since *Lu.i* has components on both sides, a full production run requires "Standard" type and double-sided assembly.
- Just to be sure, we usually ask for a confirmation of the parts placement

> [!TIP]
> The bottom side only contains the battery holder and power switch.
Experts may select "top only" assembly, order remaining components independently and solder themselves.

### 3. Process BOM and CPL file
- In the next step, JLCPCB will ask you for the BOM and CPL files
- After processing, you may need to select alternative parts in case of shortfall (depends on your order quantity).
  For this step, a background in electronics can be handy.
  Alternatively, you may try to wait until missing components are re-stocked.
  If in doubt, ask your local expert :)
- Check the 3D model for obvious misplacement of any component

### 4. Place the order
> [!NOTE]
> *Lu.i* is published under the very permissive [CERN-OHL-S](../LICENSE) license.
If you want to fabricate your own version, please make sure to check that potential modifications comply.

- To add the design to your cart, you will need to specify a product category.
  We usually use `Education/Others` and mention the `TARIC ID 902300` ("Instruments, apparatus and models designed for demonstrational purposes, e.g. in education or exhibitions, unsuitable for other uses")
- Place and pay for the order

### 5. Post-order information
- JLCPCB will embed each *Lu.i* board in a rectangular frame to enable processing and assembly.
  When confirming the production files, make sure that the engineers don't place too many breakaway tabs (4 has worked for us in the past) – you will need to file these off manually to ensure safe handling.
  Make sure that they are not placed at the membrane voltage edge connectors.

## Post-production
- Once you receive your order, break out the individual neuron boards from their frame
- File/mill off sharp remainders of the breakaway tabs
- We are always happy to receive pictures of your orders at [info@giantaxon.org](mailto:info@giantaxon.org)! :)
