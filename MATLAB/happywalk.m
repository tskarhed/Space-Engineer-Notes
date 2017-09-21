function [ output_args ] = happywalk( numberOfSteps )
% Drunk student walking home from the bar

x = 0;
y = 0;
L=0;
r = 0;
while L<100
    r=r+1;
    step = rand();
    if step < 0.25
        %höger
        x(r+1)=x(r)+1;
        y(r+1)=y(r);
    elseif step < 0.5
        %vänster
        x(r+1)=x(r)-1;
        y(r+1)=y(r);
    elseif step < 0.75
        %Framåt
        y(r+1)=y(r)+1;
        x(r+1)=x(r);
    else
        %Bakåt
        y(r+1)=y(r)-1;
        x(r+1)=x(r);
    end
    L = sqrt(x(r+1)^2+y(r+1)^2);
end

disp(r);
plot(x, y, [0 x(end)], [0 y(end)], 'r:o');
    
end

