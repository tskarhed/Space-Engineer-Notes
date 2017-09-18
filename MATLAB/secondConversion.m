function [ hours, minutes, seconds ] = secondConversion( time )
%Time in seconds

%How many 3600 does it fit? Round down.
hours = floor(time/3600);
%Remove hours and check for amount of 60
minutes = floor((time-(hours*3600))/60);
%anything that's left
seconds = time-hours*3600-minutes*60;

end

