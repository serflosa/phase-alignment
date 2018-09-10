%Basic
x = [0 2 3 -1 0 0];
y = [0 0 0 2 3 -1];
plot(len,x,len,y)
len = 0:length(x)-1;
plot(len,x,len,y)
r = xcorr(x,y);
plot(r)

%Different amplitud
x = [0 2 3 -1 0 0]*3;
y = [0 0 0 2 3 -1];
plot(len,x,len,y)
r = xcorr(x,y);
plot(r)


%Sine signals
v = 0:.1:20; 
s1 = sin(v); 
s2 = sin(v + 2); 
plot(v,s1,v,s2)
r = xcorr(s1,s2);
plot(r)

v = 0:.001:20; 
s1 = sin(v); 
s2 = sin(v + 2); 
s2_noise = s2 + (10 * rand(1, length(s2))); 
plot(v,s1,v,s2_noise);
r = xcorr(s1,s2_noise);
plot(r)

[r1,n] = xcorr(s1,s2);
[r2,n] = xcorr(s1,s2_noise);
v = 0:length(n)-1;

plot(v-1,r1,v-1,r2)
[x, y] = max(r1)
[x, y] = max(r2)

