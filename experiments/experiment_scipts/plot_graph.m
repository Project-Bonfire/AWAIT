map = [255,245,235
       254,230,206
       253,208,162
       253,174,107
       253,141, 60
       241,105, 19
       217, 72,  1
       166, 54,  3
       127, 39,  4];

map = map/256;

% File should not have headers
filename = 'sim_results_10ns.csv';

csv = (csvread(filename))';

%csv = [1, -1, 9, 4; 5, 6, 7, 8; 9, 6, 11, 12];

% Replace -1-s with NaN to create empty space in the graph for 
% cases where the system does not correct itself
csv(csv == -1) = NaN;

X = csv (1,:);
Y = csv (2,:);
Z = csv (3,:);

max_value = max(Z);

for i=1:length(Z)
    if Z(i) == NaN
        Z(i) = NaN;
    end
end

x_axis = 0:50:max(X);
y_axis = 0:5:max(Y);

%[xx,yy] = meshgrid (linspace (0,max(X),max(X)));
[xx,yy] = meshgrid (x_axis, y_axis);


%zz = griddata (X, Y, Z, xx, yy);
zz = griddata (X, Y, Z, xx, yy, method="nearest");

surf (xx, yy, zz);

%colorbar() % <= comment this in and then try rotating the graph for the funniest bug you have seen in a long time (bug exists in Octave 4.0)

set(gca,'XTick',x_axis);     % set Xticks
set(gca,'YTick',y_axis );  % set Yticks
grid on

title ('Dependance of Average Latency on Frame Size and  Fault Injection Rate');
xlabel ('Frame size');
ylabel ('Fault Injection Rate');
zlabel ('Average Latency');
axis ('manual');

view(0,90);
%axis ([0 100 0 100 0 max_value + 10 ])
colormap(map);
%saveas (1, 'FI.png');
