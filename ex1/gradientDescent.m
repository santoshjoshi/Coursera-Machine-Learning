function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


X_0 = 1 ;
theta_0 = 0 ;
theta_1 = 0 ;
		
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
  
	
	COST_1 = sum( (X * theta - y )' * X(: , 1)	);
	COST_2 = sum( (X * theta - y )' * X(: , 2)	) ;
	
	theta(1) = theta(1) - ( alpha * COST_1 )/m; 
	theta(2) = theta(2) - ( alpha * COST_2 )/m; 
	 
endfor	 

end
	
 
 
