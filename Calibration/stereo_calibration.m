% Auto-generated by stereoCalibrator app on 28-December-2020
%-------------------------------------------------------


% Define images to process
imageFileNames1 = {'/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_1.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_10.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_12.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_19.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_22.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_24.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_25.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_26.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_3.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_32.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_33.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_34.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_35.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_36.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_39.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_40.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_41.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_42.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_43.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_44.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_45.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_46.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_49.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_5.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_51.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_53.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_55.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_56.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_57.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_58.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_60.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_62.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_66.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_68.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_70.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_72.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/left/l_76.png',...
    };
imageFileNames2 = {'/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_1.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_10.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_12.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_19.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_22.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_24.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_25.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_26.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_3.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_32.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_33.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_34.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_35.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_36.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_39.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_40.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_41.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_42.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_43.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_44.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_45.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_46.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_49.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_5.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_51.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_53.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_55.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_56.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_57.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_58.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_60.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_62.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_66.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_68.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_70.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_72.png',...
    '/Users/aniekan/Documents/Final_Year_Project/Matlab/updated_project_data/calibration/right/r_76.png',...
    };

% Detect checkerboards in images
[imagePoints, boardSize, imagesUsed] = detectCheckerboardPoints(imageFileNames1, imageFileNames2);

% Generate world coordinates of the checkerboard keypoints
squareSize = 125;  % in units of 'millimeters'
worldPoints = generateCheckerboardPoints(boardSize, squareSize);

% Read one of the images from the first stereo pair
I1 = imread(imageFileNames1{1});
[mrows, ncols, ~] = size(I1);

% Calibrate the camera
[stereoParams, pairsUsed, estimationErrors] = estimateCameraParameters(imagePoints, worldPoints, ...
    'EstimateSkew', false, 'EstimateTangentialDistortion', false, ...
    'NumRadialDistortionCoefficients', 2, 'WorldUnits', 'millimeters', ...
    'InitialIntrinsicMatrix', [], 'InitialRadialDistortion', [], ...
    'ImageSize', [mrows, ncols]);

% View reprojection errors
h1=figure; showReprojectionErrors(stereoParams);

% Visualize pattern locations
h2=figure; showExtrinsics(stereoParams, 'CameraCentric');

% Display parameter estimation errors
displayErrors(estimationErrors, stereoParams);

% You can use the calibration data to rectify stereo images.
I2 = imread(imageFileNames2{1});
[J1, J2] = rectifyStereoImages(I1, I2, stereoParams);
% h3 = figure;
% subplot(2,1,1); imshowpair(I1, I2, 'montage'); title('Original');
% subplot(2,1,2); imshowpair(J1, J2, 'montage'); title('Rectified');
