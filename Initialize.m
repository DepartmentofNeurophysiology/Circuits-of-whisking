function [waveform,adapt_flag,no_free_whisk,nose_adapt,nose_non_adapt]=Initialize;

load('/media/alireza/B6A252F4A252B897/phd/Seretonin paper/serotonin whisker controlled model/nose5.mat')
%loads representative body navigation pattern for adaptive and non-adaptive
%whisking

waveform(1,2)=0;
adapt_flag=0;
no_free_whisk=0;