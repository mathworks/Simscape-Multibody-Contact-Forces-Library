function [xy_data] = Plane_Data_Ring(ring_od, ring_id)

% Copyright 2012-2022 The MathWorks(TM), Inc.

theta = [(0:1:359) 0]'*pi/180;
unit_circle = [cos(theta), sin(theta)];
xy_data = [ring_od/2 * unit_circle; ring_id/2 * flipud(unit_circle)];

