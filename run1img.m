%
% Example for running segregation and loading its output.
%
clear;
addpath('UtilMb');

[sts, Out] = dos('sgrRGB Imgs/img2.jpg 128 128 128 --init 0');

BW                  = LoadMapUch('Mlab.mpu');
[ABonFore nBonFore] = LoadBonPix('BonFore.bonPix');
[ABonBack nBonBack] = LoadBonPix('BonBack.bonPix');

addpath('c:/klab/ppc/E_DESC/bins/UtilMb/Vect/');
[Arc Str]           = LoadCrvPrt('CrvPrt.cvp');

szI                 = size(BW);

%% --------     Plot Boundaries   ------------
figure(1); clf;
imagesc(BW); hold on;
colTrg  = [1.0 0.0 0.0];
colOff  = [0.9 0.9 0.9];
for b = 1:nBonFore
    hb  = p_BoundPix1(ABonFore{b}, colTrg, 1);
end
for b = 1:nBonBack
    hb  = p_BoundPix1(ABonBack{b}, colOff, 1);
end

%% ---------    Plot Shape    --------
figure(2); clf; hold on;
p_ArcFromVect(Arc);
p_StrFromVect(Str);

%% ---------    Plot Shape on Irgb    --------
Ifore   = imread('Ifore.png');
figure(3); clf;
imagesc(Ifore); hold on;

p_StrFromVectScl(Str, szI);
p_ArcFromVectScl(Arc, szI);

