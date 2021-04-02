% ������ ����
N = 4096;
% ����� ���
Fs = 100e6;
% ����� ����� F��
Fif = 10e6;
% ����� ᨣ����
F=10e6 ;

% ����� ����﨨
PM_F=1e6 ;

% time
t=[0:N-1]/fs ;
% ����
s=cos(2*pi*Fif*t) ;
% ������� ᨣ���
h=ones(1,Fs/(4*PM_F)) ;
h=conv(h,h);

m=square(2*pi*PM_F*t) ;
m=filter(h,1,m);

z=m.*sin(2*pi*F*t+1) ;

% �����㫨�㥬
zi=z.*cos(2*pi*Fif*t) ;
zq=z.*sin(2*pi*Fif*t) ;

zi=filter(h,1,zi);
zq=filter(h,1,zq);

