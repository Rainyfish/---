function [ output_args ] = draw_figure(data)
%DRAW_FIGURE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    nclass = length(data);
    figure;
    for i = 1:nclass
        hold on;
        y = data{i};
        len = size(y,2);
        plot(y,'r-*');
    end
    
end

