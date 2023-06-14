%
% Plots a list of straighers from vector (attribute) information 
% with upsampled/upscaled attribute info.
% 
% Note that signs here correspond to C pixels, as we plot on top of image.
%
function [] = p_StrFromVectScl(STR, szI) 

szV  = szI(1);
szH  = szI(2);

for i = 1:STR.nStr

    posV    = STR.PosV(i)*szV + 1;  % vertical position (ij->Cartes.)
    posH    = STR.PosH(i)*szH + 1;  % horizontal position
    ori     = STR.Ori(i);           % orientation angle
    les     = STR.Les(i)*szH;       % length
    %ctr     = STR.Ctr(i);           % contrast
        
    yrd     = sin(ori)*les/2;       % quasi radius
    xrd     = cos(ori)*les/2;
        
    % signs matter for transformation ij->Cartesian
    hl = line([posH-xrd posH+xrd], [posV-yrd  posV+yrd]); 

    % add color:
    red     = STR.Red(i);
    grn     = STR.Grn(i);
    blu     = STR.Blu(i);
    %set(hl, 'color', [red grn blu]);
    set(hl, 'color', [1 0 0]);
    
    % make linewidth proportional to contrast:
    set(hl, 'linewidth', 1);
    
end    
