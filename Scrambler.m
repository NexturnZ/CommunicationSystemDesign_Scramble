function [output, reg_out] = Scrambler(input, reg_in)
z7 = reg_in(7);                         % obtain register value z7
z4 = reg_in(4);                         % obtain register value z4

output = mod(mod(z7+z4,2)+input,2);     % calculate output value
reg_out(2:7) = reg_in(1:6);             
reg_out(1) = output;                    % update register
end