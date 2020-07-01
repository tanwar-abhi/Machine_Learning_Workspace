function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positive_index = find(y);
rejected = zeros(length(y)-length(positive_index),2);
ct = 0;
for i=1:size(y,1)
    if y(i) == 0
        ct = ct+1;
        rejected(ct,:) = [X(i,1),X(i,2)];
    end
        
end
admitted = [X(positive_index,1),X(positive_index,2)];
plot(admitted(:,1),admitted(:,2),'k+','LineWidth',2);
plot(rejected(:,1),rejected(:,2),'b.','MarkerSize',20);

hold off;

end
