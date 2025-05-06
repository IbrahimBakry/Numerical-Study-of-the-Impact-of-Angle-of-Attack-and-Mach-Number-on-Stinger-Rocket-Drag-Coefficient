# **Numerical Study of the Impact of Angle of Attack and Mach Number on Stinger Rocket Drag Coefficient and Analysis of Applied Forces** 🚀🔬💨

This project presents a comprehensive **numerical investigation** 💻 into the aerodynamic characteristics of a **Stinger rocket** 🚀 in **supersonic flow** 💨. The study specifically focuses on quantifying the influence of varying **Mach numbers** 📈 (1.7, 2.2, 3.0, and 3.7) and **angles of attack** 📐 (ranging from 0 to 25 degrees) on the rocket's **drag coefficient** 📉. Given the complexities often associated with experimental or analytical approaches for such intricate geometries and flow regimes, numerical simulations were the chosen methodology. Beyond the drag coefficient, the research meticulously examines and quantifies the various **forces acting on the rocket** 💪 throughout its trajectory, including drag 📉, gravity 👇, and thrust ⬆️.

## **Introduction and Background:**

The study of supersonic flow around complex geometries like rockets presents significant challenges for traditional experimental methods due to high costs 💸 and practical limitations in measuring all desired parameters. Analytical solutions are often constrained to simplified cases due to the complexity of the governing differential equations. This highlights the critical role of **numerical methods**, powered by advances in computing technology 🖥️, in tackling complex flow problems. This research builds upon previous studies investigating supersonic flow around unmanned aerial vehicles and missiles, leveraging the power of **Computational Fluid Dynamics (CFD)** 🧠 to provide detailed insights where other methods fall short.

**Tools, Software, and Skills Summary:**

*   **Tools/Software:** ANSYS Fluent 14 💻, SolidWorks 13 ✏️, MATLAB 13.0 📊, ANSYS Workbench 14 🛠️.
*   **Skills:** Computational Fluid Dynamics (CFD) 🧠, Numerical Analysis 🔢, Mesh Generation 🕸️, Software Proficiency 🖱️, Aerodynamics ✈️, Data Visualization and Analysis 📊📈, Mathematical Modeling ✍️.

## **Methodology:**

The numerical simulations were conducted using the industry-standard **ANSYS Fluent 14** software 💻, integrated within the **ANSYS Workbench 14** environment 🛠️.

### 1.  **Geometry Modeling:** 
The Stinger rocket model, with a length of 1.57 meters and a diameter of 10.16 centimeters, was precisely modeled in **SolidWorks 13** ✏️. The model was then exported for use in the CFD analysis.

![image](https://github.com/user-attachments/assets/8764831b-dfa5-4ae3-a85f-e5fb105e3237)
![image](https://github.com/user-attachments/assets/9efe7fa3-4284-4a73-bdfb-1a2acd544c05)

### 2.  **Computational Domain and Mesh Generation:** 
A suitable computational domain (control volume) was defined around the rocket. This domain was discretized into a **hexagonal mesh** 🕸️ using an adaptive meshing technique to ensure higher resolution near the rocket surface, where flow gradients are significant.

![image](https://github.com/user-attachments/assets/d59bf4d5-f5e2-4d11-8df1-f71159e70fbb)
![image](https://github.com/user-attachments/assets/33c177fa-71c6-4409-b174-ca0e543af88a)

### 3.  **Solver Setup and Boundary Conditions:** 
The flow physics were governed by the **Reynolds-Averaged Navier-Stokes (RANS) equations** ✍️. The simulation incorporated continuity, momentum, and energy equations, along with a chosen turbulence model (details of the specific model would be in the full paper). Air at standard conditions was the defined fluid. Appropriate boundary conditions were applied at the inlet and outlet of the computational domain, specifying Mach numbers and pressure conditions.

### 4.  **Numerical Scheme:** 
An **implicit Gauss-Seidel method** 🔢 was employed to solve the resulting system of linear algebraic equations. A **second-order upwind scheme** was used for spatial discretization of the derivatives.

### 5.  **Simulation Cases:** 
Simulations were performed for four distinct Mach numbers (1.7, 2.2, 3.0, and 3.7) and a range of angles of attack for each Mach number (as detailed in the original text's Table 3).

## **Results and Discussion:**

The numerical simulations yielded valuable data on the aerodynamic performance of the Stinger rocket.

### 1.  **Drag Coefficient Analysis:**
The calculated drag coefficient values for each Mach number and angle of attack were presented and analyzed. A clear trend of **increasing drag coefficient with increasing angle of attack** 📐 was observed. Furthermore, the results indicated that the **drag coefficient generally decreases with increasing Mach number** 📈.

### 2.  **Curve Fitting and Interpolation:** 
To facilitate the use of the drag coefficient data for values between the simulated points, the results were fitted to **third-order polynomial equations** (Taylor series expansion) for each Mach number. This allowed for accurate interpolation of the drag coefficient as a function of the angle of attack.

### 3.  **Force Analysis:**
**Drag Force:** The drag force was calculated using the obtained drag coefficient values and flight parameters. The analysis revealed a significant **increase in drag force with both increasing Mach number** 📈 and **increasing angle of attack** 📐. This increase was particularly pronounced at higher angles of attack.
**Gravitational Force:** The gravitational force acting on the rocket was calculated considering the rocket's mass change over time due to fuel consumption and its angle relative to the horizon. The analysis showed how gravity varies with time and the rocket's orientation.
**Thrust Force:** The required thrust force for the rocket to achieve a desired acceleration or final velocity was calculated, taking into account the drag and gravitational forces. The study explored how thrust requirements vary with fuel consumption rate, angle relative to the horizon, final Mach number, and angle of attack.

![image](https://github.com/user-attachments/assets/8eb603d4-bb3b-49b6-834d-e9b39d59dc5d)
![image](https://github.com/user-attachments/assets/8bdeb715-4a42-4587-bfb2-1f1322fc2f90)
![image](https://github.com/user-attachments/assets/aaa01ff2-0922-41d0-b120-9612dd7f1bc1)
![image](https://github.com/user-attachments/assets/8aca34e5-4e46-494d-afb8-66fa5a7f20b1)
![image](https://github.com/user-attachments/assets/977dadd6-5995-4f2e-a37e-444e19ebe385)
![image](https://github.com/user-attachments/assets/4ba6b6e8-0545-4a49-b67f-88eb358a3c23)
![image](https://github.com/user-attachments/assets/1af78e39-2402-43b8-835f-aff5843934ca)
![image](https://github.com/user-attachments/assets/3d976537-38bd-4ef7-9038-21b14aa0a4ef)


## **Conclusions and Recommendations:**

This numerical study successfully quantified the impact of angle of attack and Mach number on the drag coefficient of a Stinger rocket in supersonic flight. The research provided detailed insights into the behavior of the drag force and its strong dependence on these parameters. Furthermore, the study analyzed the influence of gravity and calculated the necessary thrust force under various flight conditions.

The findings from this research are valuable for the design and performance prediction of Stinger rockets and similar aerial vehicles operating in supersonic regimes. Future research could explore different turbulence models, more complex geometries, or unsteady flow effects.

## **Published Paper:**

The findings of this project have been documented and published in a peer-reviewed paper titled "The Numerical Study of Supersonic Flow at Mach 1.7 Around a Stinger Rocket" in the **Journal of Aleppo University, Engineering Sciences Series** 📚.
