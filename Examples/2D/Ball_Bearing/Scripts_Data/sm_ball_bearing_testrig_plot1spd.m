% Code to plot simulation results from sm_ball_bearing_testrig
%% Plot Description:
%
% The plot below shows speeds relative to the inner race.
%
% Copyright 2018 The MathWorks, Inc.

% Generate simulation results if they don't exist
if ~exist('simlog_sm_ball_bearing_testrig', 'var')
    sim('sm_ball_bearing_testrig')
end

% Reuse figure if it exists, else create new figure
if ~exist('h1_sm_ball_bearing_testrig', 'var') || ...
        ~isgraphics(h1_sm_ball_bearing_testrig, 'figure')
    h1_sm_ball_bearing_testrig = figure('Name', 'sm_ball_bearing_testrig');
end
figure(h1_sm_ball_bearing_testrig)
clf(h1_sm_ball_bearing_testrig)

temp_colororder = get(gca,'defaultAxesColorOrder');

% Get simulation results
simlog_t = simlog_sm_ball_bearing_testrig.Ball_Bearing.Planar.Rz.w.series.time;
simlog_wOR = simlog_sm_ball_bearing_testrig.Ball_Bearing.Planar.Rz.w.series.values('rpm');
simlog_wCa = simlog_sm_ball_bearing_testrig.Ball_Bearing.Revolute_Inner_Cage.Rz.w.series.values('rpm');
simlog_cOut = logsout_sm_ball_bearing_testrig.get('cage_output');
simlog_trq = logsout_sm_ball_bearing_testrig.get('torque');

% Plot results
simlog_handles(1) = subplot(2, 1, 1);
plot(simlog_t, simlog_wOR, simlog_t, simlog_wCa, 'LineWidth', 1)
hold off
grid on
title('Speed Relative to Inner Race')
ylabel('Speed (RPM)')
legend({'Outer Race','Cage'},'Location','Best');

simlog_handles(2) = subplot(2, 1, 2);
plot(simlog_cOut.Values.Time, simlog_cOut.Values.Data, 'LineWidth', 1)
title('Normal Force on Balls from Outer Race')
ylabel('Force (N)')
grid on
xlabel('Time (s)')

linkaxes(simlog_handles, 'x')

% Remove temporary variables
clear simlog_t simlog_handles
clear simlog_trq simlog_wOR simlog_wCa simlog_cOut temp_colororder

