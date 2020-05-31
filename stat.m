function [mean, stdev, stdmean] = stat(data)
%Find the mean, standard deviation, and standard deviation of the mean 
% from a set of data
mean = sum(data)/length(data);
stdev = sqrt(sum((data - mean).^2)/(length(data) - 1));
stdmean = stdev / sqrt(length(data));
end

