function [sig, t]= ga_signal(f, amplitude, bw, level)
    tc = gauspuls('cutoff', f, bw, [], level);
    t = -tc*1.5 : 1e-6 : tc*1.5;
    sig = amplitude * gauspuls(t, f, bw);
    t = linspace(0, tc*1.5, length(t));
end