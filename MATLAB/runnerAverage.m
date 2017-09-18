function average = runnerAverage( distance, time )
%distance in km and time in minutes and seconds 24.45 (24 minutes and 45
%seconds)

%Convert all to seconds
minutes = floor(time);
seconds = (time-minutes)*100;
realSeconds = seconds+minutes*60;

%Get average in seconds
avgSeconds = realSeconds/distance;

%Convert to minutes and seconds
[h m s] = secondConversion(avgSeconds);

average = m + s/100;

end

