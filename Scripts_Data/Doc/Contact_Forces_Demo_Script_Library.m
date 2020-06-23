%% Simscape Multibody Contact Forces Library
%
% <html>
% <span style="font-family:Arial">
% <span style="font-size:10pt">
% <tr><b><u>Library Overview</u></b><br>
% <tr>1.  <a href="matlab:web('Contact_Forces_Library_Use.html');">Using the Library</a><br>
% <tr>2.  <a href="matlab:cd(fileparts(which('Contact_Forces_Lib.slx')));Contact_Forces_Lib;">Library</a><br>
% <tr>3.  Forces: <a href="matlab:web('Force_Laws.html');">Laws</a><br>
% <tr>....1. Basic 2D:<br>
% <tr>.......a. Circle-to-Circle Force: <a href="matlab:web('Circle_to_Circle_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Collision_04_Disks_in_Box.slx')));Collision_04_Disks_in_Box;">Example (Disks in Box)</a><br>
% <tr>.......b. Circle-to-Finite Line Force: <a href="matlab:web('Circle_to_Finite_Line_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Collision_03_Disk_Finite_Plane_Spin.slx')));Collision_03_Disk_Finite_Plane_Spin;">Example (Ball on Finite Plane (spin))</a><br>
% <tr>.......c. Circle-to-Ring Force: <a href="matlab:web('Circle_to_Ring_Contact.html');">Description</a>; Examples: <a href="matlab:cd(fileparts(which('Collision_05_Disk_in_Ring.slx')));Collision_05_Disk_in_Ring;"> Disk in Ring</a>, <a href="matlab:cd(fileparts(which('Collision_06_Catapult.slx')));Collision_06_Catapult;">Catapult</a><br>
% <tr>....2. Composite 2D:<br>
% <tr>.......a. Box-to-Box Force: <a href="matlab:web('Box_to_Box_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Spinning_Boxes.slx')));Spinning_Boxes;">Example (Spinning Boxes)</a><br>
% <tr>.......b. Box-to-Belt Force: <a href="matlab:web('Box_to_Belt_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Belts_01_Two_Belts.slx')));Belts_01_Two_Belts;">Example (Box on two Conveyor Belts)</a><br>
% <tr>....3. Basic 3D:<br>
% <tr>.......a. Sphere-to-Sphere Force: <a href="matlab:web('Sphere_to_Sphere_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Frict3D_04_Ball_on_Ball.slx')));Frict3D_04_Ball_on_Ball;">Example (Ball on Ball)</a><br>
% <tr>.......b. Sphere-in-Sphere Force: <a href="matlab:web('Sphere_in_Sphere_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Coll3D_06_Ball_in_Ball.slx')));Coll3D_06_Ball_in_Ball;">Example (Ball in Ball)</a><br>
% <tr>.......c. Sphere-to-Plane Force: <a href="matlab:web('Sphere_to_Plane_Contact.html');">Description</a>, <a href="matlab:cd(fileparts(which('Coll3D_02_Ball_Plane_Spin.slx')));Coll3D_02_Ball_Plane_Spin;">Example (Ball on Spinning Plane)</a><br>
% <tr>.......d. Sphere-to-Tube Force: <a href="matlab:web('Sphere_to_Tube_Contact.html');">Description</a>; <a href="matlab:cd(fileparts(which('Coll3D_04_Ball_in_Tube_Fixed.slx')));Coll3D_04_Ball_in_Tube_Fixed;"> Example (Ball in Fixed Tube)</a><br>
% <tr>.......e. Sphere-to-Cone Force: <a href="matlab:web('Sphere_to_Cone_Contact.html');">Description</a>; <a href="matlab:cd(fileparts(which('Coll3D_08_Ball_in_Spinning_Cone.slx')));Coll3D_08_Ball_in_Spinning_Cone;"> Example (Ball in Spinning Cone)</a><br>
% <tr>4.  Friction Force: <a href="matlab:web('Friction_Laws.html');">Laws</a><br>
% <br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_2D_Collision.html');">2D Collision Examples (Basic)</a></b><br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_2D_Friction.html');">2D Friction Examples (Basic)</a></b><br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_2D_Applications.html');">2D Examples (Applications)</a></b><br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_3D_Collision.html');">3D Collision Examples (Basic)</a></b><br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_3D_Friction.html');">3D Friction Examples (Basic)</a></b><br>
% <br>
% <tr><b><a href="matlab:web('Contact_Forces_Demo_Script_3D_Applications.html');">3D Applications</a></b><br>
% </style>
% </style>
% </html>
% 
% Copyright 2014-2020 The MathWorks(TM), Inc.

