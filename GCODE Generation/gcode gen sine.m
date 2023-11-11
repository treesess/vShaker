%% 230603 this is a simple MATLAB code to generate simple sine wave motion in gcode to execute by vShaker.
% y axis only. 
  
clear
clc

%% basic vShaker machine parameters
	max_position = 130	; % in mm
	offset = max_position./2;		% mm, shouldn't be larger than A, 50 is the mid of range. 

%% test parameters
	dt = 0.001;   % command pace
	t=0:dt:10;		% demo duration in second
	A = 1;				% amplitute in mm
	f = 10;				% freq in Hz

%% gcode generation
	tf = t(2:end);
	ty = tf;
	
	w=2*pi*f;
	y=A*sin(w.*t)+ offset;
	Y = y(2:end);
	F=abs( diff(y)./dt.*60)+0.001;  % speed, in mm/min 
	
	%% plot to verify
	% % 		plot(ty,Y)
	% % 		hold on
	% % 		plot(tf,F)
	% % 		legend('Y','F')
	
	% gcodeTable = cell();
	for k = 1:length(F)
		oneRow = ['G0 F',num2str(F(k)), ' Y',num2str(abs(Y(k))) ];
		gcodeTable{k,1} = oneRow;
	end
	


%% print start and print end safe codes
	gcodeCell = ['M106 S255';
				'G90';
				'G28 Y';
				'G0 F2000 Y65';
				gcodeCell;
				'M84']; % move to center first




rootPath = ''; % get your desired path here
% cd rootPath
filename = ['f = ', num2str(f),' Hz,'  ,'A = ',num2str(A), ' mm'];
txtfilename = [filename,'.txt'];
fullfilename = fullfile(rootPath, txtfilename);
writecell(gcodeTable, fullfilename )
movefile(fullfilename, fullfile(rootPath, [filename,'.gcode']));







