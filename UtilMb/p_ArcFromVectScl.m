%
% Plots a list of arcs from vector (attribute) information with scaled
% coordinates
%
% af p_ArcFromVect.m
%
function [] = p_ArcFromVectScl(ARC, szI) 

szV  = szI(1);
szH  = szI(2);

for i = 1:ARC.nArc

    posV    = ARC.PosV(i)*szV + 1;  % vertical position (ij->Cartes.)
    posH    = ARC.PosH(i)*szH + 1;  % horizontal position
    dir     = ARC.Dir(i);           % orientation angle
    les     = ARC.Les(i);           % length
    %ctr     = STR.Ctr(i);           % contrast
        
    %yrd     = sin(ori)*les/2;       % quasi radius
    %xrd     = cos(ori)*les/2;
    yrd      = les/2;
    xrd      = les/2;

    %hl = rectangle('position',[posH-xrd  posV-yrd  les*0.8  les*0.8]); 
    hl = plot(posH, posV, 'o');

    % add color:
    red     = ARC.Red(i);
    grn     = ARC.Grn(i);
    blu     = ARC.Blu(i);
    % set(hl, 'edgecolor', [red grn blu]);
    %xset(hl, 'color', [red grn blu]);
    set(hl, 'color', [1 1 0]);
    
    % make linewidth proportional to contrast:
    %set(hl, 'linewidth', 0.2 + 2*ctr); % 0.2 is minimum width
    
end    
