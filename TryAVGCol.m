double avgr=0.0;
double avgg=0.0;
double avgb=0.0;
res=img;
for i=1:64:256
    for j=1:64:256
        for k=i:i+63
            for l=j:j+63
                avgr=avgr+double(img(k,l,1));
                avgg=avgg+double(img(k,l,2));
                avgb=avgb+double(img(k,l,3));
            end
        end
        avgr=avgr/double(64*64);
        avgg=avgg/double(64*64);
        avgb=avgb/double(64*64);
        for k=i:i+63
            for l=j:j+63
                res(k,l,1)=avgr;
                res(k,l,2)=avgg;
                res(k,l,3)=avgb;
            end
        end
        avgr=0;
        avgg=0;
        avgb=0;
    end
end


        