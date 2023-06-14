%
% Loads a map of uchr values, ie. a BW image as saved under s_MapUch.
%
function M = LoadMapUch(lfn)

if ~exist(lfn, 'file'), error('cannot find file %s', lfn); end

%% sssssssssssssss   READ   sssssssssssssssssss
fileID      = fopen(lfn, 'r');

% =====  HEADER:
szV         = fread(fileID, 1, 'int=>int');
szH         = fread(fileID, 1, 'int=>int');
fprintf('[%d %d]', szV, szH);

M           = fread(fileID, szV*szH, 'uint8=>uint8');

fclose(fileID);

%% === Bring Matrix to Shape ===
M    = reshape(M, [szH szV]);
M    = permute(M, [2 1]);

fprintf('\n');

end
