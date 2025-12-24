function startup_Contact_Forces_Core

% Startup for project Contact_Forces_Core.prj
% Copyright 2014-2022 The MathWorks, Inc.

% Load library and display version to Command Window
CFL_libname = 'Contact_Forces_Lib';
load_system(CFL_libname);
disp(get_param(CFL_libname,'Description'));
which(CFL_libname)

% Check for shadowed versions on the path
tempNumCFLLibs = which(CFL_libname,'-all');
if (length(tempNumCFLLibs)>1)
    tempCFLwarnStr = sprintf('Multiple copies of the Simscape Multibody Contact Force Library are on the MATLAB path. It is recommended you only have one copy on your path. Please consider adjusting your MATLAB path so that only one copy is present.\n\nLocations of Simscape Multibody Contact Force Library on your path:\n');
    tempCFLLibStr = sprintf('%s\n',tempNumCFLLibs{:});
    warning([tempCFLwarnStr tempCFLLibStr])
end

% Only open overview if this is the top level project
% Do not open if this is a Reference Projects
curr_proj = simulinkproject;
if(curr_proj.Information.TopLevel)
   web('Contact_Forces_Demo_Script_Library_Only.html');
end

