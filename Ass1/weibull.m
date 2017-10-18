function [ output ] = weibull( x , k, lambda)

   output = (k/lambda)*((x/lambda)^(k-1))*exp(-(x/lambda)^k);
end

