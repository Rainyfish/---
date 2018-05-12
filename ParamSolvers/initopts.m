function [ opts,lambda] = initopts( input_args )
%INITOPTS �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    opts.tol = 1e-6;
    opts.max_iter = 1000;
    opts.rho = 1.1;
    opts.mu = 1e-4;
    opts.max_mu = 1e10;
    opts.DEBUG = 0;
    lambda = 0.1;
    opts.loss = 'l2';

end

