close all;
x = 0.6;
i = imread('test.jpg');
I1 = i(:,:,1);
I2 = i(:,:,2);
level1 = 3.137255e-01;
level2 = graythresh(I2);
bw2 = ~im2bw(I2,level2*0.35);
bw1 = im2bw(I1,level1);
imshow(bw1);
figure;
imshow(bw2);
bw = imadd(bw1,bw2);
figure;
imshow(bw);
imwrite(bw, 'test_bp.jpg');