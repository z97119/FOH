S = zeros(20015,20015);
load('..\data\MIRFLICKR.mat','LAll');
for i = 1 : 20015
    c =  LAll(i,:);
    for j = 1 : 20015
        d =  LAll(j,:);
        e = length(find(intersect(c,d)));
        m = length(find(d));
        n = length(find(c));
        S(i,j) = (e/m + e/n)/2;
    end
end
save('S20015.mat','S');
    