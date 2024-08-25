# vShaker

low-cost shake table and demonstrative test models based on Klipper and FDM mainly for educational purposes

Please refer to the latest folder v231111. Currently there is no full build version to share but only the linear module part has been sorted and uploaded with BOM and installation steps. For the whole build, only some pictures and descriptions fyi [here](https://github.com/treesess/vShaker/blob/main/v231111/CAD/readme.md) 


![image](https://github.com/user-attachments/assets/8b37faf4-165b-4d2c-8f39-55991e647569)

The vShaker project included the models mainly made from FDM. By using color markers and a normal telephoto DSLR camera or video taker and some basic coding, you can easily get the displacement of all floors. The stiffness and mass are easy to measure. Damping ratio of the model can be calculated from free vibration data. 

There is an example of the free vibration displacement of the model: 

![image](https://github.com/user-attachments/assets/069d1b3c-a739-439c-ab60-812b39f47b91)

The model was designed to be modular, therefor the mass of each floor can be changed at will. More complicated damper, bracings can be added as well. 

|			|									|
|---			|---									|				
|Floor dimension LxW  | 100x100 mm |
|Floor height      |90 mm  |
|Slab thickness    |11 mm  |
|Column cross section dimension  |1.3x10.8 mm|
|Mass of each floor (m)  |61.75 grams|
|Stiffness of first floor (k1)  |113.98 N/m|
|Stiffness of other floors (k2)  |  116.64 N/m|
|Theoratical natural frequency in Hz  |   1.9608;    5.7274;    9.0386;   11.6250;   13.2706|
|Natural frequency calculated from free vibration measured displacement by FFT in Hz|2.068|

Damping ratio of each floor (ξ) calculated from free vibration displacement:

|			|									|
|---			|---									|		
|1f|0.0379|
|2f|0.0378|
|3f|0.0340|
|4f|0.0222|
|5f|0.0161|









![image](https://github.com/treesess/vShaker/assets/20311124/443d65bf-3f5b-4411-93e3-b847e74f6227)
