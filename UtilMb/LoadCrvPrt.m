% 
% Reads arc and straighter segment attributes
% See also program 'dscx' (descriptor extraction)
%
function [Arc Str] = LoadCrvPrt(lfn)

fileID   = fopen(lfn, 'r');
if (fileID<0), error('file %s not found', lfn); end

Arc = ReadArcAtt(fileID);
Str = ReadStrAtt(fileID);

%id = fscanf(fileID, '%d', 1);
%assert(id==222);

fclose(fileID);

end

