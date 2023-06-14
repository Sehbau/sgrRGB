%
% Plots a single bounding box.
%
function hp = p_BoundPix1(Pix, col, bJit)

if nargin==2, bJit=0;  end % if jitter not specified, then OFF

% add some jitter to avoid overlap 
if bJit>0, off = rand(1) * 0.2;
else       off = 0; end
    
% from zero to one-indexing adding 1.0
hp = plot(Pix.Cl+1, Pix.Rw+1, '-');

set(hp, 'color', col);          % default color. might be overwritten

end

