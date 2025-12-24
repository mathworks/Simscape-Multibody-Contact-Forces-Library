function CFL_visual_setOnOff(mdlname,visOnOff)
% Show or hide all contact surfaces in all contact force blocks in a model
% from Simscape Multibody Contact Force Library. Pass the name of the model
% as an argument to this function

% Copyright 2014-2024 The MathWorks, Inc.

f=Simulink.FindOptions('FollowLinks',1,'LookUnderMasks','All','RegExp',1);
CF_bpth=getfullname(Simulink.findBlocks(mdlname,'vis_on','.*',f));
CF_bpth_box2box =getfullname(Simulink.findBlocks(mdlname,'vis_on_box2box','.*',f));
CF_bpth_box2belt=getfullname(Simulink.findBlocks(mdlname,'vis_on_box2belt','.*',f));
CF_bpth_pla2pla=getfullname(Simulink.findBlocks(mdlname,'vis_on_pla2pla','.*',f));
CF_bpth_sph2belt=getfullname(Simulink.findBlocks(mdlname,'vis_on_sph2bel','.*',f));

if(ischar(CF_bpth)),CF_bpth = {CF_bpth};end
if(ischar(CF_bpth_box2box)), CF_bpth_box2box  = {CF_bpth_box2box};end
if(ischar(CF_bpth_box2belt)),CF_bpth_box2belt = {CF_bpth_box2belt};end
if(ischar(CF_bpth_sph2belt)),CF_bpth_sph2belt = {CF_bpth_sph2belt};end
if(ischar(CF_bpth_pla2pla)), CF_bpth_pla2pla  = {CF_bpth_pla2pla};end

if(~isempty(CF_bpth))
    for i=1:size(CF_bpth,1)
        within_composite_force = 0;
        
        % Check if force is part of a composite force
        % In that case, adjust the setting in the top level mask
        if(~isempty(CF_bpth_box2box))
            for j=1:size(CF_bpth_box2box,1)
                if (strfind(CF_bpth{i},CF_bpth_box2box{j}))
                    within_composite_force = 1;
                end
            end
        end
        
        if(~isempty(CF_bpth_box2belt))
            for k=1:size(CF_bpth_box2belt,1)
                if (strfind(CF_bpth{i},CF_bpth_box2belt{k}))
                    within_composite_force = 1;
                end
            end
        end
        if(~isempty(CF_bpth_sph2belt))
            for k=1:size(CF_bpth_sph2belt,1)
                if (strfind(CF_bpth{i},CF_bpth_sph2belt{k}))
                    within_composite_force = 1;
                end
            end
        end
        if(~isempty(CF_bpth_pla2pla))
            for k=1:size(CF_bpth_pla2pla,1)
                if (strfind(CF_bpth{i},CF_bpth_pla2pla{k}))
                    within_composite_force = 1;
                end
            end
        end
       
        
        if(within_composite_force==0)
            set_param(CF_bpth{i},'vis_on',visOnOff);
%            disp(['Force ' CF_bpth{i} ' not in composite force']);
%        else
%            disp(['Force ' CF_bpth{i} ' WITHIN composite force']);
        end
    end
end

if(~isempty(CF_bpth_box2box))
    for j=1:size(CF_bpth_box2box,1)
        set_param(CF_bpth_box2box{j},'vis_on_box2box',visOnOff)
    end
end

if(~isempty(CF_bpth_box2belt))
    for j=1:size(CF_bpth_box2belt,1)
        set_param(CF_bpth_box2belt{j},'vis_on_box2belt',visOnOff)
    end
end

if(~isempty(CF_bpth_sph2belt))
    for j=1:size(CF_bpth_sph2belt,1)
        set_param(CF_bpth_sph2belt{j},'vis_on_sph2bel',visOnOff)
    end
end

if(~isempty(CF_bpth_pla2pla))
    for j=1:size(CF_bpth_pla2pla,1)
        set_param(CF_bpth_pla2pla{j},'vis_on_pla2pla',visOnOff)
    end
end


end
