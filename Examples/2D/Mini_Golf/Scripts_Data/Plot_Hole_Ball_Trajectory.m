% PLOT BALL PATH
% Copyright 2012-2023 The MathWorks(TM), Inc.

holestr = HoleChoice;

figure(str2num(holestr(end)));
clf

Wall_Gray = [119 119 119]/255;

Hole_Field_Names = fieldnames(eval(['Mini_Golf_Param.' holestr ]));

% PLOT SURFACES
Field_Indexes = find(strncmp(Hole_Field_Names,'Surf',4));
for i=1:length(Field_Indexes)
    s = eval(['Mini_Golf_Param.' holestr '.' char(Hole_Field_Names(Field_Indexes(i)))]);
    p1x = [s.Offset(1)-s.Length/2 ...
        s.Offset(1)+s.Length/2 ...
        s.Offset(1)+s.Length/2 ...
        s.Offset(1)-s.Length/2];
    
    p1y = [s.Offset(2)+s.Width/2 ...
        s.Offset(2)+s.Width/2 ...
        s.Offset(2)-s.Width/2 ...
        s.Offset(2)-s.Width/2];
    
    patch(p1x,p1y,'g','EdgeColor','g');
    hold on
end

% PLOT WALLS
Field_Indexes = find(strncmp(Hole_Field_Names,'Wall',4));
for i=1:length(Field_Indexes)
    w = eval(['Mini_Golf_Param.' holestr '.' char(Hole_Field_Names(Field_Indexes(i)))]);
    p1x = [w.Offset(1)-w.Length/2*sin(w.Angle*pi/180) - Mini_Golf_Param.Wall.Width/2*cos(w.Angle*pi/180) ...
        w.Offset(1)+w.Length/2*sin(w.Angle*pi/180) + Mini_Golf_Param.Wall.Width/2*cos(w.Angle*pi/180)  ...
        w.Offset(1)+w.Length/2*sin(w.Angle*pi/180) + Mini_Golf_Param.Wall.Width/2*cos(w.Angle*pi/180)  ...
        w.Offset(1)-w.Length/2*sin(w.Angle*pi/180) - Mini_Golf_Param.Wall.Width/2*cos(w.Angle*pi/180) ];
    
    p1y = [w.Offset(2) + w.Length/2*cos(w.Angle*pi/180)+Mini_Golf_Param.Wall.Width/2*sin(w.Angle*pi/180) ...
        w.Offset(2)+ w.Length/2*cos(w.Angle*pi/180)+Mini_Golf_Param.Wall.Width/2*sin(w.Angle*pi/180) ...
        w.Offset(2)- w.Length/2*cos(w.Angle*pi/180)-Mini_Golf_Param.Wall.Width/2*sin(w.Angle*pi/180) ...
        w.Offset(2)- w.Length/2*cos(w.Angle*pi/180)-Mini_Golf_Param.Wall.Width/2*sin(w.Angle*pi/180)];
    
    p1 = patch(p1x,p1y,'k');
    set(p1,'FaceColor',Wall_Gray,'EdgeColor',Wall_Gray)
    hold on
end

% PLOT POSTS
Field_Indexes = find(strncmp(Hole_Field_Names,'Post',4));
for i=1:length(Field_Indexes)
    w = eval(['Mini_Golf_Param.' holestr '.' char(Hole_Field_Names(Field_Indexes(i)))]);
    p1 = patch(w.Offset(1)+sin(0:0.1:2*pi)*w.Diameter/2,...
        w.Offset(2)+cos(0:0.1:2*pi)*w.Diameter/2,'k');   
    set(p1,'FaceColor',Wall_Gray,'EdgeColor',Wall_Gray)
    hold on
end

% PLOT EXTRUSIONS
Field_Indexes = find(strncmp(Hole_Field_Names,'Extr',4));
for i=1:length(Field_Indexes)
    w = eval(['Mini_Golf_Param.' holestr '.' char(Hole_Field_Names(Field_Indexes(i)))]);
    p1 = patch(w.Cross_Section_Data(:,1)+w.Offset(1),w.Cross_Section_Data(:,2)+w.Offset(2),'k');   
    set(p1,'FaceColor',Wall_Gray,'EdgeColor',Wall_Gray)
    hold on
end

% PLOT HOLE
holeloc = eval(['Mini_Golf_Param.' holestr '.Location']);
patch(holeloc(1)+sin(0:0.1:2*pi)*Mini_Golf_Param.Hole.Radius,...
    holeloc(2)+cos(0:0.1:2*pi)*Mini_Golf_Param.Hole.Radius,'k');

% SET DIMENSONS AND SET ASPECT RATIO TO 1
plotdim = eval(['Mini_Golf_Param.' holestr '.Plot_Dim ']);
axis(plotdim);
axis square
box on
hold off

% PLOT TRAJECTORY
hold on
plot(Ball_xy.signals.values(:,1),Ball_xy.signals.values(:,2))
axis square
hold off
title([strrep(holestr,'_',' ') ' (' num2str(NumStrokes) ' Strokes, ' num2str(max(tout)) ' Seconds)']);


