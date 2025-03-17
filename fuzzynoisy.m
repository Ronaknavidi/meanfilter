% خواندن تصویر
img = imread('تصویر با نویز گاوسین میانگین 0.05.png');
img = im2double(img);  % تبدیل به تصویر با مقادیر اعشاری بین 0 و 1

% ایجاد فیلتر 3x3 برای میانگین‌گیری فازی
fuzzy_mean_filter = ones(3, 3) / 9;

% اعمال فیلتر روی تصویر با استفاده از imfilter
output_img = imfilter(img, fuzzy_mean_filter, 'symmetric');

% نمایش تصویر اصلی و تصویر فیلتر شده
figure;
subplot(1, 2, 1);
imshow(img);
title('تصویر اصلی');

subplot(1, 2, 2);
imshow(output_img);
title('تصویر فیلتر شده با میانگین‌گیری فازی');

