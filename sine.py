from math import*
Fs=256
f=1
A = 32767
samples=256
offset = 0
a=[0]*samples
output = open('sine.txt', 'w')
for n in range(samples):
    a[n]=A*sin(2*pi*f*n/Fs) + offset
    if(a[n] < 0):
        a[n] = 65535 + a[n]
   # output.write(format(int(a[n]), 'x'))
    output.write('{0:04x}'.format(int(round(a[n]))))
    output.write(' ')

output.close()
