x0 = 0.5;           % inital value 
maxStep = 200;      % the first maxStep/2 values are discarded  
r = (2:0.005:4)'; 
x = zeros(length(r), maxStep+1);
x(:,1) = x0;
for ii = 1:maxStep
    x(:,ii+1) = r .* x(:,ii) .* (1-x(:,ii));
end
x = x(:,maxStep/2:end);
plot(r,x,'k.')
xlabel('Value of r')
ylabel('Non-wandering points')
title('Bifurcation diagram for logistic map')