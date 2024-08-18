% MINI GOLF PARAMETERS
% Copyright 2012-2024 The MathWorks(TM), Inc.

%%% VALUES YOU *MUST* CHANGE %%%
% OPEN LOOP ADJUSTMENTS, PER HOLE. EACH PAIR OF NUMBERS IS PER STROKE:
% THE VALUES ARE ADDED TO THE RESULTS FROM CLOSED-LOOP CONTROLLER
% [ANGLE (deg) FORCE (N); ANGLE (deg) FORCE (N);... <stroke 10>]
Mini_Golf_Param.Hole_1.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_2.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_3.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_4.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_5.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_6.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_7.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_8.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];
Mini_Golf_Param.Hole_9.Open_Loop_Adjustments = [0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0; 0 0];

%%% VALUES YOU *MAY* CHANGE %%%
% DEMO ACTUATOR CONSTANTS
% BASE MECHANICS
Mini_Golf_Param.Actuator.Damping_x = 0.1;
Mini_Golf_Param.Actuator.Damping_y = 0.1;
Mini_Golf_Param.Actuator.Damping_az = 10;
Mini_Golf_Param.Actuator.Mass = 10; % kg

% SHOOT MECHANICS
Mini_Golf_Param.Actuator.Putter_Spring_k = 20;
Mini_Golf_Param.Actuator.Putter_Damper_b = 5;

% SWING MECHANICS
Mini_Golf_Param.Actuator_Swing.Putter_Spring_k = 2; %
Mini_Golf_Param.Actuator_Swing.Putter_Damper_b = 2; %
Mini_Golf_Param.Actuator_Swing.Club_Length = 1; %

% DETERMINE FORCE
Mini_Golf_Param.Actuator.Dist_From_Ball = 0.1;
Mini_Golf_Param.Actuator.Dist_to_Force_Gain = 2;
Mini_Golf_Param.Actuator.Min_Force = 2;
Mini_Golf_Param.Actuator.Force_Samples = 100;
Mini_Golf_Param.Actuator.Force_Sample_Time = 0.01;


%%% VALUES YOU *HOPEFULLY WILL NOT* CHANGE %%%
% THRESHOLDS FOR ACTUATOR STOPPED, BALL STOPPED, BALL IN HOLE
Mini_Golf_Param.Logic.Act_Stopped_Vel_Thresh = 0.03;    % m/s
Mini_Golf_Param.Logic.Act_Stopped_Samples = 70;  
Mini_Golf_Param.Logic.Act_Stopped_Sample_Time = 0.01;  
Mini_Golf_Param.Logic.Ball_Stopped_Vel_Thresh = 0.015;  % m/s
Mini_Golf_Param.Logic.Ball_Stopped_Samples = 20;  
Mini_Golf_Param.Logic.Ball_Stopped_Sample_Time = 0.01;
Mini_Golf_Param.Logic.Ball_In_Hole_Samples = 20;  
Mini_Golf_Param.Logic.Ball_In_Hole_Sample_Time = 0.01;

% CONTROL
Mini_Golf_Param.Actuator.Kp_x = 20;
Mini_Golf_Param.Actuator.Ki_x = 0.1;
Mini_Golf_Param.Actuator.Kd_x = 1.5;
Mini_Golf_Param.Actuator.Kp_y = 20;
Mini_Golf_Param.Actuator.Ki_y = 0.1;
Mini_Golf_Param.Actuator.Kd_y = 1.5;
Mini_Golf_Param.Actuator.Kp_th = 5*0.1;
Mini_Golf_Param.Actuator.Ki_th = 0.1*0.1;
Mini_Golf_Param.Actuator.Kd_th = 1;
Mini_Golf_Param.Actuator.Low_Pass_Filter_Constant = 1e-3;


%%%%%%%%% DO NOT CHANGE ANYTHING BELOW THIS LINE %%%%%%%%%%%

