function [Q_i , Q_f  ] = doQuanMatrix(f , L , fmin,fmax) 
% Input
% f : analog signal value
% L : number of uniform quantization levels
 
% Output
% Q_i: Quantization index for f
% Q_f: Quantized discrete signal value (reconstructed value)

% Your code that calculate and return the value  Q_i , Q_f 

step_size1 = (fmax-fmin)/L; 

  Q=(f-0)/step_size1;
  Q_i=floor(Q);
  Q_f=round((Q_i*step_size1)+(step_size1/2)+0);


end
