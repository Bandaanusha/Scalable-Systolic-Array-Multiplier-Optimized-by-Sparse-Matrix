# **Scalable-Systolic-Array-Multiplier-Optimized-by-Sparse-Matrix**

## **Introduction**

## Systolic Array
Systolic arrays are hardware structures built for fast and efficient operation of regular algorithms that perform the same task with different data at different time instants.The typical dataflows for systolic array includes the output stationary, weight stationary and input stationary.

### Output Stationary Systolic Array
In output stationary architecture, the results stay and the inputs and weights move in opposite directions.Each PE stores and accumulates the partial results. The x(i)'s and w(i)'s move systolically in opposite directions, such that when an x meets a w, they are computed and result is added to the partial result at that PE.
### Weight Stationary Systolic Array
In weight-stationary architecture, the weights are pre-loaded into the computation units and the activations are marched in from the activation storage buffer.The weights stay stationary and the inputs are streamed in.
### Input Stationary Systolic Array
In Input-stationary architecture, the Inputs are pre-loaded into the computation units and the activations are marched in from the activation storage buffer.The inputs stay stationary and the weights are streamed in. 

## Traditional Sysytolic Array Structure

Matrix1 (M1) represents the multiplier matrix, and M1 (m, n) represents the data in the m-th row and n-th column of the multiplier matrix M1. Matrix2 (M2) has the same representation as M1. Multiplier (MUL) stands for the multiplier unit, which can multiply the input data and output the result. Register (REG) represents the register delay module, which is used for the systolic data pulse in this structure. Output_colum1 (OUT_col1) represents the output popped by the pipeline in the first column. The traditional systolic array structure has a pulsation register between adjacent columns to ensure that the timing of the pipeline calculation results of each column is ordered. The structure we proposed removes the delay registers between the columns and instead connects the input matrix multiplier in the same row.

<img width="411" alt="trad_sys" src="https://user-images.githubusercontent.com/62790565/231377915-721fb2e0-b571-447d-96cb-5566a283bdb0.png">

## **Proposed Systolic Array Structure (State-of-the-Art)**

As there is a “0” value in Matrix2’s elements. The structure cannot recognize the situation of elements’ value is “0” without the sparse matrix optimization Compute Unit. It will transport the output data to port S_OUT normally. Compared to that, the structure that we proposed will judge the element firstly. Then, the Compute Unit will change the calculation path to the output. Therefore, our sparse optimized circuit can reduce the transmission delay when the input element is “0”. We have declared before that zero elements are commonly consist in a sparse matrix, which makes zeroelements optimization is very important. In another situation. When the input elements are not “0”. The Computing Unit would act like a normal multiplier calculator. The output of sparse-optimized circuit S_OUT
should output logic “1”, which cannot influence the final output of CU.

<img width="413" alt="prop_sys" src="https://user-images.githubusercontent.com/62790565/231378627-911d48df-6139-4c0d-b587-f5bce096ba1f.png">

![image](https://user-images.githubusercontent.com/67214592/231663228-681882cd-0609-4f83-8f41-9b5068caa6be.png)

### Computation Unit Circuit

![image](https://user-images.githubusercontent.com/67214592/231663498-a4f33f8f-26f8-4c2e-a583-3fbcf8cc982f.png)

### Systolic Array Structure for Convolution

![image](https://user-images.githubusercontent.com/67214592/231663628-c45ca126-321f-43e4-8dae-9068c88379a8.png)

## **Proposed Method**

![image](https://user-images.githubusercontent.com/67214592/231663703-65ac1b69-3a0f-4e06-9c31-6995002029a8.png)

## **References**

[1] R. Jia, T. Xu and Y. Chang, "Scalable Systolic Array Multiplier Optimized by Sparse Matrix," 2021 IEEE 14th International Conference on ASIC (ASICON), Kunming, China, 2021, pp. 1-4, doi: 10.1109/ASICON52560.2021.9620326.  
[2] Asgari B , Hadidi R , Kim H . Proposing a Fast and Scalable Systolic Array for Matrix Multiplication, 2020 IEEE 28th Annual International Symposium on Field-Programmable Custom Computing Machines (FCCM). IEEE, 2020.  
[3] Petkov N. Systolic arrays for matrix I\/O format conversion[J]. Electron. Lett. 1988.  
[4] Tang L, Cai G, Zheng Y, et al. A resource and performance optimization reduction circuit on FPGAs[J]. IEEE Transactions on Parallel and Distributed Systems, 2020, 32(2): 355-366.  
[5] R. W. Means, "A new two-dimensional systolic array for image processing and neural network applications," IJCNN-91-Seattle International Joint Conference on Neural Networks, Seattle, WA, USA, 1991, pp. 925 vol.2-, doi: 10.1109/IJCNN.1991.155582.  


## **Contributors**

  * Banda Anusha (MT2022504) 
  * Dantu Nandini Devi (MS2022007)
  * Mahati Basavaraju(MS2022016)
  * Vasanthi D R (PH2021504)

## Acknowledgement

* Madhav Rao, Professor, IIIT-Bangalore.



