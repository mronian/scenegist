%
% This script shows how to use the LabelMe toolbox to read the annotations.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Modeling the shape of the scene: a holistic representation of the spatial envelope
% Aude Oliva, Antonio Torralba
% International Journal of Computer Vision, Vol. 42(3): 145-175, 2001.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% First download the images and annotations and create the next folder
% structure
%   yourpath/images/spatial_envelope_256x256_static_8outdoorcategories
%   yourpath/annotations/spatial_envelope_256x256_static_8outdoorcategories
%
% Download also the LabelMe toolbox and add it to the Matlab path:
%   http://labelme.csail.mit.edu/LabelMeToolbox/index.html
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% put here the name of the images and annotations paths:
HOMEIMAGES = 'C:\Work\Internship 2015\Devi Parikh\images\';
HOMEANNOTATIONS = 'C:\Work\Internship 2015\Devi Parikh\annotations';

Dlabelme = LMdatabase(HOMEANNOTATIONS, {'spatial_envelope_256x256_static_8outdoorcategories'});