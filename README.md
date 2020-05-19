# FOPID-tuner-using-GA
A fractional order PID controller is tuned using genetic algorithm , to control the speed of DC motor


# Steps for running the Project

1. Open matlab. Enter the command pathtool and then add the FOPID-tuner-using-GA/GA/extall-fomcon-matlab-a3f77e8-ToolBOX folder.
2. Open file pid_omtimzation.
3. Open the optimzation toolbox from the apps in the matlab folder.
4. Selct option Genetic Algorithm in solver option and set the fitness function as showin the image optimization_-toolbox-paramete-      setting.png, stored in the results and screenshots folder.
5. Start tuning.

# Steps for running the simulated model

1. Do the first step of running the project.
2. The physical parameters of DC motor must be present in the workspace before running the model. Set the following parameters in the workspace:
  J = 0.01;
  b = 0.1;
  K = 0.01;
  R = 1;
  L = 0.5;
3. Set the values of paramters of Fraction Order PID by doubble right click on the Fractional PID Block.
4. Run
