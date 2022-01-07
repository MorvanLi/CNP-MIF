function  Result = analysis_Reference(image_f,image_ir,image_vis)
% [EN,MI,Qabf,FMI_pixel,FMI_dct,FMI_w,Nabf,SCD,SSIM, MS_SSIM]
[s1,s2] = size(image_ir);
imgSeq = zeros(s1, s2, 2);
imgSeq(:, :, 1) = image_ir;
imgSeq(:, :, 2) = image_vis;

image1 = im2double(image_ir);
image2 = im2double(image_vis);
image_fused = im2double(image_f);
Result=zeros(1,5);
% %EN
% Result(1,1)= entropy(image_fused);
% %MI
% Result(1,2) = analysis_MI(image_ir,image_vis,image_f);
%Qabf metricXydeas
Result(1,1) = Qp_ABF(image1,image2,image_fused);
%FMI
Result(1,2) = analysis_fmi(image1,image2,image_fused);
%Result(1,5) = analysis_fmi(image1,image2,image_fused,'dct');
%Result(1,6) = analysis_fmi(image1,image2,image_fused,'wavelet');
%Nabf
%Result(1,7) = analysis_nabf(image_fused,image1,image2);
%SCD
%Result(1,8) = analysis_SCD(image1,image2,image_fused);
% SSIM_a
% SSIM1 = ssim(image_fused,image1);
% SSIM2 = ssim(image_fused,image2);
%Result(1,9)= (SSIM1+SSIM2)/2;
%MS_SSIM
%[MS_SSIM,t1,t2]= analysis_ms_ssim(imgSeq, image_f);
Result(1,3) = analysis_ms_ssim(imgSeq, image_f);
Result(1,4) = spatial_frequency(image_f);
Result(1,5) = std2(image_f);

end







