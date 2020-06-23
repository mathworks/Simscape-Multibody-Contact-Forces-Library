% Code to plot simulation results from Frict3D_08_Ball_on_Driven_Tube
%
% Copyright 2015-2020 The MathWorks, Inc.

% Reuse figure if it exists, else create new figure
try
    figure(h1_Frict3D_08_Ball_on_Driven_Tube)
catch
    h1_Frict3D_08_Ball_on_Driven_Tube=figure('Name','Frict3D_08_Ball_on_Driven_Tube');
end

% Generate simulation results if they don't exist
if(~exist('simlog_Frict3D_08_Ball_on_Driven_Tube','var'))
    sim('Frict3D_08_Ball_on_Driven_Tube')
end

% Get simulation results
simlog_t = simlog_Frict3D_08_Ball_on_Driven_Tube.Telescoping_Ball_In.S.w.series.time;
simlog_wBin = simlog_Frict3D_08_Ball_on_Driven_Tube.Telescoping_Ball_In.S.w.series.values('deg/s');
simlog_wBout = simlog_Frict3D_08_Ball_on_Driven_Tube.Telescoping_Ball_Out.S.w.series.values('deg/s');
simlog_wTube = simlog_Frict3D_08_Ball_on_Driven_Tube.Spinning_Markings.Revolute_Markings.Rz.w.series.values('deg/s');
simlog_wBout_wy = simlog_wBout(2:3:end);
simlog_wBin_wy  = simlog_wBin(2:3:end);

% Plot results
plot(simlog_t,simlog_wTube,'LineWidth',1);
hold on
plot(simlog_t,simlog_wBin_wy,'LineWidth',1);
plot(simlog_t,simlog_wBout_wy,'LineWidth',1);
hold off
grid on
title('Rotational Speeds about Tube Axis');
ylabel('Speed (deg/s)');
xlabel('Time (s)');
legend({'Tube',...
    ['Inner Ball: ' sprintf('%1.1f',simlog_wBin_wy(end)/simlog_wTube(end)) 'x Tube Speed'],...
    ['Outer Ball: ' sprintf('%1.1f',simlog_wBout_wy(end)/simlog_wTube(end)) 'x Tube Speed']},...
    'Location','Best');

% Remove temporary variables
clear simlog_t simlog_wBin simlog_wTube simlog_wBout
clear simlog_wBin_wy simlog_wTube simlog_wBout_wy 
