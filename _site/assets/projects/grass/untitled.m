path_prefix = './';
for id=1:25 %suppose there are 10 image
file_name=dir(strcat(path_prefix)); % the path tht u hv imges
full_path = strcat(path_prefix,file_name(id).name);

if (not(contains(full_path, 'png'))) 
    continue;
end
  im= im2double(imread(full_path));
   [h,w] = size(im);    
   resized = imresize(im,800.0 / h);
 imwrite(resized, strcat('down-',file_name(id).name));

end