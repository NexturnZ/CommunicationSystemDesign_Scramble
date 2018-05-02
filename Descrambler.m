function [output, reg_out] = Descrambler(input, reg_in)
z7 = reg_in(7);
z4 = reg_in(4);

output = mod(mod(z7+z4,2)+input,2);
reg_out(2:7) = reg_in(1:6);
reg_out(1) = input;
end