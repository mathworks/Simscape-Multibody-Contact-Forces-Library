# **Simscape Multibody Contact Forces Library**
Copyright 2014-2023 The MathWorks, Inc.

This library contains contact force models for use with Simscape Multibody.
They can be used for intermittent contact (parts bouncing off each other)
and persistent contact (parts resting on each other).

**Please note that the Spatial Contact Force block has been added in R2019b.**
**You should see if this block meets your needs before using this library.**

**See File Exchange submission [Spatial Contact Force Examples Simscape Multibody](https://www.mathworks.com/matlabcentral/fileexchange/109680-spatial-contact-force-examples-simscape-multibody)**

View on File Exchange [![View Simscape Multibody Contact Forces Library on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/47417-simscape-multibody-contact-forces-library)  
You can also open in MATLAB Online: [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=mathworks/Simscape-Multibody-Contact-Forces-Library&project=Contact_Forces_Library.prj) 

You are welcome to use these models in your own projects. If you need to 
include the library in your own example, I recommend you use just the 
project Contact_Forces_Core.prj in subfolder Core.  You can either use it
directly, or include it as a Referenced Project just as is done 
in this project.

General approach for using this library
   1. Identify the parts in your system that will hit each other during simulation
   2. Figure out which edges or surfaces will touch.  
      The contact models provided allow you to model contact between combinations
      of connected circular arcs with straight lines (2D) 
      and spheres with flat planes or cylinders (3D).
   3. Add reference frames for the lines and arcs that will touch.
   4. Add the correct contact force model between the two frames.

See the examples to understand how they are used.

Recommendations:
   1. Start with stiffness of 1e4 and damping of 1e2 and adjust from there.
   2. Use solver ode23t, Relative Tolerance = 1e-4, Absolute Tolerance = 1e-5
       and set the maximum step size to 1e-2.
   3. If you get unexpected behavior (parts flying through one another, 
       system gaining energy) your tolerances are not small enough.
       Reduce tolerances by a factor of 10 and max step size by a factor of 10
       until you get expected behavior.  Reducing stiffness and increasing damping
       can also help.
 
### **Release History**
**v5.0 Mar 2024** (R2019b through R2024a)
1. Updated v5p0 for R2024a

**v5.0 Sep 2023** (R2019b through R2023b)
1. Updated v5p0 for R2023b

**v5.0 Mar 2023** (R2019b through R2023a)
1. Updated v5p0 for R2023a

**v5.0 Sep 2022** (R2019b through R2022b)
1. Updated v5p0 for R2022a

**v5.0 Mar 2022** (R2019b through R2022a)
1. Updated v5p0 for R2022a

**v5.0 Sep 2021** (R2019b through R2021b)
1. Updated v5p0 for R2021b

**v5.0 Mar 2021** (R2019b through R2021a)
1. Updated v5p0 for R2021a

**v5.0 Sep 2020** (R2019b through R2020b)
1. Updated v5p0 for R2020b

**v5.0 Mar 2020** (R2019b through R2020a)
1. Updated v5p0 for R2020a

**v5.0 Sep 2019**  (R2019b through R2020a)
1. Move to MATLAB Projects

**v4.1 Mar 2019** (R2015a through R2019a)
1. Updated v4.1 for R2019a
2. Minor changes to accommodate physical signal units

**v4.1 Nov 2018** (R2015a through R2018b)
1. New example Caster_4_Whl.slx
   Models a four-wheel cart with casters on front wheels 
2. New example sm_build_spheres_in_sphere
   MATLAB code to automatically assemble a model that has 
   a user-defined number of spheres inside a sphere with
   contact forces between all inner spheres and between 
   inner spheres and outer sphere.

**v4.1 Sep 2018** (R2015a through R2018b)
1. Updated v4.1 for R2018b
2. All v4p1 have updated Extr_Data_Cam_Roller_Curve.m

**v4.1 Mar 2018** (R2015a through R2018a)
1. Adjusted Sphere to Belt Force (in 3D, Composite Forces)
   Changed orientation of reference frame for the two
   Sphere to Tube Enabled Forces. Z-axis flipped 180 deg
   so that vx and wz inputs have the same sign. 
2. Adjusted sm_tread_drive example.slx
   Uses adjusted Sphere to Belt Force, test sequence altered
   to show turning and show both treads striking bump in 
   forward and reverse. 
3. New example sm_robot_6legs_4bar.slx 
   Models 6-legged robot. Legs on each side are a pair of
   connected four-bar linkages. Shows how to model robot
   walking on uneven surface.   
4. Added CFL_contact_setModel.m
   Function to select force law in all contact forces in model.
5. Additions to support Parts_Lib.slx 
   Extrusion file Extr_Data_TriangleRounded_Holes.m and 
   various images for masking parts.

**v4.0 Mar 2018** (R2015a through R2018a)
1. Added Sphere to Tube Enabled Force
   Sphere to Tube force that can be enabled/disabled
   and can be used to model the ends of a driven conveyor belt.
2. Added Sphere to Belt Force (in 3D, Composite Forces)
   Used to models spheres on a moving conveyor belt.  Can
   also be used to model vehicles that ride on treads
   like a bulldozer.  See sm_tread_drive  
3. New examples sm_tread_drive, Frict3D_Balls_on_Driven_Tube 
   These examples use Sphere to Tube Enabled Force and
   Sphere to Belt Force. 
4. Added sm_ball_bearing_testrig example
   Models a ball bearing with variants that use
   Common Gear Constraint (ideal) and contact forces
   (permits vibration).
5. Added extrusion script Extr_Data_Block_NotchCircle.m 
   Used to calculate cross-sectional profile for inner and
   outer race in Ball Bearing Testrig example

**v3.9 Jan 2018**  (R2017b)     
1. Added Cam Roller Constraint.  
   Uses Point-on-Curve Constraint to model circular
   roller on a cam with arbitrary profile.
2. Added Extr_Data_Cam_Roller_Curve.m to calculate
   path of Point-on-Curve Constraint.
3. Added Cam_Follower_Constraint example.

**v3.8 Sept 2017** (R2017b)
1. Updated for R2017b

**v3.7 July 2017** (R2015b through R2017a)
1. Added Sphere to Cone Force.  Contact force is active on
   inside and outside of cone.  Also added extrusion script
   Extr_Data_Frustrum_Conical.m and example 
   Coll3D_08_Ball_in_Spinning_Cone.slx
2. Sphere to Tube Force - fixed relative velocity calculation in
   Contact_Forces_Lib/3D/Sphere to Tube Force/Forces/Ff/vTan
   Previous releases delivered incorrect results if the cylinder
   could spin.  Added new example Coll3D_07_Balls_and_Sliding_Tube.slx
3. Extr_Data_Box.m: functional change, parameters are full width
   and height instead of half width and half height.  Affected
   parameters within a few examples, such as Spinning Boxes
4. Extr_Data_Cam.m: Changed to Extr_Data_Cam_Circles.m, which has
   two additional parameters (radii of holes).  Affected example
   Cam Follower and the UI for parameterizing the cam.
5. Many 2D contact forces have been modified so that they
   no longer refer to the World frame.  This permits them to be
   used in any plane, not just the x-y plane.
6. Circle to Ring Force: calculations adjusted to use consistent
   distance to contact point for circle and ring.  May result in
   minor changes to simulation results.
7. Mask commands adjusted - eliminated imread(), use option
   "Opaque with ports" (R16a and above), and other settings.

**v3.6	Mar  2017** (R2016b through R2017a) 	
1. New example: Ball on Wheel with Controller (2D Friction Examples)
   Models a ball balanced on a wheel.
2. Removed MATLAB variables from blocks in Contact_Forces_Lib.slx
   Some library elements contained MATLAB variables in the dialog box
   parameters on the Dimensions and Visual tab.  These were replaced
   with hardcoded default values to avoid warnings about undefined variables.
3. Additional parameters were added to the Sphere block in Parts_Lib.slx 
   to enable the marks to be shown or hidden per axis. 
4. New script CFL_SaveLibsOnly.m that copies only the critical files 
   of this repository to a new folder so you can include them in
   your own project.

**v3.5 Jan  2017** (R2016b)
1. Added Face-to-Plane in 3D/Composite Forces.  This is useful for
   two flat square surfaces that may contact each other at arbitrary 
   angles.  It assumes no edges will intersect (one square is 
   significantly larger than the other
2. Added Face-to-Belt-Faces forces in 3D/Composite Forces.  This is
   useful for modeling 3D boxes on conveyor belts where only one
   face of the box will encounter the belt.  It accepts the 
   speed of the belt as an input signal (vx and/or vy)
3. Added Sphere-to-Plane Enabled Force.  This is used within the
   composite force Face-to-Belt-Faces composite force
4. Added example Gripper with Conveyor Belts (3D Applications). 
   Uses the new forces to model a box that is transferred by a 
   gripper between two conveyor belts.  One belt brings the box
   to the gripper, the other moves it away.
5. Additional parameters were added to the Cylinder block 
   in Parts_Lib.slx to enable arbitrary colors for the cylinders.

**v3.4 Sep  2016** (R2016b)
1. Fixed outputs for Circle-to-Ring, Sphere-to-Tube, Sphere-to-Plane
   Force output signals for these signals now go to zero when 
   circle/sphere leaves active range for force, where active range is 
   an arc of the ring/tube or length of the plane. Previously, the
   measured value for the force would be held if the force was active
   as the circle/sphere left the active range for the force.
2. Copy for Merge block added in Sphere-to-Plane block
   This block is necessary in some configurations.


**v3.3 Apr  2016** (R2016a)
1. Added optional visualization for contact surfaces
   The surfaces associated with the contact forces can now be visualized.	
   This helps you confirm you have oriented the surfaces properly and
   defined them to be an appropriate length or active range of angles.
2. All contact forces now have an additional tab labeled "Visual".  On
   this tab you can enable a visualization of the surface, which is done
   using a Solid with density set to 0.  For the 2D contact forces you 
   will need to define the length of the surface along the z-axis of
   the contact force and it is used for visualization purposes only. 
   You can show/hide all contact surfaces in the model using the
   new function CFL_visual_setOnOff.m in the Scripts_Data directory.

   Additionally in this release, a number of plotting scripts have been
   added to the examples, and in many cases the variables used by
   the example were moved to the Model Workspace.

**v3.2 Mar  2016** (R2015b through R2016a)	
1. Disabled zero crossings in some Abs blocks
   Affects Circle-to-Finite Line, Sphere to Finite Plane
   The zero-crossings in Abs blocks used to check the displacement
   of the circle/sphere reference frame from the line/plane
   reference frame along the line/surface (y / xy) direction is
   not necessary.  When the line/plane can move along the (y / xy)
   direction, it can lead to excessive zero crossings, slowing down
   the simulation.

**v3.1 Mar  2016** (R2016a)
1. Renamed Simscape Multibody Contact Forces Library
2. Geneva drive model imported from CAD is now parameterized
		

**v3.0 Sept 2015** (R2015b)
1. Updated to R2015b

**v3.0 July 2015** (R2015a)

**(3D Models)**

1. Sphere-to-Sphere, Sphere-in-Sphere, Sphere-to-Plane, 
   Sphere-to-Tube added, all with optional friction model
2. Added 3D collision and friction examples
3. Added Two Wheel Robot example (3D Applications)

**(2D Models)**

4. Modified 2D enabled forces
   ** Change from v2.0 -- may require you to update your models ** 
   Modified Circle to Circle Force Enabled, 
   Circle to Finite Line Force Enabled to use a bus as the
   input signal instead of signal input.  Bus permits user to
   optionally define enabled/disabled, and to set velocity
   perpendicular to normal force (vy).  Primary use is for ideal 
   models of conveyor belts.
5. Added 2D/Composite forces (Box to Box force, Box to Belt force)
6. Added Belts_01_Two_Belts.slx (simple conveyor belt example)
                
**(Documentation, Dialog boxes)**

7. Updates to all dialog boxes (added images, fixed prompts and description)
8. Documentation revised                


**v2.0 September 2014** (R2014a) 
1. Added optional friction model (Stick-Slip Continuous)
   to Circle to Circle, Circle to Finite Line, Circle to Ring
2. Added all Friction_* examples 
3. Added Spinning Boxes example 
   Shows box-to-box contact force
4. Fixed callback commands, all contact force blocks
   Set variant in Initialization commands instead of mask callbacks
5. Fixed Circle to Finite Line, Circle to Finite Line Enabled
   Force on line was applied in wrong reference frame

**v1.0  August 2014** (R2014a)
1. Circle-Circle (Enabled), Circle-Line (Enabled), Circle-Ring
2. Examples: 7 Simple , Cam Follower, Geneva Drive. Mini Golf compatible
