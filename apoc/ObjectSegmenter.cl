/*
OpenCL RandomForestClassifier
classifier_class_name = ObjectSegmenter
feature_specification = original gaussian_blur=1 difference_of_gaussian=1 laplace_box_of_gaussian_blur=1
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 4
max_depth = 2
num_trees = 10
positive_class_identifier = 2
apoc_version = 0.6.8
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i0<116.0){
 if(i1<75.13976287841797){
  s0+=171.0;
 } else {
  s0+=33.0;
  s1+=14.0;
 }
} else {
 if(i3<-7.320941925048828){
  s0+=3.0;
  s1+=5.0;
 } else {
  s0+=2.0;
  s1+=179.0;
 }
}
if(i0<100.0){
 if(i0<68.0){
  s0+=160.0;
 } else {
  s0+=28.0;
  s1+=9.0;
 }
} else {
 if(i2<-0.7763938903808594){
  s0+=8.0;
  s1+=4.0;
 } else {
  s0+=3.0;
  s1+=195.0;
 }
}
if(i1<114.89260864257812){
 if(i0<92.0){
  s0+=186.0;
  s1+=1.0;
 } else {
  s0+=16.0;
  s1+=10.0;
 }
} else {
 if(i3<19.638702392578125){
  s0+=8.0;
  s1+=85.0;
 } else {
  s1+=101.0;
 }
}
if(i0<116.0){
 if(i1<99.8550796508789){
  s0+=196.0;
  s1+=2.0;
 } else {
  s0+=16.0;
  s1+=8.0;
 }
} else {
 if(i1<148.44610595703125){
  s0+=8.0;
  s1+=33.0;
 } else {
  s1+=144.0;
 }
}
if(i0<116.0){
 if(i0<76.0){
  s0+=167.0;
  s1+=3.0;
 } else {
  s0+=25.0;
  s1+=11.0;
 }
} else {
 if(i1<148.44610595703125){
  s0+=9.0;
  s1+=32.0;
 } else {
  s1+=160.0;
 }
}
if(i1<115.00515747070312){
 if(i2<1.578866958618164){
  s0+=208.0;
  s1+=6.0;
 } else {
  s1+=1.0;
 }
} else {
 if(i0<132.0){
  s0+=3.0;
  s1+=11.0;
 } else {
  s0+=2.0;
  s1+=176.0;
 }
}
if(i1<116.40650939941406){
 if(i0<116.0){
  s0+=208.0;
  s1+=11.0;
 } else {
  s1+=2.0;
 }
} else {
 if(i1<143.53799438476562){
  s0+=5.0;
  s1+=26.0;
 } else {
  s1+=155.0;
 }
}
if(i0<100.0){
 if(i1<90.4310073852539){
  s0+=183.0;
  s1+=1.0;
 } else {
  s0+=13.0;
  s1+=2.0;
 }
} else {
 if(i2<-1.5307388305664062){
  s0+=3.0;
 } else {
  s0+=5.0;
  s1+=200.0;
 }
}
if(i1<111.40548706054688){
 if(i1<99.11634063720703){
  s0+=187.0;
  s1+=6.0;
 } else {
  s0+=9.0;
  s1+=8.0;
 }
} else {
 if(i0<156.0){
  s0+=11.0;
  s1+=44.0;
 } else {
  s1+=142.0;
 }
}
if(i0<116.0){
 if(i1<75.91455841064453){
  s0+=184.0;
  s1+=1.0;
 } else {
  s0+=24.0;
  s1+=10.0;
 }
} else {
 if(i1<148.00332641601562){
  s0+=1.0;
  s1+=32.0;
 } else {
  s1+=155.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
