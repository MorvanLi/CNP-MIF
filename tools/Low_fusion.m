function  LF=Low_fusion(matrixA,matrixB)
CNP_times1 = CNP_test(abs(matrixA),110);
CNP_times2 = CNP_test(abs(matrixB),110);
map=(CNP_times1>=CNP_times2);
map=majority_consist_new(map,9);
LF=map.*matrixA+~map.*matrixB;
end

