function [ output ] = diceRoll( )
%Dice roll
% 

%Generate 1x5 array of random values 1-6
dies = randi(6, [1, 5]);

%Who needs a switch statement? Compare the entire array and return an array
%of Booleans. Sum that and you have the number of sixes
disp(sprintf("There are %d sixes", sum(dies(:)==6)));
output = dies;
end

