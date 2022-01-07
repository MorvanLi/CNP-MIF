function fusion=High_fusion(X1,X2)
%WLE
e1=WLE(X1);
e2=WLE(X2);
%INSML
v1=INSML(X1);
v2=INSML(X2);
wa=v1.*e1;
wb=v2.*e2;
map=(wa>=wb);
fusion=map.*X1+~map.*X2;
end