% BALL CONSTANTS
Mini_Golf_Param.Ball.Radius = 0.04267;
Mini_Golf_Param.Ball.Mass = 45.93;  % g
Mini_Golf_Param.Ball.Friction = 0.03;

% PUTTER CONSTANTS (USES GENERAL WALL CONSTANTS)
Mini_Golf_Param.Putter.Width = 0.05;
Mini_Golf_Param.Putter.Length = 5*0.0254;
Mini_Golf_Param.Putter.Height = 0.03;

% GENERAL HOLE CONSTANTS
Mini_Golf_Param.Surface_Height = 0.05;
Mini_Golf_Param.Hole.Stiffness = -10000;
Mini_Golf_Param.Hole.Damping = 10;
Mini_Golf_Param.Hole.Deadzone = 0.6667; % Portion of Radius
Mini_Golf_Param.Hole.Radius = 0.1079;
Mini_Golf_Param.Hole.Low_Pass_Filt_Const = 1e-4;
Mini_Golf_Param.Hole.Height = Mini_Golf_Param.Surface_Height*1.01;

% GENERAL WALL CONSTANTS
Mini_Golf_Param.Wall.Stiffness = 1e5*1e-1;  % CHANGE
Mini_Golf_Param.Wall.Damping = 10;
Mini_Golf_Param.Wall.Density = 1000; %kg/m3
Mini_Golf_Param.Wall.Width = 0.1;
Mini_Golf_Param.Wall.Low_Pass_Filt_Const = 1e-4;

% SLIDER CRANK CONSTANTS
Mini_Golf_Param.Slider_Crank.Density = 1000;
Mini_Golf_Param.Slider_Crank.Rod_Pin.Radius = 0.01;
Mini_Golf_Param.Slider_Crank.Rod_Pin.Length = 0.15;
Mini_Golf_Param.Slider_Crank.Rod_Pin.Z_Offset = -0.05;
Mini_Golf_Param.Slider_Crank.Rod.Dimensions = [0.025 0.75 0.015];
Mini_Golf_Param.Slider_Crank.Rod.Z_Offset = -0.05;
Mini_Golf_Param.Slider_Crank.Crank_Pin.Radius = 0.01;
Mini_Golf_Param.Slider_Crank.Crank_Pin.Length = 0.05;
Mini_Golf_Param.Slider_Crank.Crank.Initial_Speed = 1;
Mini_Golf_Param.Slider_Crank.Crank.Radius = 0.5;
Mini_Golf_Param.Slider_Crank.Crank.Length = 0.05;
Mini_Golf_Param.Slider_Crank.Crank.Z_Offset = -0.05;

