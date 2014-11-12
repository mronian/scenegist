for i=1:2688
   filename=strcat('images\spatial_envelope_256x256_static_8outdoorcategories\',Dlabelme(i).annotation.filename);
   img = imread(filename);
   r=img(:,:,1);
   g=img(:,:,2);
   b=img(:,:,3);
   namer=strcat('images\red\',Dlabelme(i).annotation.filename); 
   nameg=strcat('images\green\',Dlabelme(i).annotation.filename); 
   nameb=strcat('images\blue\',Dlabelme(i).annotation.filename); 
   imwrite(r, namer);
   imwrite(g, nameg);
   imwrite(b, nameb);
end