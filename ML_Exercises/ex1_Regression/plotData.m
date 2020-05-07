function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; 

plot(x, y,'rx','MarkerSize', 10);

xlabel('Population (1e4)','FontSize',15);
ylabel('Profit in city (1e4) ','FontSize',15);


end
