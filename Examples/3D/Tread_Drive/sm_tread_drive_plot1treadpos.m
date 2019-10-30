% Code to plot simulation results from sm_tread_drive
%% Plot Description:
%
% The plot below shows the speed of the tread drive.
%
% Copyright 2017-2018 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sm_tread_drive', 'var')
    sim('sm_tread_drive')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sm_tread_drive', 'var') || ...
        ~isgraphics(h1_sm_tread_drive, 'figure')
    h1_sm_tread_drive = figure('Name', 'sm_tread_drive');
end
figure(h1_sm_tread_drive)
clf(h1_sm_tread_drive)

%temp_colororder = get(gca,'defaultAxesColorOrder');

% Get simulation results
simlog_t = simlog_sm_tread_drive.Bushing_Tread.Px.p.series.time;
simlog_treadPv = simlog_sm_tread_drive.Bushing_Tread.Px.v.series.values('m/s');

% Plot results
plot(simlog_t, simlog_treadPv, 'LineWidth', 1)
grid on
box on
title('Tread Speed')
xlabel('Time (s)');
ylabel('Speed (m/s)');

% Remove temporary variables
clear simlog_t simlog_treadPv
clear temp_colororder

