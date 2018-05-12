function [ all_tr_data,all_ts_data ] = findtrain_test_data()
%TURNTYPE ���ݸ�ʽת��
%   �˴���ʾ��ϸ˵��
    addpath('Yale');
    addpath('Yale\2Train');
    load('43.mat','trainIdx','testIdx');
    load('Yale_32x32.mat','fea','gnd');
    tr_gnd = gnd(trainIdx);
    tr_fea = fea(trainIdx,:);
    all_tr_data = turn2type(tr_fea,tr_gnd);
    
    ts_gnd = gnd(testIdx);
    ts_fea = fea(testIdx,:);
    all_ts_data = turn2type(ts_fea,ts_gnd);
    
end

