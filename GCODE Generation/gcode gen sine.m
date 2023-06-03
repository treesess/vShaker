%% 230603 this is a simple MATLAB code to generate simple sine wave motion in gcode to execute by vShaker.
  % y axis only. 
  
clear
clc

%% parameters


dt = 0.001;   % command pace
t=0:dt:10;		% demo duration in second
A = 1;				% amplitute in mm
f = 10;				% freq in Hz
offset = A+5;		% setpoint in mm

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


%% gcode generate
% gcodeTable = cell();
for k = 1:length(F)
	oneRow = ['G0 F',num2str(F(k)), ' Y',num2str(abs(Y(k))) ];
	gcodeTable{k,1} = oneRow;
end







rootPath = ''; % get your desired path here
% cd rootPath
filename = ['A',num2str(A), 'f', num2str(f)];
txtfilename = [filename,'.txt'];
fullfilename = fullfile(rootPath, txtfilename);
writecell(gcodeTable,  fullfilename )
movefile(fullfilename,    fullfile(rootPath, [filename,'.gcode']));







