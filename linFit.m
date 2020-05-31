function [m, b, errm, errb] = linFit(x, y, ee)
%Find the linear fit of set of x and y coordinates, and the calculated
%error
 delta = sum(1./ee.^2) * sum(x.^2./ee.^2)- (sum(x./ee.^2))^2;
 m = (sum(1./ee.^2) * sum(x.*y./ee.^2)- sum(x./ee.^2) * sum(y./ee.^2)) / delta;
 b = (sum(x.^2./ee.^2) * sum(y./ee.^2)- sum(x./ee.^2) * sum(x.*y./ee.^2)) / delta;
 errm = sqrt(sum(1./ee.^2) / delta);
 errb = sqrt(sum(x.^2./ee.^2) / delta);
end

