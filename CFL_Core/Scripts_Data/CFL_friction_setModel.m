function CFL_friction_setModel(mdlname,frictionModel)
% Turn friction on or off in all contact force blocks in a model
% from Simscape Multibody Contact Force Library. Pass the name of the model
% as an argument to this function

% Copyright 2014-2023 The MathWorks, Inc.

f=Simulink.FindOptions('FollowLinks',1,'LookUnderMasks','All','RegExp',1);
CF_bpth=getfullname(Simulink.findBlocks(mdlname,'friction_law','.*',f));
CF_bpth_box2box =getfullname(Simulink.findBlocks(mdlname,'friction_law_box2box','.*',f));
CF_bpth_box2belt=getfullname(Simulink.findBlocks(mdlname,'friction_law_box2belt','.*',f));
CF_bpth_sph2belt=getfullname(Simulink.findBlocks(mdlname,'friction_law_sph2bel','.*',f));

if(~isempty(CF_bpth))
    
    % Check if force is part of a composite force
    % In that case, adjust the setting in the top level mask
    for i=1:length(CF_bpth)
        within_composite_force = 0;
        
        if(~isempty(CF_bpth_box2box))
            for j=1:length(CF_bpth_box2box)
                if (strfind(char(CF_bpth(i)),char(CF_bpth_box2box(j))))
                    within_composite_force = 1;
                end
            end
        end
        
        if(~isempty(CF_bpth_box2belt))
            for k=1:length(CF_bpth_box2belt)
                if (strfind(char(CF_bpth(i)),char(CF_bpth_box2belt(k))))
                    within_composite_force = 1;
                end
            end
        end
        
        if(~isempty(CF_bpth_sph2belt))
            for k=1:length(CF_bpth_sph2belt)
                if (strfind(char(CF_bpth(i)),char(CF_bpth_sph2belt(k))))
                    within_composite_force = 1;
                end
            end
        end
        
        if(within_composite_force==0)
            set_param(char(CF_bpth(i)),'friction_law',frictionModel);
            %disp(['Force ' char(CF_bpth(i)) ' not in composite force']);
            %else
            %    disp(['Force ' char(CF_bpth(i)) ' WITHIN composite force']);
        end
    end
end

if(~isempty(CF_bpth_box2box))
    for j=1:length(CF_bpth_box2box)
        set_param(char(CF_bpth_box2box(j)),'friction_law_box2box',frictionModel)
    end
end

if(~isempty(CF_bpth_box2belt))
    for j=1:length(CF_bpth_box2belt)
        set_param(char(CF_bpth_box2belt(j)),'friction_law_box2belt',frictionModel)
    end
end

if(~isempty(CF_bpth_sph2belt))
    for j=1:length(CF_bpth_sph2belt)
        set_param(char(CF_bpth_sph2belt(j)),'friction_law_sph2bel',frictionModel)
    end
end

end
