function getfile(filename)
% GETFILE             Copy a file to the current directory
%
% GETFILE filename places a copy of filename in the current directory.
% filename must be on the MATLAB path.  This is easier than using
% COPYFILE because you don't need to specify the path to the source file.
%
% Example:
%   getfile contour  %Place a copy of contour.m in the current directory
%
% SEE ALSO: GOTO (MATLAB Central), WHICH, COPYFILE

% Michelle Hirsch
% mhirsch@mathworks.com
% Copyright 2003 The MathWorks, Inc

fn = which(filename);
if isempty(fn)
    error([filename ' not found.']);
end;

[s,msg] = copyfile(which(filename));
if s==0
    error(msg)
end;

