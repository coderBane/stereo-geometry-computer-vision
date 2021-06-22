% Auto-generated by stereoCalibrator app on 28-December-2020
%-------------------------------------------------------


% Define images to process
imageFileNames1 = {'/left/l_1.png',...
                   '/left/l_10.png',...
                   '/left/l_12.png',...
                   '/left/l_19.png',...
                   '/left/l_22.png',...
                   '/left/l_24.png',...
                   '/left/l_25.png',...
                   '/left/l_26.png',...
                   '/left/l_3.png',...
                   '/left/l_32.png',...
                   '/left/l_33.png',...
                   '/left/l_34.png',...
                   '/left/l_35.png',...
                   '/left/l_36.png',...
                   '/left/l_39.png',...
                   '/left/l_40.png',...
                   '/left/l_41.png',...
                   '/left/l_42.png',...
                   '/left/l_43.png',...
                   '/left/l_44.png',...
                   '/left/l_45.png',...
                   '/left/l_46.png',...
                   '/left/l_49.png',...
                   '/left/l_5.png',...
                   '/left/l_51.png',...
                   '/left/l_53.png',...
                   '/left/l_55.png',...
                   '/left/l_56.png',...
                   '/left/l_57.png',...
                   '/left/l_58.png',...
                   '/left/l_60.png',...
                   '/left/l_62.png',...
                   '/left/l_66.png',...
                   '/left/l_68.png',...
                   '/left/l_70.png',...
                   '/left/l_72.png',...
                   '/left/l_76.png',...
    };
imageFileNames2 = {'/right/r_1.png',...
                   '/right/r_10.png',...
                   '/right/r_12.png',...
                   '/right/r_19.png',...
                   '/right/r_22.png',...
                   '/right/r_24.png',...
                   '/right/r_25.png',...
                   '/right/r_26.png',...
                   '/right/r_3.png',...
                   '/right/r_32.png',...
                   '/right/r_33.png',...
                   '/right/r_34.png',...
                   '/right/r_35.png',...
                   '/right/r_36.png',...
                   '/right/r_39.png',...
                   '/right/r_40.png',...
                   '/right/r_41.png',...
                   '/right/r_42.png',...
                   '/right/r_43.png',...
                   '/right/r_44.png',...
                   '/right/r_45.png',...
                   '/right/r_46.png',...
                   '/right/r_49.png',...
                   '/right/r_5.png',...
                   '/right/r_51.png',...
                   '/right/r_53.png',...
                   '/right/r_55.png',...
                   '/right/r_56.png',...
                   '/right/r_57.png',...
                   '/right/r_58.png',...
                   '/right/r_60.png',...
                   '/right/r_62.png',...
                   '/right/r_66.png',...
                   '/right/r_68.png',...
                   '/right/r_70.png',...
                   '/right/r_72.png',...
                   '/right/r_76.png',...
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