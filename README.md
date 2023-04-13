# Scalable-Systolic-Array-Multiplier-Optimized-by-Sparse-Matrix

## Systolic Array
Systolic arrays are hardware structures built for fast and efficient operation of regular algorithms that perform the same task with different data at different time instants.The typical dataflows for systolic array includes the output stationary, weight stationary and input stationary.

### Output Stationary Systolic Array
In output stationary architecture, the results stay and the inputs and weights move in opposite directions.Each PE stores and accumulates the partial results. The x(i)'s and w(i)'s move systolically in opposite directions, such that when an x meets a w, they are computed and result is added to the partial result at that PE.
### Weight Stationary Systolic Array
In weight-stationary architecture, the weights are pre-loaded into the computation units and the activations are marched in from the activation storage buffer.The weights stay stationary and the inputs are streamed in.
### Input Stationary Systolic Array
In Input-stationary architecture, the Inputs are pre-loaded into the computation units and the activations are marched in from the activation storage buffer.The inputs stay stationary and the weights are streamed in. 
## Sparse Matrix

## Traditional Sysytolic Array Structure

<img width="411" alt="trad_sys" src="https://user-images.githubusercontent.com/62790565/231377915-721fb2e0-b571-447d-96cb-5566a283bdb0.png">

## Proposed Systolic Array Structure

<img width="413" alt="prop_sys" src="https://user-images.githubusercontent.com/62790565/231378627-911d48df-6139-4c0d-b587-f5bce096ba1f.png">

