function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% This function Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    tempTheta(1) = theta(1) - (alpha/m)*(X*theta - y)'*X(:,1);
    tempTheta(2) = theta(2) - (alpha/m)*(X*theta - y)'*X(:,2);
    
    % Simultaneous update of theta(fitting function) , rather than
    % instantaneous update
    theta(1) = tempTheta(1);
    theta(2) = tempTheta(2);

%      if iter > 2 && abs(J_history(iter-1) - J_history(iter)) < 10^-8
%          break;
%      end

end

end