% HOLE 1
Mini_Golf_Param.Hole_1.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_1.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_1.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_1.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_1.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_1.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_1.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_1.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_1.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_1.Location = [5.5 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_1.Surface_1.Width = 2;
Mini_Golf_Param.Hole_1.Surface_1.Length = 6;
Mini_Golf_Param.Hole_1.Surface_1.Offset = [Mini_Golf_Param.Hole_1.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_1.Ball_Init_x = 0.15;
Mini_Golf_Param.Hole_1.Ball_Init_y = 0.75;
Mini_Golf_Param.Hole_1.Ball_Init_vx = 0.75;
Mini_Golf_Param.Hole_1.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_1.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_1.Putter_Angle = 0;
Mini_Golf_Param.Hole_1.Plot_Dim = [0 6 -3 3];

% HOLE 2
Mini_Golf_Param.Hole_2.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_2.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_2.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_2.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_2.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_2.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_2.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_2.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_2.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_2.Wall_Obst1.Length = 1;
Mini_Golf_Param.Hole_2.Wall_Obst1.Angle = 0;
Mini_Golf_Param.Hole_2.Wall_Obst1.Offset = [5 0 0];
Mini_Golf_Param.Hole_2.Location = [5.5 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_2.Surface_1.Width = 2;
Mini_Golf_Param.Hole_2.Surface_1.Length = 6;
Mini_Golf_Param.Hole_2.Surface_1.Offset = [Mini_Golf_Param.Hole_2.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_2.Ball_Init_x = 0.0;
Mini_Golf_Param.Hole_2.Ball_Init_y = 0.3;
Mini_Golf_Param.Hole_2.Ball_Init_vx = 0.75;
Mini_Golf_Param.Hole_2.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_2.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_2.Putter_Angle = 0;
Mini_Golf_Param.Hole_2.Plot_Dim = [0 6 -3 3];

% HOLE 3
Mini_Golf_Param.Hole_3.Wall_Back.Length = 6;
Mini_Golf_Param.Hole_3.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_3.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_3.Wall_Right.Length = 4;
Mini_Golf_Param.Hole_3.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_3.Wall_Right.Offset = [2 1 0];
Mini_Golf_Param.Hole_3.Wall_Right1.Length = 4.0;
Mini_Golf_Param.Hole_3.Wall_Right1.Angle = 0;
Mini_Golf_Param.Hole_3.Wall_Right1.Offset = [4 -1 0];
Mini_Golf_Param.Hole_3.Wall_Right2.Length = 2;
Mini_Golf_Param.Hole_3.Wall_Right2.Angle = -90;
Mini_Golf_Param.Hole_3.Wall_Right2.Offset = [5 -3 0];
Mini_Golf_Param.Hole_3.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_3.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_3.Wall_Left.Offset = [3 3 0];
Mini_Golf_Param.Hole_3.Location = [5 -2 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_3.Surface_1.Width = 2;
Mini_Golf_Param.Hole_3.Surface_1.Length = 6;
Mini_Golf_Param.Hole_3.Surface_1.Offset = [Mini_Golf_Param.Hole_3.Surface_1.Length/2 2 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_3.Surface_2.Width = 4;
Mini_Golf_Param.Hole_3.Surface_2.Length = 2;
Mini_Golf_Param.Hole_3.Surface_2.Offset = [5 -1 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_3.Ball_Init_x = 0.1;
Mini_Golf_Param.Hole_3.Ball_Init_y = 2.2;
Mini_Golf_Param.Hole_3.Ball_Init_vx = 0;
Mini_Golf_Param.Hole_3.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_3.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_3.Putter_Angle = 0;
Mini_Golf_Param.Hole_3.Plot_Dim = [0 6 -3 3];

% HOLE 4
Mini_Golf_Param.Hole_4.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_4.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_4.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_4.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_4.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_4.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_4.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_4.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_4.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_4.Wall_Obst1.Length = 1.8;
Mini_Golf_Param.Hole_4.Wall_Obst1.Angle = 0;
Mini_Golf_Param.Hole_4.Wall_Obst1.Offset = [4 0 0];
Mini_Golf_Param.Hole_4.Wall_Obst2.Length = 1.8;
Mini_Golf_Param.Hole_4.Wall_Obst2.Angle = -90;
Mini_Golf_Param.Hole_4.Wall_Obst2.Offset = [4 0 0];
Mini_Golf_Param.Hole_4.Obst_Pin.Radius = 0.05;
Mini_Golf_Param.Hole_4.Obst_Pin.Length = Mini_Golf_Param.Ball.Radius*2.2;
Mini_Golf_Param.Hole_4.Location = [5.5 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_4.Obst_Pin.Speed = 1;
Mini_Golf_Param.Hole_4.Surface_1.Width = 2;
Mini_Golf_Param.Hole_4.Surface_1.Length = 6;
Mini_Golf_Param.Hole_4.Surface_1.Offset = [Mini_Golf_Param.Hole_4.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_4.Ball_Init_x = 0.15;
Mini_Golf_Param.Hole_4.Ball_Init_y = 0.75;
Mini_Golf_Param.Hole_4.Ball_Init_vx = 0.75;
Mini_Golf_Param.Hole_4.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_4.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_4.Putter_Angle = 0;
Mini_Golf_Param.Hole_4.Plot_Dim = [0 6 -3 3];

% HOLE 5
Mini_Golf_Param.Hole_5.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_5.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_5.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_5.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_5.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_5.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_5.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_5.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_5.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_5.Post_1.Diameter = 1.2;
Mini_Golf_Param.Hole_5.Post_1.Offset = [2.2 -0.25 0];
Mini_Golf_Param.Hole_5.Post_2.Diameter = 1.2;
Mini_Golf_Param.Hole_5.Post_2.Offset = [4.35 0.25 0];
Mini_Golf_Param.Hole_5.Location = [5 0.7 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_5.Obst_Pin.Speed = 1;
Mini_Golf_Param.Hole_5.Surface_1.Width = 2;
Mini_Golf_Param.Hole_5.Surface_1.Length = 6;
Mini_Golf_Param.Hole_5.Surface_1.Offset = [Mini_Golf_Param.Hole_5.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_5.Ball_Init_x = 0.0;
Mini_Golf_Param.Hole_5.Ball_Init_y = -0.75;
Mini_Golf_Param.Hole_5.Ball_Init_vx = 0;
Mini_Golf_Param.Hole_5.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_5.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_5.Putter_Angle = 0;
Mini_Golf_Param.Hole_5.Plot_Dim = [0 6 -3 3];

% HOLE 6
Mini_Golf_Param.Hole_6.Wall_Back.Length = 3;
Mini_Golf_Param.Hole_6.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_6.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_6.Wall_Right.Length = 4;
Mini_Golf_Param.Hole_6.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_6.Wall_Right.Offset = [2 0.5 0];
Mini_Golf_Param.Hole_6.Wall_Right2.Length = 6;
Mini_Golf_Param.Hole_6.Wall_Right2.Angle = -90;
Mini_Golf_Param.Hole_6.Wall_Right2.Offset = [3 -1.5 0];
Mini_Golf_Param.Hole_6.Wall_Right3.Length = 2;
Mini_Golf_Param.Hole_6.Wall_Right3.Angle =  0;
Mini_Golf_Param.Hole_6.Wall_Right3.Offset = [0 -0.5 0];
Mini_Golf_Param.Hole_6.Wall_Right4.Length = 4;
Mini_Golf_Param.Hole_6.Wall_Right4.Angle =  -90;
Mini_Golf_Param.Hole_6.Wall_Right4.Offset = [3 -0.5 0];
Mini_Golf_Param.Hole_6.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_6.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_6.Wall_Left.Offset = [3 1.5 0];
Mini_Golf_Param.Hole_6.Wall_Obst1.Length = 1.8;
Mini_Golf_Param.Hole_6.Wall_Obst1.Angle = 0;
Mini_Golf_Param.Hole_6.Wall_Obst1.Offset = [5 0.5 0];
Mini_Golf_Param.Hole_6.Wall_Obst2.Length = 1.8;
Mini_Golf_Param.Hole_6.Wall_Obst2.Angle = -90;
Mini_Golf_Param.Hole_6.Wall_Obst2.Offset = [5 0.5 0];
Mini_Golf_Param.Hole_6.Obst_Pin.Radius = 0.05;
Mini_Golf_Param.Hole_6.Obst_Pin.Length = Mini_Golf_Param.Ball.Radius*2.2;
Mini_Golf_Param.Hole_6.Obst_Pin.Speed = -1;
Mini_Golf_Param.Hole_6.Location = [3 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_6.Surface_1.Width = 3;
Mini_Golf_Param.Hole_6.Surface_1.Length = 6;
Mini_Golf_Param.Hole_6.Surface_1.Offset = [3 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_6.Ball_Init_x = 0.1;
Mini_Golf_Param.Hole_6.Ball_Init_y = 0.8;
Mini_Golf_Param.Hole_6.Ball_Init_vx = 0;
Mini_Golf_Param.Hole_6.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_6.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_6.Putter_Angle = 0;
Mini_Golf_Param.Hole_6.Plot_Dim = [0 6 -3 3];

% HOLE 7
Mini_Golf_Param.Hole_7.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_7.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_7.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_7.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_7.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_7.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_7.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_7.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_7.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_7.Wall_Obst1.Length = 1.8;
Mini_Golf_Param.Hole_7.Wall_Obst1.Angle = 0;
Mini_Golf_Param.Hole_7.Wall_Obst1.Offset = [5 0 0];
Mini_Golf_Param.Hole_7.Wall_Obst1.Density = 10;
Mini_Golf_Param.Hole_7.Wall_Obst1.Friction = 0.3;
Mini_Golf_Param.Hole_7.Wall_Obst1.Rot_Friction = 0.1;
Mini_Golf_Param.Hole_7.Location = [5.7 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_7.Surface_1.Width = 2;
Mini_Golf_Param.Hole_7.Surface_1.Length = 6;
Mini_Golf_Param.Hole_7.Surface_1.Offset = [Mini_Golf_Param.Hole_7.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_7.Ball_Init_x = 0.0;
Mini_Golf_Param.Hole_7.Ball_Init_y = 0.3;
Mini_Golf_Param.Hole_7.Ball_Init_vx = 0.75;
Mini_Golf_Param.Hole_7.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_7.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_7.Putter_Angle = 0;
Mini_Golf_Param.Hole_7.Plot_Dim = [0 6 -3 3];

% HOLE 8
Mini_Golf_Param.Hole_8.Wall_Back.Length = 3;
Mini_Golf_Param.Hole_8.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_8.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_8.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_8.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_8.Wall_Right.Offset = [3 -1.5 0];
Mini_Golf_Param.Hole_8.Wall_Obst1.Length = 2;
Mini_Golf_Param.Hole_8.Wall_Obst1.Angle =  0;
Mini_Golf_Param.Hole_8.Wall_Obst1.Offset = [1.5 -0.5 0];
Mini_Golf_Param.Hole_8.Wall_Obst1.Initial_Crank_Angle = 0;
Mini_Golf_Param.Hole_8.Wall_Obst1.Initial_Crank_Spd = 1;
Mini_Golf_Param.Hole_8.Wall_Obst2.Length = 2;
Mini_Golf_Param.Hole_8.Wall_Obst2.Angle =  0;
Mini_Golf_Param.Hole_8.Wall_Obst2.Offset = [3 -0.5 0];
Mini_Golf_Param.Hole_8.Wall_Obst2.Initial_Crank_Angle = 180;
Mini_Golf_Param.Hole_8.Wall_Obst2.Initial_Crank_Spd = 1;
Mini_Golf_Param.Hole_8.Wall_Obst3.Length = 2;
Mini_Golf_Param.Hole_8.Wall_Obst3.Angle = 0;
Mini_Golf_Param.Hole_8.Wall_Obst3.Offset = [4.5 -0.5 0];
Mini_Golf_Param.Hole_8.Wall_Obst3.Initial_Crank_Angle = 0;
Mini_Golf_Param.Hole_8.Wall_Obst3.Initial_Crank_Spd = 1;
Mini_Golf_Param.Hole_8.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_8.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_8.Wall_Left.Offset = [3 1.5 0];
Mini_Golf_Param.Hole_8.Location = [5 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_8.Surface_1.Width = 3;
Mini_Golf_Param.Hole_8.Surface_1.Length = 6;
Mini_Golf_Param.Hole_8.Surface_1.Offset = [3 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_8.Ball_Init_x = 0.15;
Mini_Golf_Param.Hole_8.Ball_Init_y = 0;
Mini_Golf_Param.Hole_8.Ball_Init_vx = 0;
Mini_Golf_Param.Hole_8.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_8.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_8.Putter_Angle = 0;
Mini_Golf_Param.Hole_8.Plot_Dim = [0 6 -3 3];

% HOLE 9
Mini_Golf_Param.Hole_9.Wall_Back.Length = 2;
Mini_Golf_Param.Hole_9.Wall_Back.Angle = 0;
Mini_Golf_Param.Hole_9.Wall_Back.Offset = [6 0 0];
Mini_Golf_Param.Hole_9.Wall_Right.Length = 6;
Mini_Golf_Param.Hole_9.Wall_Right.Angle = -90;
Mini_Golf_Param.Hole_9.Wall_Right.Offset = [3 -1 0];
Mini_Golf_Param.Hole_9.Wall_Left.Length = 6;
Mini_Golf_Param.Hole_9.Wall_Left.Angle = -90;
Mini_Golf_Param.Hole_9.Wall_Left.Offset = [3 1 0];
Mini_Golf_Param.Hole_9.Extr1.Offset = [5.7 0 0];
Mini_Golf_Param.Hole_9.Extr1.Ring_Outer_Diameter = 0.5;
Mini_Golf_Param.Hole_9.Extr1.Ring_Inner_Diameter = 0.4;
Mini_Golf_Param.Hole_9.Extr1.Cross_Section_Data = Plane_Data_Ring(Mini_Golf_Param.Hole_9.Extr1.Ring_Outer_Diameter, Mini_Golf_Param.Hole_9.Extr1.Ring_Inner_Diameter);
Mini_Golf_Param.Hole_9.Extr1.Friction = 0.3;
Mini_Golf_Param.Hole_9.Extr2.Offset = [5.29 0.3 0];
Mini_Golf_Param.Hole_9.Extr2.Ring_Outer_Diameter = 0.5;
Mini_Golf_Param.Hole_9.Extr2.Ring_Inner_Diameter = 0.4;
Mini_Golf_Param.Hole_9.Extr2.Cross_Section_Data = Plane_Data_Ring(Mini_Golf_Param.Hole_9.Extr1.Ring_Outer_Diameter, Mini_Golf_Param.Hole_9.Extr1.Ring_Inner_Diameter);
Mini_Golf_Param.Hole_9.Extr2.Friction = 0.3;
Mini_Golf_Param.Hole_9.Extr3.Offset = [5.29 -0.3 0];
Mini_Golf_Param.Hole_9.Extr3.Ring_Outer_Diameter = 0.5;
Mini_Golf_Param.Hole_9.Extr3.Ring_Inner_Diameter = 0.4;
Mini_Golf_Param.Hole_9.Extr3.Cross_Section_Data = Plane_Data_Ring(Mini_Golf_Param.Hole_9.Extr1.Ring_Outer_Diameter, Mini_Golf_Param.Hole_9.Extr1.Ring_Inner_Diameter);
Mini_Golf_Param.Hole_9.Extr3.Friction = 0.3;
Mini_Golf_Param.Hole_9.Location = [5.7 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_9.Surface_1.Width = 2;
Mini_Golf_Param.Hole_9.Surface_1.Length = 6;
Mini_Golf_Param.Hole_9.Surface_1.Offset = [Mini_Golf_Param.Hole_9.Surface_1.Length/2 0 -Mini_Golf_Param.Surface_Height];
Mini_Golf_Param.Hole_9.Ball_Init_x = 0.0;
Mini_Golf_Param.Hole_9.Ball_Init_y = 0.7;
Mini_Golf_Param.Hole_9.Ball_Init_vx = 0.75;
Mini_Golf_Param.Hole_9.Ball_Init_vy = 0;
Mini_Golf_Param.Hole_9.Putter_Offset = [-0.1 0.1 0];
Mini_Golf_Param.Hole_9.Putter_Angle = 0;
Mini_Golf_Param.Hole_9.Plot_Dim = [0 6 -3 3];
