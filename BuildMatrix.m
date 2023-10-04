function [matrix_E, matrix_H, H_x] = BuildMatrix(x, y, dx, dy) 
X = 0:dx:x;
Y = dx/2:dy:y;
matrix_E = meshgrid(X);
matrix_H = meshgrid(Y);
H_x = 3*dx/2:dx:(x+dx);

end