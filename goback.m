function goback
% GOBACK             Return to previous directory (after using GOTO)
%
% GOBACK works with GOTO to ease navigating from the MATLAB command line.
% GOTO jumps you to the directory containing a specified file.  GOBACK
% brings you back to where you were before calling GOTO.
%
% SEE ALSO:  WHICH, GOTO
%

% Michelle Hirsch
% mhirsch@mathworks.com
% Copyright 2003 - 2004 The MathWorks, Inc
if ~isappdata(0,'LastDirectory')
    warning('I''ve got nowhere to go.  This only works after you have called GOTO.');
    return
end;

%Store current directory.  This will allow us to return easily with goback
cd(getappdata(0,'LastDirectory'));
