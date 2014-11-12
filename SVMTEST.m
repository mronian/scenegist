%-- 29-08-2014 20:54 --%
train_label=zeros(2688,1);
Z=zeros(2688,1);
Z(1:360)=1;
Z(361:688)=2;
Z(688:948)=3;
Z(948:1256)=4;
Z(1256:1630)=5;
Z(1630:2040)=6;
Z(2040:2332)=7;
Z(2332:2688)=8;
train_label=Z;
sizes_mat=[360,328,260,308,374,410,292,356];
bythree=sizes_mat./3;
twob3=sizes_mat-bythree;
trainlabel=train_label(1:120);
trainlabel=[trainlabel;train_label(361:469)];
trainlabel=[trainlabel;train_label(689:774)];
trainlabel=[trainlabel;train_label(949:1050)];
trainlabel=[trainlabel;train_label(1257:1380)];
trainlabel=[trainlabel;train_label(1631:1766)];
trainlabel=[trainlabel;train_label(2041:2137)];
trainlabel=[trainlabel;train_label(2333:2450)];
testlabel=train_label(121:360);
testlabel=[testlabel;train_label(470:688)];
testlabel=[testlabel;train_label(775:948)];
testlabel=[testlabel;train_label(1051:1256)];
testlabel=[testlabel;train_label(1381:1630)];
testlabel=[testlabel;train_label(1767:2040)];
testlabel=[testlabel;train_label(2138:2332)];
testlabel=[testlabel;train_label(2451:2688)];
trainmat=gist(1:120,:);
trainmat=[trainmat;gist(361:469,:)];
trainmat=[trainmat;gist(689:774,:)];
trainmat=[trainmat;gist(949:1050,:)];
trainmat=[trainmat;gist(1257:1380,:)];
trainmat=[trainmat;gist(1631:1766,:)];
trainmat=[trainmat;gist(2041:2137,:)];
trainmat=[trainmat;gist(2333:2450,:)];
testmat=gist(121:360,:);
testmat=[testmat;gist(470:688,:)];
testmat=[testmat;gist(775:948,:)];
testmat=[testmat;gist(1051:1256,:)];
testmat=[testmat;gist(1381:1630,:)];
testmat=[testmat;gist(1767:2040,:)];
testmat=[testmat;gist(2138:2332,:)];
testmat=[testmat;gist(2451:2688,:)];
model=svmtrain(trainlabel, trainmat, '-c 1 -g 0.07');
[predict_label, accuracy, dec_values] = svmpredict(testlabel, testmat, model);
confusionmat(testlabel,predict_label)