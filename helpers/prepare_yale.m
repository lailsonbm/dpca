TOTAL_SIZE = 48*42;

photo_paths = {
  'yaleB01_P00A+000E+00.pgm',
  'yaleB01_P00A+000E+20.pgm',
  'yaleB01_P00A+000E+45.pgm',
  'yaleB01_P00A+000E+90.pgm',
  'yaleB01_P00A+000E-20.pgm',
  'yaleB01_P00A+000E-35.pgm',
  'yaleB01_P00A+005E+10.pgm',
  'yaleB01_P00A+005E-10.pgm',
  'yaleB01_P00A+010E+00.pgm',
  'yaleB01_P00A+010E-20.pgm',
  'yaleB01_P00A+015E+20.pgm',
  'yaleB01_P00A+020E+10.pgm',
  'yaleB01_P00A+020E-10.pgm',
  'yaleB01_P00A+020E-40.pgm',
  'yaleB01_P00A+025E+00.pgm',
  'yaleB01_P00A+035E+15.pgm',
  'yaleB01_P00A+035E+40.pgm',
  'yaleB01_P00A+035E+65.pgm',
  'yaleB01_P00A+035E-20.pgm',
  'yaleB01_P00A+050E+00.pgm',
  'yaleB01_P00A+050E-40.pgm',
  'yaleB01_P00A+060E+20.pgm',
  'yaleB01_P00A+060E-20.pgm',
  'yaleB01_P00A+070E+00.pgm',
  'yaleB01_P00A+070E+45.pgm',
  'yaleB01_P00A+070E-35.pgm',
  'yaleB01_P00A+085E+20.pgm',
  'yaleB01_P00A+085E-20.pgm',
  'yaleB01_P00A+095E+00.pgm',
  'yaleB01_P00A+110E+15.pgm',
  'yaleB01_P00A+110E+40.pgm',
  'yaleB01_P00A+110E+65.pgm',
  'yaleB01_P00A+110E-20.pgm',
  'yaleB01_P00A+120E+00.pgm',
  'yaleB01_P00A+130E+20.pgm',
  'yaleB01_P00A-005E+10.pgm',
  'yaleB01_P00A-005E-10.pgm',
  'yaleB01_P00A-010E+00.pgm',
  'yaleB01_P00A-010E-20.pgm',
  'yaleB01_P00A-015E+20.pgm',
  'yaleB01_P00A-020E+10.pgm',
  'yaleB01_P00A-020E-10.pgm',
  'yaleB01_P00A-020E-40.pgm',
  'yaleB01_P00A-025E+00.pgm',
  'yaleB01_P00A-035E+15.pgm',
  'yaleB01_P00A-035E+40.pgm',
  'yaleB01_P00A-035E+65.pgm',
  'yaleB01_P00A-035E-20.pgm',
  'yaleB01_P00A-050E+00.pgm',
  'yaleB01_P00A-050E-40.pgm',
  'yaleB01_P00A-060E+20.pgm',
  'yaleB01_P00A-060E-20.pgm',
  'yaleB01_P00A-070E+00.pgm',
  'yaleB01_P00A-070E+45.pgm',
  'yaleB01_P00A-070E-35.pgm',
  'yaleB01_P00A-085E+20.pgm',
  'yaleB01_P00A-085E-20.pgm',
  'yaleB01_P00A-095E+00.pgm',
  'yaleB01_P00A-110E+15.pgm',
  'yaleB01_P00A-110E+40.pgm',
  'yaleB01_P00A-110E+65.pgm',
  'yaleB01_P00A-110E-20.pgm',
  'yaleB01_P00A-120E+00.pgm',
  'yaleB01_P00A-130E+20.pgm',
  'yaleB02_P00A+000E+00.pgm',
  'yaleB02_P00A+000E+20.pgm',
  'yaleB02_P00A+000E+45.pgm',
  'yaleB02_P00A+000E+90.pgm',
  'yaleB02_P00A+000E-20.pgm',
  'yaleB02_P00A+000E-35.pgm',
  'yaleB02_P00A+005E+10.pgm',
  'yaleB02_P00A+005E-10.pgm',
  'yaleB02_P00A+010E+00.pgm',
  'yaleB02_P00A+010E-20.pgm',
  'yaleB02_P00A+015E+20.pgm',
  'yaleB02_P00A+020E+10.pgm',
  'yaleB02_P00A+020E-10.pgm',
  'yaleB02_P00A+020E-40.pgm',
  'yaleB02_P00A+025E+00.pgm',
  'yaleB02_P00A+035E+15.pgm',
  'yaleB02_P00A+035E+40.pgm',
  'yaleB02_P00A+035E+65.pgm',
  'yaleB02_P00A+035E-20.pgm',
  'yaleB02_P00A+050E+00.pgm',
  'yaleB02_P00A+050E-40.pgm',
  'yaleB02_P00A+060E+20.pgm',
  'yaleB02_P00A+060E-20.pgm',
  'yaleB02_P00A+070E+00.pgm',
  'yaleB02_P00A+070E+45.pgm',
  'yaleB02_P00A+070E-35.pgm',
  'yaleB02_P00A+085E+20.pgm',
  'yaleB02_P00A+085E-20.pgm',
  'yaleB02_P00A+095E+00.pgm',
  'yaleB02_P00A+110E+15.pgm',
  'yaleB02_P00A+110E+40.pgm',
  'yaleB02_P00A+110E+65.pgm',
  'yaleB02_P00A+110E-20.pgm',
  'yaleB02_P00A+120E+00.pgm',
  'yaleB02_P00A+130E+20.pgm',
  'yaleB02_P00A-005E+10.pgm',
  'yaleB02_P00A-005E-10.pgm',
  'yaleB02_P00A-010E+00.pgm',
  'yaleB02_P00A-010E-20.pgm',
  'yaleB02_P00A-015E+20.pgm',
  'yaleB02_P00A-020E+10.pgm',
  'yaleB02_P00A-020E-10.pgm',
  'yaleB02_P00A-020E-40.pgm',
  'yaleB02_P00A-025E+00.pgm',
  'yaleB02_P00A-035E+15.pgm',
  'yaleB02_P00A-035E+40.pgm',
  'yaleB02_P00A-035E+65.pgm',
  'yaleB02_P00A-035E-20.pgm',
  'yaleB02_P00A-050E+00.pgm',
  'yaleB02_P00A-050E-40.pgm',
  'yaleB02_P00A-060E+20.pgm',
  'yaleB02_P00A-060E-20.pgm',
  'yaleB02_P00A-070E+00.pgm',
  'yaleB02_P00A-070E+45.pgm',
  'yaleB02_P00A-070E-35.pgm',
  'yaleB02_P00A-085E+20.pgm',
  'yaleB02_P00A-085E-20.pgm',
  'yaleB02_P00A-095E+00.pgm',
  'yaleB02_P00A-110E+15.pgm',
  'yaleB02_P00A-110E+40.pgm',
  'yaleB02_P00A-110E+65.pgm',
  'yaleB02_P00A-110E-20.pgm',
  'yaleB02_P00A-120E+00.pgm',
  'yaleB02_P00A-130E+20.pgm',
  'yaleB03_P00A+000E+00.pgm',
  'yaleB03_P00A+000E+20.pgm',
  'yaleB03_P00A+000E+45.pgm',
  'yaleB03_P00A+000E+90.pgm',
  'yaleB03_P00A+000E-20.pgm',
  'yaleB03_P00A+000E-35.pgm',
  'yaleB03_P00A+005E+10.pgm',
  'yaleB03_P00A+005E-10.pgm',
  'yaleB03_P00A+010E+00.pgm',
  'yaleB03_P00A+010E-20.pgm',
  'yaleB03_P00A+015E+20.pgm',
  'yaleB03_P00A+020E+10.pgm',
  'yaleB03_P00A+020E-10.pgm',
  'yaleB03_P00A+020E-40.pgm',
  'yaleB03_P00A+025E+00.pgm',
  'yaleB03_P00A+035E+15.pgm',
  'yaleB03_P00A+035E+40.pgm',
  'yaleB03_P00A+035E+65.pgm',
  'yaleB03_P00A+035E-20.pgm',
  'yaleB03_P00A+050E+00.pgm',
  'yaleB03_P00A+050E-40.pgm',
  'yaleB03_P00A+060E+20.pgm',
  'yaleB03_P00A+060E-20.pgm',
  'yaleB03_P00A+070E+00.pgm',
  'yaleB03_P00A+070E+45.pgm',
  'yaleB03_P00A+070E-35.pgm',
  'yaleB03_P00A+085E+20.pgm',
  'yaleB03_P00A+085E-20.pgm',
  'yaleB03_P00A+095E+00.pgm',
  'yaleB03_P00A+110E+15.pgm',
  'yaleB03_P00A+110E+40.pgm',
  'yaleB03_P00A+110E+65.pgm',
  'yaleB03_P00A+110E-20.pgm',
  'yaleB03_P00A+120E+00.pgm',
  'yaleB03_P00A+130E+20.pgm',
  'yaleB03_P00A-005E+10.pgm',
  'yaleB03_P00A-005E-10.pgm',
  'yaleB03_P00A-010E+00.pgm',
  'yaleB03_P00A-010E-20.pgm',
  'yaleB03_P00A-015E+20.pgm',
  'yaleB03_P00A-020E+10.pgm',
  'yaleB03_P00A-020E-10.pgm',
  'yaleB03_P00A-020E-40.pgm',
  'yaleB03_P00A-025E+00.pgm',
  'yaleB03_P00A-035E+15.pgm',
  'yaleB03_P00A-035E+40.pgm',
  'yaleB03_P00A-035E+65.pgm',
  'yaleB03_P00A-035E-20.pgm',
  'yaleB03_P00A-050E+00.pgm',
  'yaleB03_P00A-050E-40.pgm',
  'yaleB03_P00A-060E+20.pgm',
  'yaleB03_P00A-060E-20.pgm',
  'yaleB03_P00A-070E+00.pgm',
  'yaleB03_P00A-070E+45.pgm',
  'yaleB03_P00A-070E-35.pgm',
  'yaleB03_P00A-085E+20.pgm',
  'yaleB03_P00A-085E-20.pgm',
  'yaleB03_P00A-095E+00.pgm',
  'yaleB03_P00A-110E+15.pgm',
  'yaleB03_P00A-110E+40.pgm',
  'yaleB03_P00A-110E+65.pgm',
  'yaleB03_P00A-110E-20.pgm',
  'yaleB03_P00A-120E+00.pgm',
  'yaleB03_P00A-130E+20.pgm',
  'yaleB04_P00A+000E+00.pgm',
  'yaleB04_P00A+000E+20.pgm',
  'yaleB04_P00A+000E+45.pgm',
  'yaleB04_P00A+000E+90.pgm',
  'yaleB04_P00A+000E-20.pgm',
  'yaleB04_P00A+000E-35.pgm',
  'yaleB04_P00A+005E+10.pgm',
  'yaleB04_P00A+005E-10.pgm',
  'yaleB04_P00A+010E+00.pgm',
  'yaleB04_P00A+010E-20.pgm',
  'yaleB04_P00A+015E+20.pgm',
  'yaleB04_P00A+020E+10.pgm',
  'yaleB04_P00A+020E-10.pgm',
  'yaleB04_P00A+020E-40.pgm',
  'yaleB04_P00A+025E+00.pgm',
  'yaleB04_P00A+035E+15.pgm',
  'yaleB04_P00A+035E+40.pgm',
  'yaleB04_P00A+035E+65.pgm',
  'yaleB04_P00A+035E-20.pgm',
  'yaleB04_P00A+050E+00.pgm',
  'yaleB04_P00A+050E-40.pgm',
  'yaleB04_P00A+060E+20.pgm',
  'yaleB04_P00A+060E-20.pgm',
  'yaleB04_P00A+070E+00.pgm',
  'yaleB04_P00A+070E+45.pgm',
  'yaleB04_P00A+070E-35.pgm',
  'yaleB04_P00A+085E+20.pgm',
  'yaleB04_P00A+085E-20.pgm',
  'yaleB04_P00A+095E+00.pgm',
  'yaleB04_P00A+110E+15.pgm',
  'yaleB04_P00A+110E+40.pgm',
  'yaleB04_P00A+110E+65.pgm',
  'yaleB04_P00A+110E-20.pgm',
  'yaleB04_P00A+120E+00.pgm',
  'yaleB04_P00A+130E+20.pgm',
  'yaleB04_P00A-005E+10.pgm',
  'yaleB04_P00A-005E-10.pgm',
  'yaleB04_P00A-010E+00.pgm',
  'yaleB04_P00A-010E-20.pgm',
  'yaleB04_P00A-015E+20.pgm',
  'yaleB04_P00A-020E+10.pgm',
  'yaleB04_P00A-020E-10.pgm',
  'yaleB04_P00A-020E-40.pgm',
  'yaleB04_P00A-025E+00.pgm',
  'yaleB04_P00A-035E+15.pgm',
  'yaleB04_P00A-035E+40.pgm',
  'yaleB04_P00A-035E+65.pgm',
  'yaleB04_P00A-035E-20.pgm',
  'yaleB04_P00A-050E+00.pgm',
  'yaleB04_P00A-050E-40.pgm',
  'yaleB04_P00A-060E+20.pgm',
  'yaleB04_P00A-060E-20.pgm',
  'yaleB04_P00A-070E+00.pgm',
  'yaleB04_P00A-070E+45.pgm',
  'yaleB04_P00A-070E-35.pgm',
  'yaleB04_P00A-085E+20.pgm',
  'yaleB04_P00A-085E-20.pgm',
  'yaleB04_P00A-095E+00.pgm',
  'yaleB04_P00A-110E+15.pgm',
  'yaleB04_P00A-110E+40.pgm',
  'yaleB04_P00A-110E+65.pgm',
  'yaleB04_P00A-110E-20.pgm',
  'yaleB04_P00A-120E+00.pgm',
  'yaleB04_P00A-130E+20.pgm',
  'yaleB05_P00A+000E+00.pgm',
  'yaleB05_P00A+000E+20.pgm',
  'yaleB05_P00A+000E+45.pgm',
  'yaleB05_P00A+000E+90.pgm',
  'yaleB05_P00A+000E-20.pgm',
  'yaleB05_P00A+000E-35.pgm',
  'yaleB05_P00A+005E+10.pgm',
  'yaleB05_P00A+005E-10.pgm',
  'yaleB05_P00A+010E+00.pgm',
  'yaleB05_P00A+010E-20.pgm',
  'yaleB05_P00A+015E+20.pgm',
  'yaleB05_P00A+020E+10.pgm',
  'yaleB05_P00A+020E-10.pgm',
  'yaleB05_P00A+020E-40.pgm',
  'yaleB05_P00A+025E+00.pgm',
  'yaleB05_P00A+035E+15.pgm',
  'yaleB05_P00A+035E+40.pgm',
  'yaleB05_P00A+035E+65.pgm',
  'yaleB05_P00A+035E-20.pgm',
  'yaleB05_P00A+050E+00.pgm',
  'yaleB05_P00A+050E-40.pgm',
  'yaleB05_P00A+060E+20.pgm',
  'yaleB05_P00A+060E-20.pgm',
  'yaleB05_P00A+070E+00.pgm',
  'yaleB05_P00A+070E+45.pgm',
  'yaleB05_P00A+070E-35.pgm',
  'yaleB05_P00A+085E+20.pgm',
  'yaleB05_P00A+085E-20.pgm',
  'yaleB05_P00A+095E+00.pgm',
  'yaleB05_P00A+110E+15.pgm',
  'yaleB05_P00A+110E+40.pgm',
  'yaleB05_P00A+110E+65.pgm',
  'yaleB05_P00A+110E-20.pgm',
  'yaleB05_P00A+120E+00.pgm',
  'yaleB05_P00A+130E+20.pgm',
  'yaleB05_P00A-005E+10.pgm',
  'yaleB05_P00A-005E-10.pgm',
  'yaleB05_P00A-010E+00.pgm',
  'yaleB05_P00A-010E-20.pgm',
  'yaleB05_P00A-015E+20.pgm',
  'yaleB05_P00A-020E+10.pgm',
  'yaleB05_P00A-020E-10.pgm',
  'yaleB05_P00A-020E-40.pgm',
  'yaleB05_P00A-025E+00.pgm',
  'yaleB05_P00A-035E+15.pgm',
  'yaleB05_P00A-035E+40.pgm',
  'yaleB05_P00A-035E+65.pgm',
  'yaleB05_P00A-035E-20.pgm',
  'yaleB05_P00A-050E+00.pgm',
  'yaleB05_P00A-050E-40.pgm',
  'yaleB05_P00A-060E+20.pgm',
  'yaleB05_P00A-060E-20.pgm',
  'yaleB05_P00A-070E+00.pgm',
  'yaleB05_P00A-070E+45.pgm',
  'yaleB05_P00A-070E-35.pgm',
  'yaleB05_P00A-085E+20.pgm',
  'yaleB05_P00A-085E-20.pgm',
  'yaleB05_P00A-095E+00.pgm',
  'yaleB05_P00A-110E+15.pgm',
  'yaleB05_P00A-110E+40.pgm',
  'yaleB05_P00A-110E+65.pgm',
  'yaleB05_P00A-110E-20.pgm',
  'yaleB05_P00A-120E+00.pgm',
  'yaleB05_P00A-130E+20.pgm'
};

data = zeros(TOTAL_SIZE, length(photo_paths));
for i = 1:length(photo_paths)
  disp(photo_paths{i});
  photo_path = strcat('bases/yale/', photo_paths{i});
  photo = imread(photo_path);
  photo_resized = imresize(photo, 0.25);
  data(:,i) = reshape(photo_resized, [TOTAL_SIZE 1]);
  imwrite(photo,sprintf('bases/yale2/%d.png', i));
end

labels = [ones(1,64)*1 ones(1,64)*2 ones(1,64)*3 ones(1,64)*4 ones(1,64)*5];

save('bases/yale.mat', 'data', 'labels');