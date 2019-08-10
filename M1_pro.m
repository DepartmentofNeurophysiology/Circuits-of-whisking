function [adapt,f,amp_mod,no_free_whisk,t_start,t_cont,t,angle_pro]=M1_pro(t_start,init_phase,adapt_flag,it,no_free_whisk,adapt_factor,ampl_mod_factor,duty_factor,f_free,pro_free);


if (adapt_flag==0)% If S1 has not sensed contact yet
    adapt=0;
    % frequency of free whisking
    amp_mod=1; %no amplitude modulation
else
    adapt=-((it-no_free_whisk)*adapt_factor);
    amp_mod=1-((it-no_free_whisk)*ampl_mod_factor); %amplitude modulation 
    f=f_free*(1/(1+((it-no_free_whisk)*duty_factor))); % frequency modulation 
end

t_cont = (t_start:0.001:t_start+(1/(2*f)))';%time update
t = ((1/(2*f)):0.001:(1/f))';
angle_pro =amp_mod*pro_free* sin(2*pi*f*t+init_phase)+adapt; %M1 modulates whisking waveform


end %function