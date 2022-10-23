S = zeros(20015,20015);
load('E:\matlab111\bin\label24.mat','In');
for i = 1 : 20015
    c =  In(i,:);
    for j = 1 : 20015
        d =  In(j,:);
        e = length(find(intersect(c,d)));
        m = length(find(d));
        n = length(find(c));
        S(i,j) = (e/m + e/n)/2;
    end
end
save('E:\matlab111\bin\S.mat','S');
    