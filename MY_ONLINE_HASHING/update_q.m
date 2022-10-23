function [q,qlabel] = update_q(q,k,Xs_t,ls_t,qlabel)
%从新到达的流数据中随机更新查询池q

%index = randperm(100,20);
n_t = size(Xs_t,2);
for i = 1:n_t
    d = randi(i+k);
    if d<k
        q(:,d) = Xs_t(:,i);
        qlabel(d,:) = ls_t(i,:);
    end
end
