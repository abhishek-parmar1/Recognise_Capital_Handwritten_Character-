%features of the training images
x = data;
%output for the trained fetures
t = class;

%for specifing the algorithm used (backward propagation)
trainFcn = 'trainscg'; 

%no of hidden layers in the neural network
hiddenLayerSize = 10;

%for creating the hodden layers in the neural network (net)
net = patternnet(hiddenLayerSize);

%out of total inputed features, it defines the inputs for the training,
%validation and testing purpose
net.divideParam.trainRatio = 70/100; %training
net.divideParam.valRatio = 15/100; %validation
net.divideParam.testRatio = 15/100; %testing

%training the neural network (net) with inputed features(x) and output class(t)
[net,tr] = train(net,x,t);

%to view the neural network (net)
view(net)