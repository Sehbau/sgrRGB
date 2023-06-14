%
% Example for loading the segregation output.
%
clear;
addpath('UtilMb');

[status, Out] = dos('sgrRGB Imgs\img1.jpg 128 128 128 --init 0');
Icol1     = imread('Ifore.png');
[status, Out] = dos('sgrRGB Imgs\img1.jpg 128 128 128 --init 1');
Icol2     = imread('Ifore.png');
[status, Out] = dos('sgrRGB Imgs\img1.jpg 128 128 128 --init 2');
Icol3     = imread('Ifore.png');

%% --------     Plot    ------------
figure(1); 
[nr nc] = deal(2,2);

subplot(nr,nc,1); imagesc(Icol1);
subplot(nr,nc,2); imagesc(Icol2);
subplot(nr,nc,3); imagesc(Icol3);



