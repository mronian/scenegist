%-- 29-08-2014 20:54 --%
trainsvm_label=zeros(800,1);
Zsvm=zeros(800,1);
Zsvm(1:100)=1;
Zsvm(101:200)=2;
Zsvm(201:300)=3;
Zsvm(301:400)=4;
Zsvm(401:500)=5;
Zsvm(501:600)=6;
Zsvm(601:700)=7;
Zsvm(701:800)=8;
trainsvm_label=Zsvm;
trainsvmmat=gist(1:100,:);
trainsvmmat=[trainsvmmat;gist(361:460,:)];
trainsvmmat=[trainsvmmat;gist(689:788,:)];
trainsvmmat=[trainsvmmat;gist(949:1048,:)];
trainsvmmat=[trainsvmmat;gist(1257:1356,:)];
trainsvmmat=[trainsvmmat;gist(1631:1730,:)];
trainsvmmat=[trainsvmmat;gist(2041:2140,:)];
trainsvmmat=[trainsvmmat;gist(2333:2432,:)];
model=svmtrain(trainsvm_label, trainsvmmat, '-c 1 -g 0.07');
[predict_label, accuracy, dec_values] = svmpredict(trainsvm_label, trainsvmmat, model);
confusionmat(trainsvm_label,predict_label)