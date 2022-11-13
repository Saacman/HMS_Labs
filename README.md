# Hardware Modelling & Simulation
Repo for the HMS class at TU Dresden

## Lab 1 - Structural Model I: Architecture, Entity, Components, Signals, Generics
### N-Bit Adder
This adder only uses Full Adders as components. The bit width of the adder is generic.

![Adder](img/lab1/n_adder_tb.png)

Using a test bench we can verify the behavior of the adder.

![Simulation](img/lab1/adder_simulation.png)

### N-Bit Comparator
A comparator circuit, as its name implies, compares binary words to check their equality. Some comparators interpret their inputs as numbers (with or without sign) and indicate an arithmetic relationship between them (greater than or less than, for example). Such circuits are called magnitude comparators.

![Equations](img/lab1/comparator_eq.png)

We can cascade the 1-bit comparator to compare two 4-bit words (`A[3:0] and B[3:0]`). This new entity has, beside the inputs A and B, three outputs: greater than (`AGTBOUT`), less than (`ALTBOUT`) and equal to (`AEQBOUT`) and cascading inputs for comparing more than 4 bits (`AGTBIN, ALTBIN and AEQBIN`).

![Comparator](img/lab1/4bit-comparator.png)