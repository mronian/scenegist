double avgr=0.0;
double avgg=0.0;
double avgb=0.0;
interval=64;
size=(256/interval)*(256/interval)*3;
res=zeros(1, size);
for c=1:2688
    filename=strcat('images\spatial_envelope_256x256_static_8outdoorcategories\',Dlabelme(c).annotation.filename);
    img = imread(filename);
    resvec=0;
    for i=1:interval:256
        for j=1:interval:256
            for k=i:i+interval-1
                for l=j:j+interval-1
                    avgr=avgr+double(img(k,l,1));
                    avgg=avgg+double(img(k,l,2));
                    avgb=avgb+double(img(k,l,3));
                end
            end
            avgr=avgr/double(interval*interval);
            avgg=avgg/double(interval*interval);
            avgb=avgb/double(interval*interval);
            resvec=horzcat(resvec, avgr, avgg, avgb);
            avgr=0;
            avgg=0;
            avgb=0;
        end
    end
    resvec=resvec(2:size+1);
    res=[res;resvec];
end
res=res(2:2689, :);
res=res./255;
