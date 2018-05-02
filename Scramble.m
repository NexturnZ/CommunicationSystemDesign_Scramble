clear;

init = zeros(1,7);
data = ones(1,100);

Scrdt = zeros(1,100);
[Scrdt(1),reg] = Scrambler(data(1), init);
for i1 = 2:100
   [Scrdt(i1), reg] =  Scrambler(data(i1), reg);
end

fprintf('origin\tresult\n');
rec = zeros(1,100);
[rec(1),reg] = Descrambler(Scrdt(1), init);
for i1 = 2:100
   [rec(i1), reg] =  Descrambler(Scrdt(i1), reg);
   fprintf('%d\t%d\n',data(i1),rec(i1));
end