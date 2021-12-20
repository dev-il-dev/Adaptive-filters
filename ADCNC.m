%Inoise cancellation
%SARVESH DUBEY
%IIEST SHIBPUR
clc;

clear all;

order=2;

size=2;

fv=8192;

t=[0:1/fv:size];

N=fv*size;

f1=35/2;

f2=99/2;

voice=cos(2*pi*f1*t);

subplot(4,1,1)
plot(t, voice);

title('Voice (do not have noise)')

noise=cos(2*pi*f2*t.^2); %noise with increasing frequency

%noise-.1'rand (1, length (voice)); % white noise

primary=voice+noise; %signal with noise

subplot (4,1,2)

plot (t, primary)


title('primary  signal= voice + noise')

ref=noise+.25*rand;

subplot (4,1,3) %noisy noise

plot(t, ref)

title('Reference(noisy noise)');

w=zeros(order, 1);

mu=.006;

for i=1:N-order

 buffer = ref(i:i+order-1);

%points of reference

 desired(i)= primary(i)-buffer*w;

 %reference and coeffs
  w=w+(buffer.*mu*desired(i)/norm(buffer))'; 

end


subplot (4,1,4)

plot (t(order+1:N),desired);

title('Adaptive output, (Output is close to "Voice")')