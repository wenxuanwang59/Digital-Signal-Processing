function [c2] = similarc2(x,y);
c2=x*y'/(sqrt(x*x')*sqrt(y*y'));
end