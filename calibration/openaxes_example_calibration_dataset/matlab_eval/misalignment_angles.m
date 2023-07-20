function [angles] = misalignment_angles(misalignment_matrix, format)
%MISALIGNMENT_ANGLES Summary of this function goes here
%   Detailed explanation goes here

arguments
    misalignment_matrix (3,3,:) double
    format string = 'rad'
end

M = misalignment_matrix;
angles = [...
    atan2(M(1,2,:), 1)...
    atan2(M(1,3,:), 1)...
    atan2(M(2,1,:), 1)...
    atan2(M(2,3,:), 1)...
    atan2(M(3,1,:), 1)...
    atan2(M(3,2,:), 1)...
];
if strcmp(format, 'deg') == 1
    angles = rad2deg(angles);
end
end
