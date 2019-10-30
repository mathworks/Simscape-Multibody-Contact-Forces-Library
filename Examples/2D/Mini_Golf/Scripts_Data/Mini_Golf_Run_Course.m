% RUN COURSE AND SAVE RESULTS IN EXCEL FILE
% Copyright 2012-2019 The MathWorks(TM), Inc.

% RETURN TO HOME DIRECTORY SO THAT FIGURES ARE SAVED IN CORRECT FOLDER
cd(Mini_Golf_Model_HomeDir);
mdl = bdroot;

% GET LIST OF HOLES
HoleList = get_param([mdl '/Course'],'Variants');
%HoleList = [',' HoleList ','];
%CommaInds = findstr(HoleList,',');

NumBlockChoices = length(HoleList);

%for hole_i = 1:NumBlockChoices
%     BlockChoiceSet{hole_i} = HoleList(CommaInds(hole_i)+1:CommaInds(hole_i+1)-1);
%end

% SET STARTING VALUE FOR HOLE RESULTS TO MAXIMUM STROKES AND TIME
Mini_Golf_Results.Strokes(1:NumBlockChoices) = 10;
Mini_Golf_Results.Time(1:NumBlockChoices) = 100;

% RUN SIMULATION FOR EACH HOLE AND SAVE RESULTS
for hole_i = 1:NumBlockChoices
    set_param([bdroot '/Course'],'LabelModeActiveChoice',HoleList(hole_i).Name);
    
    sim(bdroot);
    
    % SAVE NUMERICAL VALUES
    Mini_Golf_Results.Strokes(hole_i) = NumStrokes;
    Mini_Golf_Results.Time(hole_i) = max(tout);

	MGT.StopTime(hole_i) = max(tout);
	MGT.Steps(hole_i) = length(tout);
	MGT.SimTime(hole_i) = Elapsed_Sim_Time;

    % SAVE FIGURE WINDOWS TO A FILE
	saveas(gcf,['./Results/Ball_Path_' HoleList(hole_i).Name],'fig');
    close(gcf);
end

% WRITE RESULTS TO EXCEL FILE
MG_out{1,1} = 'Hole';
MG_out{1,2} = 'Strokes';
MG_out{1,3} = 'Time';
for hole_i = 1:NumBlockChoices
    MG_out{hole_i+1,1} = hole_i;
    MG_out{hole_i+1,2} = sprintf('%i',Mini_Golf_Results.Strokes(hole_i));
    MG_out{hole_i+1,3} = sprintf('%3.2f',Mini_Golf_Results.Time(hole_i));
end

MG_out{NumBlockChoices+2,1} = 'Total';
MG_out{NumBlockChoices+2,2} = sprintf('%i',sum(Mini_Golf_Results.Strokes));
MG_out{NumBlockChoices+2,3} = sprintf('%3.2f',sum(Mini_Golf_Results.Time));

xlswrite('Mini_Golf_Results',MG_out,'Course_Results','A1');


