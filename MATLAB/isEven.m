function = isEven( value )
% Checks if input value is even
% value modulo 2 returns either 1 or 0 depending on if it is divisible by
% 2.
if mod(value, 2);
    disp(sprintf('%d är ojämnt.', value));
else
    disp(sprintf('%d är jämnt.', value));
    
end

end

