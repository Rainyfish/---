function [ output_args ] = test_process(all_ts_data,all_tr_data,path)
%TEST_PROCESS �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    load(path,'dictionary','opts');
    thres = (0:15)*0.1;
    nclass = length(all_ts_data);
    accuary =[];
    for i =1:size(thres,2)
        opts.threshold = thres(i);
        acc = DLSI_test(all_ts_data,dictionary,nclass,opts)
        accuary=[accuary,acc];
    end
    opts.acc = accuary;
    opts
    save(path,'dictionary','opts');
end

