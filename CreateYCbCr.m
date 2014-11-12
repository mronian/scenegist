for i=1:2688
   filename=strcat('images\spatial_envelope_256x256_static_8outdoorcategories\',Dlabelme(i).annotation.filename);
   img = imread(filename);
   img=rgb2ycbcr(img);
   y=img(:,:,1);
   cb=img(:,:,2);
   cr=img(:,:,3);
   namey=strcat('images\Y\',Dlabelme(i).annotation.filename); 
   namecb=strcat('images\CB\',Dlabelme(i).annotation.filename); 
   namecr=strcat('images\CR\',Dlabelme(i).annotation.filename); 
   imwrite(y, namey);
   imwrite(cb, namecb);
   imwrite(cr, namecr);
end