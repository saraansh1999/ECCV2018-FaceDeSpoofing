��.
�!�!
+
Abs
x"T
y"T"
Ttype:	
2	
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
]
Complex	
real"T	
imag"T
out"Tout"
Ttype0:
2"
Touttype0:
2
P

ComplexAbs
x"T	
y"Tout"
Ttype0:
2"
Touttype0:
2
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
@
Elu
features"T
activations"T"
Ttype:
2		
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	

FFT2D	
input

output
:
Greater
x"T
y"T
z
"
Ttype:
2		
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
�
ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:�  �
-
Log1p
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
�
MaxPool

input"T
output"T"
Ttype0:
2"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
;
RGBToHSV
images"T
output"T"
Ttype0:
2
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
ResizeBilinear
images"T
size
resized_images"
Ttype:

2	"
align_cornersbool( 
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
-
Rsqrt
x"T
y"T"
Ttype:	
2
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.1.02v1.1.0-rc0-61-g1ec6ed5��+
d
inputPlaceholder*
dtype0*
shape: *4
_output_shapes"
 :������������������
P
ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
~

ExpandDims
ExpandDimsinputExpandDims/dim*

Tdim0*
T0*8
_output_shapes&
$:"������������������
U
sizeConst*
dtype0*
valueB"      *
_output_shapes
:
z
ResizeBilinearResizeBilinear
ExpandDimssize*
align_corners( *
T0*(
_output_shapes
:��
h
SqueezeSqueezeResizeBilinear*
squeeze_dims
 *
T0*$
_output_shapes
:��
N
	truediv/yConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
U
truedivRealDivSqueeze	truediv/y*
T0*$
_output_shapes
:��
Q
split/split_dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
splitSplitsplit/split_dimtruediv*
	num_split*
T0*D
_output_shapes2
0:��:��:��
M
concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
|
concatConcatV2split:2split:1splitconcat/axis*
N*

Tidx0*
T0*$
_output_shapes
:��
K
RGBToHSVRGBToHSVconcat*
T0*$
_output_shapes
:��
O
concat_1/axisConst*
dtype0*
value	B :*
_output_shapes
: 
y
concat_1ConcatV2RGBToHSVconcatconcat_1/axis*
N*

Tidx0*
T0*$
_output_shapes
:��
�
stackPackconcat_1concat_1concat_1concat_1concat_1concat_1*
N*

axis *
T0*(
_output_shapes
:��
R
zerosConst*
dtype0*
valueB*    *
_output_shapes
:
T
zeros_1Const*
dtype0*
valueB*    *
_output_shapes
:
�
8SecondAMIN/conv0/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv0/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv0/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv0/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv0/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv0/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv0/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv0/weights
�
6SecondAMIN/conv0/weights/Initializer/random_normal/mulMulGSecondAMIN/conv0/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv0/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv0/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv0/weights/Initializer/random_normalAdd6SecondAMIN/conv0/weights/Initializer/random_normal/mul7SecondAMIN/conv0/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv0/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv0/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv0/weights*
shared_name 
�
SecondAMIN/conv0/weights/AssignAssignSecondAMIN/conv0/weights2SecondAMIN/conv0/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv0/weights/readIdentitySecondAMIN/conv0/weights*+
_class!
loc:@SecondAMIN/conv0/weights*
T0*&
_output_shapes
:
{
"SecondAMIN/conv0/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
{
*SecondAMIN/conv0/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
SecondAMIN/conv0/convolutionConv2DstackSecondAMIN/conv0/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv0/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv0/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv0/BatchNorm/beta/AssignAssignSecondAMIN/conv0/BatchNorm/beta1SecondAMIN/conv0/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv0/BatchNorm/beta/readIdentitySecondAMIN/conv0/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv0/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv0/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv0/BatchNorm/gamma/AssignAssign SecondAMIN/conv0/BatchNorm/gamma2SecondAMIN/conv0/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv0/BatchNorm/gamma/readIdentity SecondAMIN/conv0/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv0/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv0/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv0/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv0/BatchNorm/moving_mean8SecondAMIN/conv0/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv0/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv0/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv0/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv0/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv0/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv0/BatchNorm/moving_variance<SecondAMIN/conv0/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv0/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv0/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
T0*
_output_shapes
:
o
*SecondAMIN/conv0/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
(SecondAMIN/conv0/BatchNorm/batchnorm/addAdd/SecondAMIN/conv0/BatchNorm/moving_variance/read*SecondAMIN/conv0/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
*SecondAMIN/conv0/BatchNorm/batchnorm/RsqrtRsqrt(SecondAMIN/conv0/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
(SecondAMIN/conv0/BatchNorm/batchnorm/mulMul*SecondAMIN/conv0/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv0/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
*SecondAMIN/conv0/BatchNorm/batchnorm/mul_1MulSecondAMIN/conv0/convolution(SecondAMIN/conv0/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
*SecondAMIN/conv0/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv0/BatchNorm/moving_mean/read(SecondAMIN/conv0/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
(SecondAMIN/conv0/BatchNorm/batchnorm/subSub$SecondAMIN/conv0/BatchNorm/beta/read*SecondAMIN/conv0/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
*SecondAMIN/conv0/BatchNorm/batchnorm/add_1Add*SecondAMIN/conv0/BatchNorm/batchnorm/mul_1(SecondAMIN/conv0/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
z
SecondAMIN/conv0/EluElu*SecondAMIN/conv0/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
pool1/MaxPoolMaxPoolSecondAMIN/conv0/Elu*(
_output_shapes
:��*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8SecondAMIN/conv1/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv1/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv1/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv1/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv1/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv1/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv1/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv1/weights
�
6SecondAMIN/conv1/weights/Initializer/random_normal/mulMulGSecondAMIN/conv1/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv1/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv1/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv1/weights/Initializer/random_normalAdd6SecondAMIN/conv1/weights/Initializer/random_normal/mul7SecondAMIN/conv1/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv1/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv1/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv1/weights*
shared_name 
�
SecondAMIN/conv1/weights/AssignAssignSecondAMIN/conv1/weights2SecondAMIN/conv1/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv1/weights/readIdentitySecondAMIN/conv1/weights*+
_class!
loc:@SecondAMIN/conv1/weights*
T0*&
_output_shapes
:
�
.convBlock-1/SecondAMIN/conv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-1/SecondAMIN/conv1/convolutionConv2Dpool1/MaxPoolSecondAMIN/conv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv1/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv1/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv1/BatchNorm/beta/AssignAssignSecondAMIN/conv1/BatchNorm/beta1SecondAMIN/conv1/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv1/BatchNorm/beta/readIdentitySecondAMIN/conv1/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv1/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv1/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv1/BatchNorm/gamma/AssignAssign SecondAMIN/conv1/BatchNorm/gamma2SecondAMIN/conv1/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv1/BatchNorm/gamma/readIdentity SecondAMIN/conv1/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv1/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv1/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv1/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv1/BatchNorm/moving_mean8SecondAMIN/conv1/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv1/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv1/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv1/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv1/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv1/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv1/BatchNorm/moving_variance<SecondAMIN/conv1/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv1/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv1/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/addAdd/SecondAMIN/conv1/BatchNorm/moving_variance/read6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mulMul6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul_1Mul(convBlock-1/SecondAMIN/conv1/convolution4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv1/BatchNorm/moving_mean/read4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/subSub$SecondAMIN/conv1/BatchNorm/beta/read6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/add_1Add6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/mul_14convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
 convBlock-1/SecondAMIN/conv1/EluElu6convBlock-1/SecondAMIN/conv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
9SecondAMIN/bconv1/weights/Initializer/random_normal/shapeConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv1/weights*%
valueB"            *
_output_shapes
:
�
8SecondAMIN/bconv1/weights/Initializer/random_normal/meanConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv1/weights*
valueB
 *    *
_output_shapes
: 
�
:SecondAMIN/bconv1/weights/Initializer/random_normal/stddevConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv1/weights*
valueB
 *
ף<*
_output_shapes
: 
�
HSecondAMIN/bconv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal9SecondAMIN/bconv1/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@SecondAMIN/bconv1/weights
�
7SecondAMIN/bconv1/weights/Initializer/random_normal/mulMulHSecondAMIN/bconv1/weights/Initializer/random_normal/RandomStandardNormal:SecondAMIN/bconv1/weights/Initializer/random_normal/stddev*,
_class"
 loc:@SecondAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
3SecondAMIN/bconv1/weights/Initializer/random_normalAdd7SecondAMIN/bconv1/weights/Initializer/random_normal/mul8SecondAMIN/bconv1/weights/Initializer/random_normal/mean*,
_class"
 loc:@SecondAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
SecondAMIN/bconv1/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@SecondAMIN/bconv1/weights*
shared_name 
�
 SecondAMIN/bconv1/weights/AssignAssignSecondAMIN/bconv1/weights3SecondAMIN/bconv1/weights/Initializer/random_normal*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/bconv1/weights/readIdentitySecondAMIN/bconv1/weights*,
_class"
 loc:@SecondAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
/convBlock-1/SecondAMIN/bconv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
7convBlock-1/SecondAMIN/bconv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
)convBlock-1/SecondAMIN/bconv1/convolutionConv2D convBlock-1/SecondAMIN/conv1/EluSecondAMIN/bconv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
2SecondAMIN/bconv1/BatchNorm/beta/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
 SecondAMIN/bconv1/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
shared_name 
�
'SecondAMIN/bconv1/BatchNorm/beta/AssignAssign SecondAMIN/bconv1/BatchNorm/beta2SecondAMIN/bconv1/BatchNorm/beta/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/bconv1/BatchNorm/beta/readIdentity SecondAMIN/bconv1/BatchNorm/beta*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
T0*
_output_shapes
:
�
3SecondAMIN/bconv1/BatchNorm/gamma/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
!SecondAMIN/bconv1/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
shared_name 
�
(SecondAMIN/bconv1/BatchNorm/gamma/AssignAssign!SecondAMIN/bconv1/BatchNorm/gamma3SecondAMIN/bconv1/BatchNorm/gamma/Initializer/Const*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
&SecondAMIN/bconv1/BatchNorm/gamma/readIdentity!SecondAMIN/bconv1/BatchNorm/gamma*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
T0*
_output_shapes
:
�
9SecondAMIN/bconv1/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
'SecondAMIN/bconv1/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
shared_name 
�
.SecondAMIN/bconv1/BatchNorm/moving_mean/AssignAssign'SecondAMIN/bconv1/BatchNorm/moving_mean9SecondAMIN/bconv1/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
,SecondAMIN/bconv1/BatchNorm/moving_mean/readIdentity'SecondAMIN/bconv1/BatchNorm/moving_mean*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
=SecondAMIN/bconv1/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
+SecondAMIN/bconv1/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
shared_name 
�
2SecondAMIN/bconv1/BatchNorm/moving_variance/AssignAssign+SecondAMIN/bconv1/BatchNorm/moving_variance=SecondAMIN/bconv1/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
0SecondAMIN/bconv1/BatchNorm/moving_variance/readIdentity+SecondAMIN/bconv1/BatchNorm/moving_variance*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
T0*
_output_shapes
:
|
7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv1/BatchNorm/moving_variance/read7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/RsqrtRsqrt5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mulMul7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_1Mul)convBlock-1/SecondAMIN/bconv1/convolution5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv1/BatchNorm/moving_mean/read5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
5convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/subSub%SecondAMIN/bconv1/BatchNorm/beta/read7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/add_1Add7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_15convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
!convBlock-1/SecondAMIN/bconv1/EluElu7convBlock-1/SecondAMIN/bconv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8SecondAMIN/conv2/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv2/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv2/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv2/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv2/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv2/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv2/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv2/weights
�
6SecondAMIN/conv2/weights/Initializer/random_normal/mulMulGSecondAMIN/conv2/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv2/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv2/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv2/weights/Initializer/random_normalAdd6SecondAMIN/conv2/weights/Initializer/random_normal/mul7SecondAMIN/conv2/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv2/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv2/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv2/weights*
shared_name 
�
SecondAMIN/conv2/weights/AssignAssignSecondAMIN/conv2/weights2SecondAMIN/conv2/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv2/weights/readIdentitySecondAMIN/conv2/weights*+
_class!
loc:@SecondAMIN/conv2/weights*
T0*&
_output_shapes
:
�
.convBlock-1/SecondAMIN/conv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-1/SecondAMIN/conv2/convolutionConv2D!convBlock-1/SecondAMIN/bconv1/EluSecondAMIN/conv2/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv2/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv2/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv2/BatchNorm/beta/AssignAssignSecondAMIN/conv2/BatchNorm/beta1SecondAMIN/conv2/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv2/BatchNorm/beta/readIdentitySecondAMIN/conv2/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv2/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv2/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv2/BatchNorm/gamma/AssignAssign SecondAMIN/conv2/BatchNorm/gamma2SecondAMIN/conv2/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv2/BatchNorm/gamma/readIdentity SecondAMIN/conv2/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv2/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv2/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv2/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv2/BatchNorm/moving_mean8SecondAMIN/conv2/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv2/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv2/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv2/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv2/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv2/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv2/BatchNorm/moving_variance<SecondAMIN/conv2/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv2/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv2/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/addAdd/SecondAMIN/conv2/BatchNorm/moving_variance/read6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mulMul6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul_1Mul(convBlock-1/SecondAMIN/conv2/convolution4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv2/BatchNorm/moving_mean/read4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/subSub$SecondAMIN/conv2/BatchNorm/beta/read6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/add_1Add6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/mul_14convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
 convBlock-1/SecondAMIN/conv2/EluElu6convBlock-1/SecondAMIN/conv2/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
<convBlock-1/convBlock-1/SecondAMIN/conv1/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-1/convBlock-1/SecondAMIN/conv1/Elu/activations*
_output_shapes
: 
�
8convBlock-1/convBlock-1/SecondAMIN/conv1/Elu/activationsHistogramSummary<convBlock-1/convBlock-1/SecondAMIN/conv1/Elu/activations/tag convBlock-1/SecondAMIN/conv1/Elu*
T0*
_output_shapes
: 
�
=convBlock-1/convBlock-1/SecondAMIN/bconv1/Elu/activations/tagConst*
dtype0*J
valueAB? B9convBlock-1/convBlock-1/SecondAMIN/bconv1/Elu/activations*
_output_shapes
: 
�
9convBlock-1/convBlock-1/SecondAMIN/bconv1/Elu/activationsHistogramSummary=convBlock-1/convBlock-1/SecondAMIN/bconv1/Elu/activations/tag!convBlock-1/SecondAMIN/bconv1/Elu*
T0*
_output_shapes
: 
�
<convBlock-1/convBlock-1/SecondAMIN/conv2/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-1/convBlock-1/SecondAMIN/conv2/Elu/activations*
_output_shapes
: 
�
8convBlock-1/convBlock-1/SecondAMIN/conv2/Elu/activationsHistogramSummary<convBlock-1/convBlock-1/SecondAMIN/conv2/Elu/activations/tag convBlock-1/SecondAMIN/conv2/Elu*
T0*
_output_shapes
: 
�
convBlock-2/pool2/MaxPoolMaxPool convBlock-1/SecondAMIN/conv2/Elu*&
_output_shapes
:@@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8SecondAMIN/conv3/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv3/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv3/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv3/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv3/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv3/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv3/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv3/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv3/weights
�
6SecondAMIN/conv3/weights/Initializer/random_normal/mulMulGSecondAMIN/conv3/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv3/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv3/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv3/weights/Initializer/random_normalAdd6SecondAMIN/conv3/weights/Initializer/random_normal/mul7SecondAMIN/conv3/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv3/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv3/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv3/weights*
shared_name 
�
SecondAMIN/conv3/weights/AssignAssignSecondAMIN/conv3/weights2SecondAMIN/conv3/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv3/weights/readIdentitySecondAMIN/conv3/weights*+
_class!
loc:@SecondAMIN/conv3/weights*
T0*&
_output_shapes
:
�
.convBlock-2/SecondAMIN/conv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-2/SecondAMIN/conv3/convolutionConv2DconvBlock-2/pool2/MaxPoolSecondAMIN/conv3/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv3/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv3/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv3/BatchNorm/beta/AssignAssignSecondAMIN/conv3/BatchNorm/beta1SecondAMIN/conv3/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv3/BatchNorm/beta/readIdentitySecondAMIN/conv3/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv3/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv3/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv3/BatchNorm/gamma/AssignAssign SecondAMIN/conv3/BatchNorm/gamma2SecondAMIN/conv3/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv3/BatchNorm/gamma/readIdentity SecondAMIN/conv3/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv3/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv3/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv3/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv3/BatchNorm/moving_mean8SecondAMIN/conv3/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv3/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv3/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv3/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv3/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv3/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv3/BatchNorm/moving_variance<SecondAMIN/conv3/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv3/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv3/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/addAdd/SecondAMIN/conv3/BatchNorm/moving_variance/read6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mulMul6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul_1Mul(convBlock-2/SecondAMIN/conv3/convolution4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv3/BatchNorm/moving_mean/read4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/subSub$SecondAMIN/conv3/BatchNorm/beta/read6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/add_1Add6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/mul_14convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
 convBlock-2/SecondAMIN/conv3/EluElu6convBlock-2/SecondAMIN/conv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
9SecondAMIN/bconv2/weights/Initializer/random_normal/shapeConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv2/weights*%
valueB"            *
_output_shapes
:
�
8SecondAMIN/bconv2/weights/Initializer/random_normal/meanConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv2/weights*
valueB
 *    *
_output_shapes
: 
�
:SecondAMIN/bconv2/weights/Initializer/random_normal/stddevConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv2/weights*
valueB
 *
ף<*
_output_shapes
: 
�
HSecondAMIN/bconv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal9SecondAMIN/bconv2/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@SecondAMIN/bconv2/weights
�
7SecondAMIN/bconv2/weights/Initializer/random_normal/mulMulHSecondAMIN/bconv2/weights/Initializer/random_normal/RandomStandardNormal:SecondAMIN/bconv2/weights/Initializer/random_normal/stddev*,
_class"
 loc:@SecondAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
3SecondAMIN/bconv2/weights/Initializer/random_normalAdd7SecondAMIN/bconv2/weights/Initializer/random_normal/mul8SecondAMIN/bconv2/weights/Initializer/random_normal/mean*,
_class"
 loc:@SecondAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
SecondAMIN/bconv2/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@SecondAMIN/bconv2/weights*
shared_name 
�
 SecondAMIN/bconv2/weights/AssignAssignSecondAMIN/bconv2/weights3SecondAMIN/bconv2/weights/Initializer/random_normal*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/bconv2/weights/readIdentitySecondAMIN/bconv2/weights*,
_class"
 loc:@SecondAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
/convBlock-2/SecondAMIN/bconv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
7convBlock-2/SecondAMIN/bconv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
)convBlock-2/SecondAMIN/bconv2/convolutionConv2D convBlock-2/SecondAMIN/conv3/EluSecondAMIN/bconv2/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
2SecondAMIN/bconv2/BatchNorm/beta/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
 SecondAMIN/bconv2/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
shared_name 
�
'SecondAMIN/bconv2/BatchNorm/beta/AssignAssign SecondAMIN/bconv2/BatchNorm/beta2SecondAMIN/bconv2/BatchNorm/beta/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/bconv2/BatchNorm/beta/readIdentity SecondAMIN/bconv2/BatchNorm/beta*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
T0*
_output_shapes
:
�
3SecondAMIN/bconv2/BatchNorm/gamma/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
!SecondAMIN/bconv2/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
shared_name 
�
(SecondAMIN/bconv2/BatchNorm/gamma/AssignAssign!SecondAMIN/bconv2/BatchNorm/gamma3SecondAMIN/bconv2/BatchNorm/gamma/Initializer/Const*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
&SecondAMIN/bconv2/BatchNorm/gamma/readIdentity!SecondAMIN/bconv2/BatchNorm/gamma*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
T0*
_output_shapes
:
�
9SecondAMIN/bconv2/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
'SecondAMIN/bconv2/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
shared_name 
�
.SecondAMIN/bconv2/BatchNorm/moving_mean/AssignAssign'SecondAMIN/bconv2/BatchNorm/moving_mean9SecondAMIN/bconv2/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
,SecondAMIN/bconv2/BatchNorm/moving_mean/readIdentity'SecondAMIN/bconv2/BatchNorm/moving_mean*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
=SecondAMIN/bconv2/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
+SecondAMIN/bconv2/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
shared_name 
�
2SecondAMIN/bconv2/BatchNorm/moving_variance/AssignAssign+SecondAMIN/bconv2/BatchNorm/moving_variance=SecondAMIN/bconv2/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
0SecondAMIN/bconv2/BatchNorm/moving_variance/readIdentity+SecondAMIN/bconv2/BatchNorm/moving_variance*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
T0*
_output_shapes
:
|
7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv2/BatchNorm/moving_variance/read7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/RsqrtRsqrt5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mulMul7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_1Mul)convBlock-2/SecondAMIN/bconv2/convolution5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv2/BatchNorm/moving_mean/read5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
5convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/subSub%SecondAMIN/bconv2/BatchNorm/beta/read7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/add_1Add7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_15convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
!convBlock-2/SecondAMIN/bconv2/EluElu7convBlock-2/SecondAMIN/bconv2/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
8SecondAMIN/conv4/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv4/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv4/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv4/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv4/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv4/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv4/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv4/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv4/weights
�
6SecondAMIN/conv4/weights/Initializer/random_normal/mulMulGSecondAMIN/conv4/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv4/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv4/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv4/weights/Initializer/random_normalAdd6SecondAMIN/conv4/weights/Initializer/random_normal/mul7SecondAMIN/conv4/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv4/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv4/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv4/weights*
shared_name 
�
SecondAMIN/conv4/weights/AssignAssignSecondAMIN/conv4/weights2SecondAMIN/conv4/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv4/weights/readIdentitySecondAMIN/conv4/weights*+
_class!
loc:@SecondAMIN/conv4/weights*
T0*&
_output_shapes
:
�
.convBlock-2/SecondAMIN/conv4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-2/SecondAMIN/conv4/convolutionConv2D!convBlock-2/SecondAMIN/bconv2/EluSecondAMIN/conv4/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv4/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv4/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv4/BatchNorm/beta/AssignAssignSecondAMIN/conv4/BatchNorm/beta1SecondAMIN/conv4/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv4/BatchNorm/beta/readIdentitySecondAMIN/conv4/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv4/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv4/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv4/BatchNorm/gamma/AssignAssign SecondAMIN/conv4/BatchNorm/gamma2SecondAMIN/conv4/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv4/BatchNorm/gamma/readIdentity SecondAMIN/conv4/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv4/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv4/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv4/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv4/BatchNorm/moving_mean8SecondAMIN/conv4/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv4/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv4/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv4/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv4/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv4/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv4/BatchNorm/moving_variance<SecondAMIN/conv4/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv4/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv4/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/addAdd/SecondAMIN/conv4/BatchNorm/moving_variance/read6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mulMul6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv4/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul_1Mul(convBlock-2/SecondAMIN/conv4/convolution4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv4/BatchNorm/moving_mean/read4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/subSub$SecondAMIN/conv4/BatchNorm/beta/read6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/add_1Add6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/mul_14convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
 convBlock-2/SecondAMIN/conv4/EluElu6convBlock-2/SecondAMIN/conv4/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
<convBlock-2/convBlock-2/SecondAMIN/conv3/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-2/convBlock-2/SecondAMIN/conv3/Elu/activations*
_output_shapes
: 
�
8convBlock-2/convBlock-2/SecondAMIN/conv3/Elu/activationsHistogramSummary<convBlock-2/convBlock-2/SecondAMIN/conv3/Elu/activations/tag convBlock-2/SecondAMIN/conv3/Elu*
T0*
_output_shapes
: 
�
=convBlock-2/convBlock-2/SecondAMIN/bconv2/Elu/activations/tagConst*
dtype0*J
valueAB? B9convBlock-2/convBlock-2/SecondAMIN/bconv2/Elu/activations*
_output_shapes
: 
�
9convBlock-2/convBlock-2/SecondAMIN/bconv2/Elu/activationsHistogramSummary=convBlock-2/convBlock-2/SecondAMIN/bconv2/Elu/activations/tag!convBlock-2/SecondAMIN/bconv2/Elu*
T0*
_output_shapes
: 
�
<convBlock-2/convBlock-2/SecondAMIN/conv4/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-2/convBlock-2/SecondAMIN/conv4/Elu/activations*
_output_shapes
: 
�
8convBlock-2/convBlock-2/SecondAMIN/conv4/Elu/activationsHistogramSummary<convBlock-2/convBlock-2/SecondAMIN/conv4/Elu/activations/tag convBlock-2/SecondAMIN/conv4/Elu*
T0*
_output_shapes
: 
�
convBlock-3/pool3/AvgPoolAvgPool convBlock-2/SecondAMIN/conv4/Elu*&
_output_shapes
:  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8SecondAMIN/conv5/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv5/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv5/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv5/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv5/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv5/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv5/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv5/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv5/weights
�
6SecondAMIN/conv5/weights/Initializer/random_normal/mulMulGSecondAMIN/conv5/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv5/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv5/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv5/weights/Initializer/random_normalAdd6SecondAMIN/conv5/weights/Initializer/random_normal/mul7SecondAMIN/conv5/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv5/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv5/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv5/weights*
shared_name 
�
SecondAMIN/conv5/weights/AssignAssignSecondAMIN/conv5/weights2SecondAMIN/conv5/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv5/weights/readIdentitySecondAMIN/conv5/weights*+
_class!
loc:@SecondAMIN/conv5/weights*
T0*&
_output_shapes
:
�
.convBlock-3/SecondAMIN/conv5/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv5/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-3/SecondAMIN/conv5/convolutionConv2DconvBlock-3/pool3/AvgPoolSecondAMIN/conv5/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv5/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv5/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv5/BatchNorm/beta/AssignAssignSecondAMIN/conv5/BatchNorm/beta1SecondAMIN/conv5/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv5/BatchNorm/beta/readIdentitySecondAMIN/conv5/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv5/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv5/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv5/BatchNorm/gamma/AssignAssign SecondAMIN/conv5/BatchNorm/gamma2SecondAMIN/conv5/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv5/BatchNorm/gamma/readIdentity SecondAMIN/conv5/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv5/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv5/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv5/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv5/BatchNorm/moving_mean8SecondAMIN/conv5/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv5/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv5/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv5/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv5/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv5/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv5/BatchNorm/moving_variance<SecondAMIN/conv5/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv5/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv5/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/addAdd/SecondAMIN/conv5/BatchNorm/moving_variance/read6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mulMul6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv5/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul_1Mul(convBlock-3/SecondAMIN/conv5/convolution4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv5/BatchNorm/moving_mean/read4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/subSub$SecondAMIN/conv5/BatchNorm/beta/read6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/add_1Add6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/mul_14convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
 convBlock-3/SecondAMIN/conv5/EluElu6convBlock-3/SecondAMIN/conv5/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
9SecondAMIN/bconv3/weights/Initializer/random_normal/shapeConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv3/weights*%
valueB"            *
_output_shapes
:
�
8SecondAMIN/bconv3/weights/Initializer/random_normal/meanConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv3/weights*
valueB
 *    *
_output_shapes
: 
�
:SecondAMIN/bconv3/weights/Initializer/random_normal/stddevConst*
dtype0*,
_class"
 loc:@SecondAMIN/bconv3/weights*
valueB
 *
ף<*
_output_shapes
: 
�
HSecondAMIN/bconv3/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal9SecondAMIN/bconv3/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@SecondAMIN/bconv3/weights
�
7SecondAMIN/bconv3/weights/Initializer/random_normal/mulMulHSecondAMIN/bconv3/weights/Initializer/random_normal/RandomStandardNormal:SecondAMIN/bconv3/weights/Initializer/random_normal/stddev*,
_class"
 loc:@SecondAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
3SecondAMIN/bconv3/weights/Initializer/random_normalAdd7SecondAMIN/bconv3/weights/Initializer/random_normal/mul8SecondAMIN/bconv3/weights/Initializer/random_normal/mean*,
_class"
 loc:@SecondAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
SecondAMIN/bconv3/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@SecondAMIN/bconv3/weights*
shared_name 
�
 SecondAMIN/bconv3/weights/AssignAssignSecondAMIN/bconv3/weights3SecondAMIN/bconv3/weights/Initializer/random_normal*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/bconv3/weights/readIdentitySecondAMIN/bconv3/weights*,
_class"
 loc:@SecondAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
/convBlock-3/SecondAMIN/bconv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
7convBlock-3/SecondAMIN/bconv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
)convBlock-3/SecondAMIN/bconv3/convolutionConv2D convBlock-3/SecondAMIN/conv5/EluSecondAMIN/bconv3/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
2SecondAMIN/bconv3/BatchNorm/beta/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
 SecondAMIN/bconv3/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
shared_name 
�
'SecondAMIN/bconv3/BatchNorm/beta/AssignAssign SecondAMIN/bconv3/BatchNorm/beta2SecondAMIN/bconv3/BatchNorm/beta/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/bconv3/BatchNorm/beta/readIdentity SecondAMIN/bconv3/BatchNorm/beta*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
T0*
_output_shapes
:
�
3SecondAMIN/bconv3/BatchNorm/gamma/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
!SecondAMIN/bconv3/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
shared_name 
�
(SecondAMIN/bconv3/BatchNorm/gamma/AssignAssign!SecondAMIN/bconv3/BatchNorm/gamma3SecondAMIN/bconv3/BatchNorm/gamma/Initializer/Const*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
&SecondAMIN/bconv3/BatchNorm/gamma/readIdentity!SecondAMIN/bconv3/BatchNorm/gamma*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
T0*
_output_shapes
:
�
9SecondAMIN/bconv3/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
'SecondAMIN/bconv3/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
shared_name 
�
.SecondAMIN/bconv3/BatchNorm/moving_mean/AssignAssign'SecondAMIN/bconv3/BatchNorm/moving_mean9SecondAMIN/bconv3/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
,SecondAMIN/bconv3/BatchNorm/moving_mean/readIdentity'SecondAMIN/bconv3/BatchNorm/moving_mean*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
=SecondAMIN/bconv3/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
+SecondAMIN/bconv3/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
shared_name 
�
2SecondAMIN/bconv3/BatchNorm/moving_variance/AssignAssign+SecondAMIN/bconv3/BatchNorm/moving_variance=SecondAMIN/bconv3/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
0SecondAMIN/bconv3/BatchNorm/moving_variance/readIdentity+SecondAMIN/bconv3/BatchNorm/moving_variance*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
T0*
_output_shapes
:
|
7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv3/BatchNorm/moving_variance/read7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/RsqrtRsqrt5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mulMul7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_1Mul)convBlock-3/SecondAMIN/bconv3/convolution5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv3/BatchNorm/moving_mean/read5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
5convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/subSub%SecondAMIN/bconv3/BatchNorm/beta/read7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/add_1Add7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_15convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
!convBlock-3/SecondAMIN/bconv3/EluElu7convBlock-3/SecondAMIN/bconv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
8SecondAMIN/conv6/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv6/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv6/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv6/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv6/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv6/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv6/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv6/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv6/weights
�
6SecondAMIN/conv6/weights/Initializer/random_normal/mulMulGSecondAMIN/conv6/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv6/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv6/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv6/weights/Initializer/random_normalAdd6SecondAMIN/conv6/weights/Initializer/random_normal/mul7SecondAMIN/conv6/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv6/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv6/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv6/weights*
shared_name 
�
SecondAMIN/conv6/weights/AssignAssignSecondAMIN/conv6/weights2SecondAMIN/conv6/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv6/weights/readIdentitySecondAMIN/conv6/weights*+
_class!
loc:@SecondAMIN/conv6/weights*
T0*&
_output_shapes
:
�
.convBlock-3/SecondAMIN/conv6/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv6/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
(convBlock-3/SecondAMIN/conv6/convolutionConv2D!convBlock-3/SecondAMIN/bconv3/EluSecondAMIN/conv6/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv6/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv6/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv6/BatchNorm/beta/AssignAssignSecondAMIN/conv6/BatchNorm/beta1SecondAMIN/conv6/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv6/BatchNorm/beta/readIdentitySecondAMIN/conv6/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv6/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv6/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv6/BatchNorm/gamma/AssignAssign SecondAMIN/conv6/BatchNorm/gamma2SecondAMIN/conv6/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv6/BatchNorm/gamma/readIdentity SecondAMIN/conv6/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv6/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv6/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv6/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv6/BatchNorm/moving_mean8SecondAMIN/conv6/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv6/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv6/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv6/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv6/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv6/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv6/BatchNorm/moving_variance<SecondAMIN/conv6/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv6/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv6/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
T0*
_output_shapes
:
{
6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/addAdd/SecondAMIN/conv6/BatchNorm/moving_variance/read6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/RsqrtRsqrt4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mulMul6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv6/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul_1Mul(convBlock-3/SecondAMIN/conv6/convolution4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv6/BatchNorm/moving_mean/read4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
4convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/subSub$SecondAMIN/conv6/BatchNorm/beta/read6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/add_1Add6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/mul_14convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
 convBlock-3/SecondAMIN/conv6/EluElu6convBlock-3/SecondAMIN/conv6/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
<convBlock-3/convBlock-3/SecondAMIN/conv5/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-3/convBlock-3/SecondAMIN/conv5/Elu/activations*
_output_shapes
: 
�
8convBlock-3/convBlock-3/SecondAMIN/conv5/Elu/activationsHistogramSummary<convBlock-3/convBlock-3/SecondAMIN/conv5/Elu/activations/tag convBlock-3/SecondAMIN/conv5/Elu*
T0*
_output_shapes
: 
�
=convBlock-3/convBlock-3/SecondAMIN/bconv3/Elu/activations/tagConst*
dtype0*J
valueAB? B9convBlock-3/convBlock-3/SecondAMIN/bconv3/Elu/activations*
_output_shapes
: 
�
9convBlock-3/convBlock-3/SecondAMIN/bconv3/Elu/activationsHistogramSummary=convBlock-3/convBlock-3/SecondAMIN/bconv3/Elu/activations/tag!convBlock-3/SecondAMIN/bconv3/Elu*
T0*
_output_shapes
: 
�
<convBlock-3/convBlock-3/SecondAMIN/conv6/Elu/activations/tagConst*
dtype0*I
value@B> B8convBlock-3/convBlock-3/SecondAMIN/conv6/Elu/activations*
_output_shapes
: 
�
8convBlock-3/convBlock-3/SecondAMIN/conv6/Elu/activationsHistogramSummary<convBlock-3/convBlock-3/SecondAMIN/conv6/Elu/activations/tag convBlock-3/SecondAMIN/conv6/Elu*
T0*
_output_shapes
: 
W
size_1Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_1ResizeBilinear convBlock-1/SecondAMIN/conv2/Elusize_1*
align_corners( *
T0*&
_output_shapes
:  
W
size_2Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_2ResizeBilinear convBlock-2/SecondAMIN/conv4/Elusize_2*
align_corners( *
T0*&
_output_shapes
:  
O
concat_2/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
concat_2ConcatV2ResizeBilinear_1ResizeBilinear_2 convBlock-3/SecondAMIN/conv6/Eluconcat_2/axis*
N*

Tidx0*
T0*&
_output_shapes
:  <
�
8SecondAMIN/conv7/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv7/weights*%
valueB"      <      *
_output_shapes
:
�
7SecondAMIN/conv7/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv7/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv7/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv7/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv7/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv7/weights/Initializer/random_normal/shape*&
_output_shapes
:<*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv7/weights
�
6SecondAMIN/conv7/weights/Initializer/random_normal/mulMulGSecondAMIN/conv7/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv7/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
2SecondAMIN/conv7/weights/Initializer/random_normalAdd6SecondAMIN/conv7/weights/Initializer/random_normal/mul7SecondAMIN/conv7/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
SecondAMIN/conv7/weights
VariableV2*
	container *&
_output_shapes
:<*
dtype0*
shape:<*+
_class!
loc:@SecondAMIN/conv7/weights*
shared_name 
�
SecondAMIN/conv7/weights/AssignAssignSecondAMIN/conv7/weights2SecondAMIN/conv7/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
SecondAMIN/conv7/weights/readIdentitySecondAMIN/conv7/weights*+
_class!
loc:@SecondAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
2Depth-Map-Block/SecondAMIN/conv7/convolution/ShapeConst*
dtype0*%
valueB"      <      *
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv7/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,Depth-Map-Block/SecondAMIN/conv7/convolutionConv2Dconcat_2SecondAMIN/conv7/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv7/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv7/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv7/BatchNorm/beta/AssignAssignSecondAMIN/conv7/BatchNorm/beta1SecondAMIN/conv7/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv7/BatchNorm/beta/readIdentitySecondAMIN/conv7/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv7/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv7/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv7/BatchNorm/gamma/AssignAssign SecondAMIN/conv7/BatchNorm/gamma2SecondAMIN/conv7/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv7/BatchNorm/gamma/readIdentity SecondAMIN/conv7/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv7/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv7/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv7/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv7/BatchNorm/moving_mean8SecondAMIN/conv7/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv7/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv7/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv7/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv7/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv7/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv7/BatchNorm/moving_variance<SecondAMIN/conv7/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv7/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv7/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
T0*
_output_shapes
:

:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/addAdd/SecondAMIN/conv7/BatchNorm/moving_variance/read:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/RsqrtRsqrt8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mulMul:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv7/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul_1Mul,Depth-Map-Block/SecondAMIN/conv7/convolution8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv7/BatchNorm/moving_mean/read8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/subSub$SecondAMIN/conv7/BatchNorm/beta/read:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/add_1Add:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/mul_18Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
$Depth-Map-Block/SecondAMIN/conv7/EluElu:Depth-Map-Block/SecondAMIN/conv7/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
!Depth-Map-Block/dropout1/IdentityIdentity$Depth-Map-Block/SecondAMIN/conv7/Elu*
T0*&
_output_shapes
:  
�
8SecondAMIN/conv8/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@SecondAMIN/conv8/weights*%
valueB"            *
_output_shapes
:
�
7SecondAMIN/conv8/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@SecondAMIN/conv8/weights*
valueB
 *    *
_output_shapes
: 
�
9SecondAMIN/conv8/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@SecondAMIN/conv8/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GSecondAMIN/conv8/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8SecondAMIN/conv8/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@SecondAMIN/conv8/weights
�
6SecondAMIN/conv8/weights/Initializer/random_normal/mulMulGSecondAMIN/conv8/weights/Initializer/random_normal/RandomStandardNormal9SecondAMIN/conv8/weights/Initializer/random_normal/stddev*+
_class!
loc:@SecondAMIN/conv8/weights*
T0*&
_output_shapes
:
�
2SecondAMIN/conv8/weights/Initializer/random_normalAdd6SecondAMIN/conv8/weights/Initializer/random_normal/mul7SecondAMIN/conv8/weights/Initializer/random_normal/mean*+
_class!
loc:@SecondAMIN/conv8/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv8/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@SecondAMIN/conv8/weights*
shared_name 
�
SecondAMIN/conv8/weights/AssignAssignSecondAMIN/conv8/weights2SecondAMIN/conv8/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@SecondAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv8/weights/readIdentitySecondAMIN/conv8/weights*+
_class!
loc:@SecondAMIN/conv8/weights*
T0*&
_output_shapes
:
�
2Depth-Map-Block/SecondAMIN/conv8/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv8/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,Depth-Map-Block/SecondAMIN/conv8/convolutionConv2D!Depth-Map-Block/dropout1/IdentitySecondAMIN/conv8/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1SecondAMIN/conv8/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
SecondAMIN/conv8/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
shared_name 
�
&SecondAMIN/conv8/BatchNorm/beta/AssignAssignSecondAMIN/conv8/BatchNorm/beta1SecondAMIN/conv8/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$SecondAMIN/conv8/BatchNorm/beta/readIdentitySecondAMIN/conv8/BatchNorm/beta*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
T0*
_output_shapes
:
�
2SecondAMIN/conv8/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 SecondAMIN/conv8/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
shared_name 
�
'SecondAMIN/conv8/BatchNorm/gamma/AssignAssign SecondAMIN/conv8/BatchNorm/gamma2SecondAMIN/conv8/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%SecondAMIN/conv8/BatchNorm/gamma/readIdentity SecondAMIN/conv8/BatchNorm/gamma*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
T0*
_output_shapes
:
�
8SecondAMIN/conv8/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&SecondAMIN/conv8/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
shared_name 
�
-SecondAMIN/conv8/BatchNorm/moving_mean/AssignAssign&SecondAMIN/conv8/BatchNorm/moving_mean8SecondAMIN/conv8/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+SecondAMIN/conv8/BatchNorm/moving_mean/readIdentity&SecondAMIN/conv8/BatchNorm/moving_mean*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<SecondAMIN/conv8/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*SecondAMIN/conv8/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
shared_name 
�
1SecondAMIN/conv8/BatchNorm/moving_variance/AssignAssign*SecondAMIN/conv8/BatchNorm/moving_variance<SecondAMIN/conv8/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/SecondAMIN/conv8/BatchNorm/moving_variance/readIdentity*SecondAMIN/conv8/BatchNorm/moving_variance*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
T0*
_output_shapes
:

:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/addAdd/SecondAMIN/conv8/BatchNorm/moving_variance/read:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/RsqrtRsqrt8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mulMul:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv8/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul_1Mul,Depth-Map-Block/SecondAMIN/conv8/convolution8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv8/BatchNorm/moving_mean/read8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/subSub$SecondAMIN/conv8/BatchNorm/beta/read:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/add_1Add:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/mul_18Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
$Depth-Map-Block/SecondAMIN/conv8/EluElu:Depth-Map-Block/SecondAMIN/conv8/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
DDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv7/Elu/activations/tagConst*
dtype0*Q
valueHBF B@Depth-Map-Block/Depth-Map-Block/SecondAMIN/conv7/Elu/activations*
_output_shapes
: 
�
@Depth-Map-Block/Depth-Map-Block/SecondAMIN/conv7/Elu/activationsHistogramSummaryDDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv7/Elu/activations/tag$Depth-Map-Block/SecondAMIN/conv7/Elu*
T0*
_output_shapes
: 
�
DDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv8/Elu/activations/tagConst*
dtype0*Q
valueHBF B@Depth-Map-Block/Depth-Map-Block/SecondAMIN/conv8/Elu/activations*
_output_shapes
: 
�
@Depth-Map-Block/Depth-Map-Block/SecondAMIN/conv8/Elu/activationsHistogramSummaryDDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv8/Elu/activations/tag$Depth-Map-Block/SecondAMIN/conv8/Elu*
T0*
_output_shapes
: 
�
9SecondAMIN/conv11/weights/Initializer/random_normal/shapeConst*
dtype0*,
_class"
 loc:@SecondAMIN/conv11/weights*%
valueB"            *
_output_shapes
:
�
8SecondAMIN/conv11/weights/Initializer/random_normal/meanConst*
dtype0*,
_class"
 loc:@SecondAMIN/conv11/weights*
valueB
 *    *
_output_shapes
: 
�
:SecondAMIN/conv11/weights/Initializer/random_normal/stddevConst*
dtype0*,
_class"
 loc:@SecondAMIN/conv11/weights*
valueB
 *
ף<*
_output_shapes
: 
�
HSecondAMIN/conv11/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal9SecondAMIN/conv11/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@SecondAMIN/conv11/weights
�
7SecondAMIN/conv11/weights/Initializer/random_normal/mulMulHSecondAMIN/conv11/weights/Initializer/random_normal/RandomStandardNormal:SecondAMIN/conv11/weights/Initializer/random_normal/stddev*,
_class"
 loc:@SecondAMIN/conv11/weights*
T0*&
_output_shapes
:
�
3SecondAMIN/conv11/weights/Initializer/random_normalAdd7SecondAMIN/conv11/weights/Initializer/random_normal/mul8SecondAMIN/conv11/weights/Initializer/random_normal/mean*,
_class"
 loc:@SecondAMIN/conv11/weights*
T0*&
_output_shapes
:
�
SecondAMIN/conv11/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@SecondAMIN/conv11/weights*
shared_name 
�
 SecondAMIN/conv11/weights/AssignAssignSecondAMIN/conv11/weights3SecondAMIN/conv11/weights/Initializer/random_normal*
validate_shape(*,
_class"
 loc:@SecondAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
SecondAMIN/conv11/weights/readIdentitySecondAMIN/conv11/weights*,
_class"
 loc:@SecondAMIN/conv11/weights*
T0*&
_output_shapes
:
|
#SecondAMIN/conv11/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
|
+SecondAMIN/conv11/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
SecondAMIN/conv11/convolutionConv2D$Depth-Map-Block/SecondAMIN/conv8/EluSecondAMIN/conv11/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
-SecondAMIN/conv11/convolution/activations/tagConst*
dtype0*:
value1B/ B)SecondAMIN/conv11/convolution/activations*
_output_shapes
: 
�
)SecondAMIN/conv11/convolution/activationsHistogramSummary-SecondAMIN/conv11/convolution/activations/tagSecondAMIN/conv11/convolution*
T0*
_output_shapes
: 
U
depthMap/tagConst*
dtype0*
valueB BdepthMap*
_output_shapes
: 
�
depthMapImageSummarydepthMap/tagSecondAMIN/conv11/convolution*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
�
7FirstAMIN/conv0/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv0/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv0/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv0/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv0/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv0/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv0/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv0/weights
�
5FirstAMIN/conv0/weights/Initializer/random_normal/mulMulFFirstAMIN/conv0/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv0/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv0/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv0/weights/Initializer/random_normalAdd5FirstAMIN/conv0/weights/Initializer/random_normal/mul6FirstAMIN/conv0/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv0/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv0/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv0/weights*
shared_name 
�
FirstAMIN/conv0/weights/AssignAssignFirstAMIN/conv0/weights1FirstAMIN/conv0/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv0/weights/readIdentityFirstAMIN/conv0/weights**
_class 
loc:@FirstAMIN/conv0/weights*
T0*&
_output_shapes
:
z
!FirstAMIN/conv0/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
z
)FirstAMIN/conv0/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
FirstAMIN/conv0/convolutionConv2DstackFirstAMIN/conv0/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv0/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv0/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv0/BatchNorm/beta/AssignAssignFirstAMIN/conv0/BatchNorm/beta0FirstAMIN/conv0/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv0/BatchNorm/beta/readIdentityFirstAMIN/conv0/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv0/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv0/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv0/BatchNorm/gamma/AssignAssignFirstAMIN/conv0/BatchNorm/gamma1FirstAMIN/conv0/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv0/BatchNorm/gamma/readIdentityFirstAMIN/conv0/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv0/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv0/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv0/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv0/BatchNorm/moving_mean7FirstAMIN/conv0/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv0/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv0/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv0/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv0/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv0/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv0/BatchNorm/moving_variance;FirstAMIN/conv0/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv0/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv0/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
T0*
_output_shapes
:
n
)FirstAMIN/conv0/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
'FirstAMIN/conv0/BatchNorm/batchnorm/addAdd.FirstAMIN/conv0/BatchNorm/moving_variance/read)FirstAMIN/conv0/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
)FirstAMIN/conv0/BatchNorm/batchnorm/RsqrtRsqrt'FirstAMIN/conv0/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
'FirstAMIN/conv0/BatchNorm/batchnorm/mulMul)FirstAMIN/conv0/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv0/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
)FirstAMIN/conv0/BatchNorm/batchnorm/mul_1MulFirstAMIN/conv0/convolution'FirstAMIN/conv0/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
)FirstAMIN/conv0/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv0/BatchNorm/moving_mean/read'FirstAMIN/conv0/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
'FirstAMIN/conv0/BatchNorm/batchnorm/subSub#FirstAMIN/conv0/BatchNorm/beta/read)FirstAMIN/conv0/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
)FirstAMIN/conv0/BatchNorm/batchnorm/add_1Add)FirstAMIN/conv0/BatchNorm/batchnorm/mul_1'FirstAMIN/conv0/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
x
FirstAMIN/conv0/EluElu)FirstAMIN/conv0/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
FirstAMIN/pool1/MaxPoolMaxPoolFirstAMIN/conv0/Elu*(
_output_shapes
:��*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
7FirstAMIN/conv1/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv1/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv1/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv1/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv1/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv1/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv1/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv1/weights
�
5FirstAMIN/conv1/weights/Initializer/random_normal/mulMulFFirstAMIN/conv1/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv1/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv1/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv1/weights/Initializer/random_normalAdd5FirstAMIN/conv1/weights/Initializer/random_normal/mul6FirstAMIN/conv1/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv1/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv1/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv1/weights*
shared_name 
�
FirstAMIN/conv1/weights/AssignAssignFirstAMIN/conv1/weights1FirstAMIN/conv1/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv1/weights/readIdentityFirstAMIN/conv1/weights**
_class 
loc:@FirstAMIN/conv1/weights*
T0*&
_output_shapes
:
�
1convBlock-1_fir/FirstAMIN/conv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-1_fir/FirstAMIN/conv1/convolutionConv2DFirstAMIN/pool1/MaxPoolFirstAMIN/conv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv1/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv1/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv1/BatchNorm/beta/AssignAssignFirstAMIN/conv1/BatchNorm/beta0FirstAMIN/conv1/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv1/BatchNorm/beta/readIdentityFirstAMIN/conv1/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv1/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv1/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv1/BatchNorm/gamma/AssignAssignFirstAMIN/conv1/BatchNorm/gamma1FirstAMIN/conv1/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv1/BatchNorm/gamma/readIdentityFirstAMIN/conv1/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv1/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv1/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv1/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv1/BatchNorm/moving_mean7FirstAMIN/conv1/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv1/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv1/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv1/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv1/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv1/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv1/BatchNorm/moving_variance;FirstAMIN/conv1/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv1/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv1/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/addAdd.FirstAMIN/conv1/BatchNorm/moving_variance/read9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mulMul9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul_1Mul+convBlock-1_fir/FirstAMIN/conv1/convolution7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv1/BatchNorm/moving_mean/read7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/subSub#FirstAMIN/conv1/BatchNorm/beta/read9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/add_1Add9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/mul_17convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
#convBlock-1_fir/FirstAMIN/conv1/EluElu9convBlock-1_fir/FirstAMIN/conv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/bconv1/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv1/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/bconv1/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv1/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/bconv1/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv1/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/bconv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/bconv1/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/bconv1/weights
�
6FirstAMIN/bconv1/weights/Initializer/random_normal/mulMulGFirstAMIN/bconv1/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/bconv1/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/bconv1/weights/Initializer/random_normalAdd6FirstAMIN/bconv1/weights/Initializer/random_normal/mul7FirstAMIN/bconv1/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
FirstAMIN/bconv1/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/bconv1/weights*
shared_name 
�
FirstAMIN/bconv1/weights/AssignAssignFirstAMIN/bconv1/weights2FirstAMIN/bconv1/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/bconv1/weights/readIdentityFirstAMIN/bconv1/weights*+
_class!
loc:@FirstAMIN/bconv1/weights*
T0*&
_output_shapes
:
�
2convBlock-1_fir/FirstAMIN/bconv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-1_fir/FirstAMIN/bconv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-1_fir/FirstAMIN/bconv1/convolutionConv2D#convBlock-1_fir/FirstAMIN/conv1/EluFirstAMIN/bconv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/bconv1/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/bconv1/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
shared_name 
�
&FirstAMIN/bconv1/BatchNorm/beta/AssignAssignFirstAMIN/bconv1/BatchNorm/beta1FirstAMIN/bconv1/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/bconv1/BatchNorm/beta/readIdentityFirstAMIN/bconv1/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/bconv1/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/bconv1/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/bconv1/BatchNorm/gamma/AssignAssign FirstAMIN/bconv1/BatchNorm/gamma2FirstAMIN/bconv1/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/bconv1/BatchNorm/gamma/readIdentity FirstAMIN/bconv1/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/bconv1/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/bconv1/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/bconv1/BatchNorm/moving_mean/AssignAssign&FirstAMIN/bconv1/BatchNorm/moving_mean8FirstAMIN/bconv1/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/bconv1/BatchNorm/moving_mean/readIdentity&FirstAMIN/bconv1/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/bconv1/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/bconv1/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/bconv1/BatchNorm/moving_variance/AssignAssign*FirstAMIN/bconv1/BatchNorm/moving_variance<FirstAMIN/bconv1/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/bconv1/BatchNorm/moving_variance/readIdentity*FirstAMIN/bconv1/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
T0*
_output_shapes
:

:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/addAdd/FirstAMIN/bconv1/BatchNorm/moving_variance/read:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mulMul:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/Rsqrt%FirstAMIN/bconv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul_1Mul,convBlock-1_fir/FirstAMIN/bconv1/convolution8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/bconv1/BatchNorm/moving_mean/read8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/subSub$FirstAMIN/bconv1/BatchNorm/beta/read:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/add_1Add:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/mul_18convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
$convBlock-1_fir/FirstAMIN/bconv1/EluElu:convBlock-1_fir/FirstAMIN/bconv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
7FirstAMIN/conv2/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv2/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv2/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv2/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv2/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv2/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv2/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv2/weights
�
5FirstAMIN/conv2/weights/Initializer/random_normal/mulMulFFirstAMIN/conv2/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv2/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv2/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv2/weights/Initializer/random_normalAdd5FirstAMIN/conv2/weights/Initializer/random_normal/mul6FirstAMIN/conv2/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv2/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv2/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv2/weights*
shared_name 
�
FirstAMIN/conv2/weights/AssignAssignFirstAMIN/conv2/weights1FirstAMIN/conv2/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv2/weights/readIdentityFirstAMIN/conv2/weights**
_class 
loc:@FirstAMIN/conv2/weights*
T0*&
_output_shapes
:
�
1convBlock-1_fir/FirstAMIN/conv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-1_fir/FirstAMIN/conv2/convolutionConv2D$convBlock-1_fir/FirstAMIN/bconv1/EluFirstAMIN/conv2/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv2/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv2/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv2/BatchNorm/beta/AssignAssignFirstAMIN/conv2/BatchNorm/beta0FirstAMIN/conv2/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv2/BatchNorm/beta/readIdentityFirstAMIN/conv2/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv2/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv2/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv2/BatchNorm/gamma/AssignAssignFirstAMIN/conv2/BatchNorm/gamma1FirstAMIN/conv2/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv2/BatchNorm/gamma/readIdentityFirstAMIN/conv2/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv2/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv2/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv2/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv2/BatchNorm/moving_mean7FirstAMIN/conv2/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv2/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv2/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv2/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv2/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv2/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv2/BatchNorm/moving_variance;FirstAMIN/conv2/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv2/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv2/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/addAdd.FirstAMIN/conv2/BatchNorm/moving_variance/read9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mulMul9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul_1Mul+convBlock-1_fir/FirstAMIN/conv2/convolution7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv2/BatchNorm/moving_mean/read7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/subSub#FirstAMIN/conv2/BatchNorm/beta/read9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/add_1Add9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/mul_17convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
#convBlock-1_fir/FirstAMIN/conv2/EluElu9convBlock-1_fir/FirstAMIN/conv2/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
'convBlock-2_fir/FirstAMIN/pool2/MaxPoolMaxPool#convBlock-1_fir/FirstAMIN/conv2/Elu*&
_output_shapes
:@@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
7FirstAMIN/conv3/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv3/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv3/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv3/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv3/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv3/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv3/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv3/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv3/weights
�
5FirstAMIN/conv3/weights/Initializer/random_normal/mulMulFFirstAMIN/conv3/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv3/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv3/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv3/weights/Initializer/random_normalAdd5FirstAMIN/conv3/weights/Initializer/random_normal/mul6FirstAMIN/conv3/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv3/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv3/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv3/weights*
shared_name 
�
FirstAMIN/conv3/weights/AssignAssignFirstAMIN/conv3/weights1FirstAMIN/conv3/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv3/weights/readIdentityFirstAMIN/conv3/weights**
_class 
loc:@FirstAMIN/conv3/weights*
T0*&
_output_shapes
:
�
1convBlock-2_fir/FirstAMIN/conv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-2_fir/FirstAMIN/conv3/convolutionConv2D'convBlock-2_fir/FirstAMIN/pool2/MaxPoolFirstAMIN/conv3/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv3/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv3/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv3/BatchNorm/beta/AssignAssignFirstAMIN/conv3/BatchNorm/beta0FirstAMIN/conv3/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv3/BatchNorm/beta/readIdentityFirstAMIN/conv3/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv3/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv3/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv3/BatchNorm/gamma/AssignAssignFirstAMIN/conv3/BatchNorm/gamma1FirstAMIN/conv3/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv3/BatchNorm/gamma/readIdentityFirstAMIN/conv3/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv3/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv3/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv3/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv3/BatchNorm/moving_mean7FirstAMIN/conv3/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv3/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv3/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv3/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv3/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv3/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv3/BatchNorm/moving_variance;FirstAMIN/conv3/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv3/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv3/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/addAdd.FirstAMIN/conv3/BatchNorm/moving_variance/read9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mulMul9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul_1Mul+convBlock-2_fir/FirstAMIN/conv3/convolution7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv3/BatchNorm/moving_mean/read7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/subSub#FirstAMIN/conv3/BatchNorm/beta/read9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/add_1Add9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/mul_17convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
#convBlock-2_fir/FirstAMIN/conv3/EluElu9convBlock-2_fir/FirstAMIN/conv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
8FirstAMIN/bconv2/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv2/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/bconv2/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv2/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/bconv2/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv2/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/bconv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/bconv2/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/bconv2/weights
�
6FirstAMIN/bconv2/weights/Initializer/random_normal/mulMulGFirstAMIN/bconv2/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/bconv2/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/bconv2/weights/Initializer/random_normalAdd6FirstAMIN/bconv2/weights/Initializer/random_normal/mul7FirstAMIN/bconv2/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
FirstAMIN/bconv2/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/bconv2/weights*
shared_name 
�
FirstAMIN/bconv2/weights/AssignAssignFirstAMIN/bconv2/weights2FirstAMIN/bconv2/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/bconv2/weights/readIdentityFirstAMIN/bconv2/weights*+
_class!
loc:@FirstAMIN/bconv2/weights*
T0*&
_output_shapes
:
�
2convBlock-2_fir/FirstAMIN/bconv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-2_fir/FirstAMIN/bconv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-2_fir/FirstAMIN/bconv2/convolutionConv2D#convBlock-2_fir/FirstAMIN/conv3/EluFirstAMIN/bconv2/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/bconv2/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/bconv2/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
shared_name 
�
&FirstAMIN/bconv2/BatchNorm/beta/AssignAssignFirstAMIN/bconv2/BatchNorm/beta1FirstAMIN/bconv2/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/bconv2/BatchNorm/beta/readIdentityFirstAMIN/bconv2/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/bconv2/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/bconv2/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/bconv2/BatchNorm/gamma/AssignAssign FirstAMIN/bconv2/BatchNorm/gamma2FirstAMIN/bconv2/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/bconv2/BatchNorm/gamma/readIdentity FirstAMIN/bconv2/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/bconv2/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/bconv2/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/bconv2/BatchNorm/moving_mean/AssignAssign&FirstAMIN/bconv2/BatchNorm/moving_mean8FirstAMIN/bconv2/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/bconv2/BatchNorm/moving_mean/readIdentity&FirstAMIN/bconv2/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/bconv2/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/bconv2/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/bconv2/BatchNorm/moving_variance/AssignAssign*FirstAMIN/bconv2/BatchNorm/moving_variance<FirstAMIN/bconv2/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/bconv2/BatchNorm/moving_variance/readIdentity*FirstAMIN/bconv2/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
T0*
_output_shapes
:

:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/addAdd/FirstAMIN/bconv2/BatchNorm/moving_variance/read:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mulMul:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/Rsqrt%FirstAMIN/bconv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul_1Mul,convBlock-2_fir/FirstAMIN/bconv2/convolution8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/bconv2/BatchNorm/moving_mean/read8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/subSub$FirstAMIN/bconv2/BatchNorm/beta/read:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/add_1Add:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/mul_18convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
$convBlock-2_fir/FirstAMIN/bconv2/EluElu:convBlock-2_fir/FirstAMIN/bconv2/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
7FirstAMIN/conv4/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv4/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv4/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv4/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv4/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv4/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv4/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv4/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv4/weights
�
5FirstAMIN/conv4/weights/Initializer/random_normal/mulMulFFirstAMIN/conv4/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv4/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv4/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv4/weights/Initializer/random_normalAdd5FirstAMIN/conv4/weights/Initializer/random_normal/mul6FirstAMIN/conv4/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv4/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv4/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv4/weights*
shared_name 
�
FirstAMIN/conv4/weights/AssignAssignFirstAMIN/conv4/weights1FirstAMIN/conv4/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv4/weights/readIdentityFirstAMIN/conv4/weights**
_class 
loc:@FirstAMIN/conv4/weights*
T0*&
_output_shapes
:
�
1convBlock-2_fir/FirstAMIN/conv4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-2_fir/FirstAMIN/conv4/convolutionConv2D$convBlock-2_fir/FirstAMIN/bconv2/EluFirstAMIN/conv4/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv4/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv4/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv4/BatchNorm/beta/AssignAssignFirstAMIN/conv4/BatchNorm/beta0FirstAMIN/conv4/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv4/BatchNorm/beta/readIdentityFirstAMIN/conv4/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv4/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv4/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv4/BatchNorm/gamma/AssignAssignFirstAMIN/conv4/BatchNorm/gamma1FirstAMIN/conv4/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv4/BatchNorm/gamma/readIdentityFirstAMIN/conv4/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv4/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv4/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv4/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv4/BatchNorm/moving_mean7FirstAMIN/conv4/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv4/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv4/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv4/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv4/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv4/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv4/BatchNorm/moving_variance;FirstAMIN/conv4/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv4/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv4/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/addAdd.FirstAMIN/conv4/BatchNorm/moving_variance/read9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mulMul9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv4/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul_1Mul+convBlock-2_fir/FirstAMIN/conv4/convolution7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv4/BatchNorm/moving_mean/read7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/subSub#FirstAMIN/conv4/BatchNorm/beta/read9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/add_1Add9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/mul_17convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
#convBlock-2_fir/FirstAMIN/conv4/EluElu9convBlock-2_fir/FirstAMIN/conv4/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
'convBlock-3_fir/FirstAMIN/pool3/AvgPoolAvgPool#convBlock-2_fir/FirstAMIN/conv4/Elu*&
_output_shapes
:  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
7FirstAMIN/conv5/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv5/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv5/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv5/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv5/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv5/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv5/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv5/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv5/weights
�
5FirstAMIN/conv5/weights/Initializer/random_normal/mulMulFFirstAMIN/conv5/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv5/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv5/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv5/weights/Initializer/random_normalAdd5FirstAMIN/conv5/weights/Initializer/random_normal/mul6FirstAMIN/conv5/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv5/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv5/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv5/weights*
shared_name 
�
FirstAMIN/conv5/weights/AssignAssignFirstAMIN/conv5/weights1FirstAMIN/conv5/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv5/weights/readIdentityFirstAMIN/conv5/weights**
_class 
loc:@FirstAMIN/conv5/weights*
T0*&
_output_shapes
:
�
1convBlock-3_fir/FirstAMIN/conv5/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv5/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-3_fir/FirstAMIN/conv5/convolutionConv2D'convBlock-3_fir/FirstAMIN/pool3/AvgPoolFirstAMIN/conv5/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv5/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv5/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv5/BatchNorm/beta/AssignAssignFirstAMIN/conv5/BatchNorm/beta0FirstAMIN/conv5/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv5/BatchNorm/beta/readIdentityFirstAMIN/conv5/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv5/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv5/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv5/BatchNorm/gamma/AssignAssignFirstAMIN/conv5/BatchNorm/gamma1FirstAMIN/conv5/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv5/BatchNorm/gamma/readIdentityFirstAMIN/conv5/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv5/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv5/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv5/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv5/BatchNorm/moving_mean7FirstAMIN/conv5/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv5/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv5/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv5/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv5/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv5/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv5/BatchNorm/moving_variance;FirstAMIN/conv5/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv5/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv5/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/addAdd.FirstAMIN/conv5/BatchNorm/moving_variance/read9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mulMul9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv5/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul_1Mul+convBlock-3_fir/FirstAMIN/conv5/convolution7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv5/BatchNorm/moving_mean/read7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/subSub#FirstAMIN/conv5/BatchNorm/beta/read9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/add_1Add9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/mul_17convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
#convBlock-3_fir/FirstAMIN/conv5/EluElu9convBlock-3_fir/FirstAMIN/conv5/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
8FirstAMIN/bconv3/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv3/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/bconv3/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv3/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/bconv3/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/bconv3/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/bconv3/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/bconv3/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/bconv3/weights
�
6FirstAMIN/bconv3/weights/Initializer/random_normal/mulMulGFirstAMIN/bconv3/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/bconv3/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/bconv3/weights/Initializer/random_normalAdd6FirstAMIN/bconv3/weights/Initializer/random_normal/mul7FirstAMIN/bconv3/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
FirstAMIN/bconv3/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/bconv3/weights*
shared_name 
�
FirstAMIN/bconv3/weights/AssignAssignFirstAMIN/bconv3/weights2FirstAMIN/bconv3/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/bconv3/weights/readIdentityFirstAMIN/bconv3/weights*+
_class!
loc:@FirstAMIN/bconv3/weights*
T0*&
_output_shapes
:
�
2convBlock-3_fir/FirstAMIN/bconv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-3_fir/FirstAMIN/bconv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-3_fir/FirstAMIN/bconv3/convolutionConv2D#convBlock-3_fir/FirstAMIN/conv5/EluFirstAMIN/bconv3/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/bconv3/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/bconv3/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
shared_name 
�
&FirstAMIN/bconv3/BatchNorm/beta/AssignAssignFirstAMIN/bconv3/BatchNorm/beta1FirstAMIN/bconv3/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/bconv3/BatchNorm/beta/readIdentityFirstAMIN/bconv3/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/bconv3/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/bconv3/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/bconv3/BatchNorm/gamma/AssignAssign FirstAMIN/bconv3/BatchNorm/gamma2FirstAMIN/bconv3/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/bconv3/BatchNorm/gamma/readIdentity FirstAMIN/bconv3/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/bconv3/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/bconv3/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/bconv3/BatchNorm/moving_mean/AssignAssign&FirstAMIN/bconv3/BatchNorm/moving_mean8FirstAMIN/bconv3/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/bconv3/BatchNorm/moving_mean/readIdentity&FirstAMIN/bconv3/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/bconv3/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/bconv3/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/bconv3/BatchNorm/moving_variance/AssignAssign*FirstAMIN/bconv3/BatchNorm/moving_variance<FirstAMIN/bconv3/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/bconv3/BatchNorm/moving_variance/readIdentity*FirstAMIN/bconv3/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
T0*
_output_shapes
:

:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/addAdd/FirstAMIN/bconv3/BatchNorm/moving_variance/read:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mulMul:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/Rsqrt%FirstAMIN/bconv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul_1Mul,convBlock-3_fir/FirstAMIN/bconv3/convolution8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/bconv3/BatchNorm/moving_mean/read8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/subSub$FirstAMIN/bconv3/BatchNorm/beta/read:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/add_1Add:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/mul_18convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
$convBlock-3_fir/FirstAMIN/bconv3/EluElu:convBlock-3_fir/FirstAMIN/bconv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
7FirstAMIN/conv6/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv6/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv6/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv6/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv6/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv6/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv6/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv6/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv6/weights
�
5FirstAMIN/conv6/weights/Initializer/random_normal/mulMulFFirstAMIN/conv6/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv6/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv6/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv6/weights/Initializer/random_normalAdd5FirstAMIN/conv6/weights/Initializer/random_normal/mul6FirstAMIN/conv6/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv6/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv6/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv6/weights*
shared_name 
�
FirstAMIN/conv6/weights/AssignAssignFirstAMIN/conv6/weights1FirstAMIN/conv6/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv6/weights/readIdentityFirstAMIN/conv6/weights**
_class 
loc:@FirstAMIN/conv6/weights*
T0*&
_output_shapes
:
�
1convBlock-3_fir/FirstAMIN/conv6/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv6/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
+convBlock-3_fir/FirstAMIN/conv6/convolutionConv2D$convBlock-3_fir/FirstAMIN/bconv3/EluFirstAMIN/conv6/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv6/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv6/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv6/BatchNorm/beta/AssignAssignFirstAMIN/conv6/BatchNorm/beta0FirstAMIN/conv6/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv6/BatchNorm/beta/readIdentityFirstAMIN/conv6/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv6/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv6/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv6/BatchNorm/gamma/AssignAssignFirstAMIN/conv6/BatchNorm/gamma1FirstAMIN/conv6/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv6/BatchNorm/gamma/readIdentityFirstAMIN/conv6/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv6/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv6/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv6/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv6/BatchNorm/moving_mean7FirstAMIN/conv6/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv6/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv6/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv6/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv6/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv6/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv6/BatchNorm/moving_variance;FirstAMIN/conv6/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv6/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv6/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
T0*
_output_shapes
:
~
9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/addAdd.FirstAMIN/conv6/BatchNorm/moving_variance/read9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/RsqrtRsqrt7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mulMul9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv6/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul_1Mul+convBlock-3_fir/FirstAMIN/conv6/convolution7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv6/BatchNorm/moving_mean/read7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
7convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/subSub#FirstAMIN/conv6/BatchNorm/beta/read9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/add_1Add9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/mul_17convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
#convBlock-3_fir/FirstAMIN/conv6/EluElu9convBlock-3_fir/FirstAMIN/conv6/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
W
size_3Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_3ResizeBilinear#convBlock-1_fir/FirstAMIN/conv2/Elusize_3*
align_corners( *
T0*&
_output_shapes
:  
W
size_4Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_4ResizeBilinear#convBlock-2_fir/FirstAMIN/conv4/Elusize_4*
align_corners( *
T0*&
_output_shapes
:  
O
concat_3/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
concat_3ConcatV2ResizeBilinear_3ResizeBilinear_4#convBlock-3_fir/FirstAMIN/conv6/Eluconcat_3/axis*
N*

Tidx0*
T0*&
_output_shapes
:  <
�
7FirstAMIN/conv7/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv7/weights*%
valueB"      <      *
_output_shapes
:
�
6FirstAMIN/conv7/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv7/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv7/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv7/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv7/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv7/weights/Initializer/random_normal/shape*&
_output_shapes
:<*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv7/weights
�
5FirstAMIN/conv7/weights/Initializer/random_normal/mulMulFFirstAMIN/conv7/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv7/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
1FirstAMIN/conv7/weights/Initializer/random_normalAdd5FirstAMIN/conv7/weights/Initializer/random_normal/mul6FirstAMIN/conv7/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
FirstAMIN/conv7/weights
VariableV2*
	container *&
_output_shapes
:<*
dtype0*
shape:<**
_class 
loc:@FirstAMIN/conv7/weights*
shared_name 
�
FirstAMIN/conv7/weights/AssignAssignFirstAMIN/conv7/weights1FirstAMIN/conv7/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
FirstAMIN/conv7/weights/readIdentityFirstAMIN/conv7/weights**
_class 
loc:@FirstAMIN/conv7/weights*
T0*&
_output_shapes
:<
�
5Depth-Map-Block_fir/FirstAMIN/conv7/convolution/ShapeConst*
dtype0*%
valueB"      <      *
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv7/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
/Depth-Map-Block_fir/FirstAMIN/conv7/convolutionConv2Dconcat_3FirstAMIN/conv7/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv7/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv7/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv7/BatchNorm/beta/AssignAssignFirstAMIN/conv7/BatchNorm/beta0FirstAMIN/conv7/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv7/BatchNorm/beta/readIdentityFirstAMIN/conv7/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv7/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv7/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv7/BatchNorm/gamma/AssignAssignFirstAMIN/conv7/BatchNorm/gamma1FirstAMIN/conv7/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv7/BatchNorm/gamma/readIdentityFirstAMIN/conv7/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv7/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv7/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv7/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv7/BatchNorm/moving_mean7FirstAMIN/conv7/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv7/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv7/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv7/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv7/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv7/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv7/BatchNorm/moving_variance;FirstAMIN/conv7/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv7/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv7/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/addAdd.FirstAMIN/conv7/BatchNorm/moving_variance/read=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/RsqrtRsqrt;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mulMul=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv7/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul_1Mul/Depth-Map-Block_fir/FirstAMIN/conv7/convolution;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv7/BatchNorm/moving_mean/read;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/subSub#FirstAMIN/conv7/BatchNorm/beta/read=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/add_1Add=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/mul_1;Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
'Depth-Map-Block_fir/FirstAMIN/conv7/EluElu=Depth-Map-Block_fir/FirstAMIN/conv7/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
/Depth-Map-Block_fir/FirstAMIN/dropout2/IdentityIdentity'Depth-Map-Block_fir/FirstAMIN/conv7/Elu*
T0*&
_output_shapes
:  
�
7FirstAMIN/conv8/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv8/weights*%
valueB"            *
_output_shapes
:
�
6FirstAMIN/conv8/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv8/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv8/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv8/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv8/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv8/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv8/weights
�
5FirstAMIN/conv8/weights/Initializer/random_normal/mulMulFFirstAMIN/conv8/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv8/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv8/weights*
T0*&
_output_shapes
:
�
1FirstAMIN/conv8/weights/Initializer/random_normalAdd5FirstAMIN/conv8/weights/Initializer/random_normal/mul6FirstAMIN/conv8/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv8/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv8/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@FirstAMIN/conv8/weights*
shared_name 
�
FirstAMIN/conv8/weights/AssignAssignFirstAMIN/conv8/weights1FirstAMIN/conv8/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv8/weights/readIdentityFirstAMIN/conv8/weights**
_class 
loc:@FirstAMIN/conv8/weights*
T0*&
_output_shapes
:
�
5Depth-Map-Block_fir/FirstAMIN/conv8/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv8/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
/Depth-Map-Block_fir/FirstAMIN/conv8/convolutionConv2D/Depth-Map-Block_fir/FirstAMIN/dropout2/IdentityFirstAMIN/conv8/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv8/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv8/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv8/BatchNorm/beta/AssignAssignFirstAMIN/conv8/BatchNorm/beta0FirstAMIN/conv8/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv8/BatchNorm/beta/readIdentityFirstAMIN/conv8/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv8/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv8/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv8/BatchNorm/gamma/AssignAssignFirstAMIN/conv8/BatchNorm/gamma1FirstAMIN/conv8/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv8/BatchNorm/gamma/readIdentityFirstAMIN/conv8/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv8/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv8/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv8/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv8/BatchNorm/moving_mean7FirstAMIN/conv8/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv8/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv8/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv8/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv8/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv8/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv8/BatchNorm/moving_variance;FirstAMIN/conv8/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv8/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv8/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/addAdd.FirstAMIN/conv8/BatchNorm/moving_variance/read=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/RsqrtRsqrt;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mulMul=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv8/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul_1Mul/Depth-Map-Block_fir/FirstAMIN/conv8/convolution;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv8/BatchNorm/moving_mean/read;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/subSub#FirstAMIN/conv8/BatchNorm/beta/read=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/add_1Add=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/mul_1;Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
'Depth-Map-Block_fir/FirstAMIN/conv8/EluElu=Depth-Map-Block_fir/FirstAMIN/conv8/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
8FirstAMIN/conv11/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv11/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv11/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv11/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv11/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv11/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv11/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv11/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv11/weights
�
6FirstAMIN/conv11/weights/Initializer/random_normal/mulMulGFirstAMIN/conv11/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv11/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv11/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv11/weights/Initializer/random_normalAdd6FirstAMIN/conv11/weights/Initializer/random_normal/mul7FirstAMIN/conv11/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv11/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv11/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv11/weights*
shared_name 
�
FirstAMIN/conv11/weights/AssignAssignFirstAMIN/conv11/weights2FirstAMIN/conv11/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv11/weights/readIdentityFirstAMIN/conv11/weights*+
_class!
loc:@FirstAMIN/conv11/weights*
T0*&
_output_shapes
:
{
"FirstAMIN/conv11/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
{
*FirstAMIN/conv11/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
FirstAMIN/conv11/convolutionConv2D'Depth-Map-Block_fir/FirstAMIN/conv8/EluFirstAMIN/conv11/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
J
mul/xConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
`
mulMulmul/xFirstAMIN/conv11/convolution*
T0*&
_output_shapes
:  
Q
CastCastmul*

DstT0*

SrcT0*&
_output_shapes
:  
Y
ZeroOneMap/tagConst*
dtype0*
valueB B
ZeroOneMap*
_output_shapes
: 
�

ZeroOneMapImageSummaryZeroOneMap/tagCast*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
g
Score-Map-Block09/sizeConst*
dtype0*
valueB"      *
_output_shapes
:
�
 Score-Map-Block09/ResizeBilinearResizeBilinearconcat_3Score-Map-Block09/size*
align_corners( *
T0*(
_output_shapes
:��<
�
7FirstAMIN/conv9/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@FirstAMIN/conv9/weights*%
valueB"      <      *
_output_shapes
:
�
6FirstAMIN/conv9/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@FirstAMIN/conv9/weights*
valueB
 *    *
_output_shapes
: 
�
8FirstAMIN/conv9/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@FirstAMIN/conv9/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FFirstAMIN/conv9/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7FirstAMIN/conv9/weights/Initializer/random_normal/shape*&
_output_shapes
:<*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@FirstAMIN/conv9/weights
�
5FirstAMIN/conv9/weights/Initializer/random_normal/mulMulFFirstAMIN/conv9/weights/Initializer/random_normal/RandomStandardNormal8FirstAMIN/conv9/weights/Initializer/random_normal/stddev**
_class 
loc:@FirstAMIN/conv9/weights*
T0*&
_output_shapes
:<
�
1FirstAMIN/conv9/weights/Initializer/random_normalAdd5FirstAMIN/conv9/weights/Initializer/random_normal/mul6FirstAMIN/conv9/weights/Initializer/random_normal/mean**
_class 
loc:@FirstAMIN/conv9/weights*
T0*&
_output_shapes
:<
�
FirstAMIN/conv9/weights
VariableV2*
	container *&
_output_shapes
:<*
dtype0*
shape:<**
_class 
loc:@FirstAMIN/conv9/weights*
shared_name 
�
FirstAMIN/conv9/weights/AssignAssignFirstAMIN/conv9/weights1FirstAMIN/conv9/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@FirstAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:<
�
FirstAMIN/conv9/weights/readIdentityFirstAMIN/conv9/weights**
_class 
loc:@FirstAMIN/conv9/weights*
T0*&
_output_shapes
:<
�
3Score-Map-Block09/FirstAMIN/conv9/convolution/ShapeConst*
dtype0*%
valueB"      <      *
_output_shapes
:
�
;Score-Map-Block09/FirstAMIN/conv9/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
-Score-Map-Block09/FirstAMIN/conv9/convolutionConv2D Score-Map-Block09/ResizeBilinearFirstAMIN/conv9/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0FirstAMIN/conv9/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv9/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
shared_name 
�
%FirstAMIN/conv9/BatchNorm/beta/AssignAssignFirstAMIN/conv9/BatchNorm/beta0FirstAMIN/conv9/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#FirstAMIN/conv9/BatchNorm/beta/readIdentityFirstAMIN/conv9/BatchNorm/beta*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
T0*
_output_shapes
:
�
1FirstAMIN/conv9/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
FirstAMIN/conv9/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
shared_name 
�
&FirstAMIN/conv9/BatchNorm/gamma/AssignAssignFirstAMIN/conv9/BatchNorm/gamma1FirstAMIN/conv9/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv9/BatchNorm/gamma/readIdentityFirstAMIN/conv9/BatchNorm/gamma*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
T0*
_output_shapes
:
�
7FirstAMIN/conv9/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%FirstAMIN/conv9/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
shared_name 
�
,FirstAMIN/conv9/BatchNorm/moving_mean/AssignAssign%FirstAMIN/conv9/BatchNorm/moving_mean7FirstAMIN/conv9/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*FirstAMIN/conv9/BatchNorm/moving_mean/readIdentity%FirstAMIN/conv9/BatchNorm/moving_mean*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;FirstAMIN/conv9/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)FirstAMIN/conv9/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
shared_name 
�
0FirstAMIN/conv9/BatchNorm/moving_variance/AssignAssign)FirstAMIN/conv9/BatchNorm/moving_variance;FirstAMIN/conv9/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.FirstAMIN/conv9/BatchNorm/moving_variance/readIdentity)FirstAMIN/conv9/BatchNorm/moving_variance*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/addAdd.FirstAMIN/conv9/BatchNorm/moving_variance/read;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/RsqrtRsqrt9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mulMul;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/Rsqrt$FirstAMIN/conv9/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul_1Mul-Score-Map-Block09/FirstAMIN/conv9/convolution9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul_2Mul*FirstAMIN/conv9/BatchNorm/moving_mean/read9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
9Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/subSub#FirstAMIN/conv9/BatchNorm/beta/read;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/add_1Add;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/mul_19Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
%Score-Map-Block09/FirstAMIN/conv9/EluElu;Score-Map-Block09/FirstAMIN/conv9/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv10/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv10/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv10/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv10/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv10/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv10/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv10/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv10/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv10/weights
�
6FirstAMIN/conv10/weights/Initializer/random_normal/mulMulGFirstAMIN/conv10/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv10/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv10/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv10/weights/Initializer/random_normalAdd6FirstAMIN/conv10/weights/Initializer/random_normal/mul7FirstAMIN/conv10/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv10/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv10/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv10/weights*
shared_name 
�
FirstAMIN/conv10/weights/AssignAssignFirstAMIN/conv10/weights2FirstAMIN/conv10/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv10/weights/readIdentityFirstAMIN/conv10/weights*+
_class!
loc:@FirstAMIN/conv10/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv10/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv10/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv10/convolutionConv2D%Score-Map-Block09/FirstAMIN/conv9/EluFirstAMIN/conv10/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv10/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv10/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv10/BatchNorm/beta/AssignAssignFirstAMIN/conv10/BatchNorm/beta1FirstAMIN/conv10/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv10/BatchNorm/beta/readIdentityFirstAMIN/conv10/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv10/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv10/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv10/BatchNorm/gamma/AssignAssign FirstAMIN/conv10/BatchNorm/gamma2FirstAMIN/conv10/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv10/BatchNorm/gamma/readIdentity FirstAMIN/conv10/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv10/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv10/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv10/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv10/BatchNorm/moving_mean8FirstAMIN/conv10/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv10/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv10/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv10/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv10/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv10/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv10/BatchNorm/moving_variance<FirstAMIN/conv10/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv10/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv10/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/addAdd/FirstAMIN/conv10/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv10/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv10/convolution:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv10/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/subSub$FirstAMIN/conv10/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv10/EluElu<Score-Map-Block09/FirstAMIN/conv10/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv12/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv12/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv12/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv12/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv12/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv12/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv12/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv12/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv12/weights
�
6FirstAMIN/conv12/weights/Initializer/random_normal/mulMulGFirstAMIN/conv12/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv12/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv12/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv12/weights/Initializer/random_normalAdd6FirstAMIN/conv12/weights/Initializer/random_normal/mul7FirstAMIN/conv12/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv12/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv12/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv12/weights*
shared_name 
�
FirstAMIN/conv12/weights/AssignAssignFirstAMIN/conv12/weights2FirstAMIN/conv12/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv12/weights/readIdentityFirstAMIN/conv12/weights*+
_class!
loc:@FirstAMIN/conv12/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv12/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv12/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv12/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv10/EluFirstAMIN/conv12/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv12/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv12/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv12/BatchNorm/beta/AssignAssignFirstAMIN/conv12/BatchNorm/beta1FirstAMIN/conv12/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv12/BatchNorm/beta/readIdentityFirstAMIN/conv12/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv12/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv12/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv12/BatchNorm/gamma/AssignAssign FirstAMIN/conv12/BatchNorm/gamma2FirstAMIN/conv12/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv12/BatchNorm/gamma/readIdentity FirstAMIN/conv12/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv12/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv12/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv12/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv12/BatchNorm/moving_mean8FirstAMIN/conv12/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv12/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv12/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv12/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv12/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv12/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv12/BatchNorm/moving_variance<FirstAMIN/conv12/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv12/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv12/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/addAdd/FirstAMIN/conv12/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv12/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv12/convolution:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv12/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/subSub$FirstAMIN/conv12/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv12/EluElu<Score-Map-Block09/FirstAMIN/conv12/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv13/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv13/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv13/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv13/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv13/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv13/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv13/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv13/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv13/weights
�
6FirstAMIN/conv13/weights/Initializer/random_normal/mulMulGFirstAMIN/conv13/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv13/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv13/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv13/weights/Initializer/random_normalAdd6FirstAMIN/conv13/weights/Initializer/random_normal/mul7FirstAMIN/conv13/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv13/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv13/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv13/weights*
shared_name 
�
FirstAMIN/conv13/weights/AssignAssignFirstAMIN/conv13/weights2FirstAMIN/conv13/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv13/weights/readIdentityFirstAMIN/conv13/weights*+
_class!
loc:@FirstAMIN/conv13/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv13/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv13/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv13/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv12/EluFirstAMIN/conv13/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv13/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv13/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv13/BatchNorm/beta/AssignAssignFirstAMIN/conv13/BatchNorm/beta1FirstAMIN/conv13/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv13/BatchNorm/beta/readIdentityFirstAMIN/conv13/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv13/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv13/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv13/BatchNorm/gamma/AssignAssign FirstAMIN/conv13/BatchNorm/gamma2FirstAMIN/conv13/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv13/BatchNorm/gamma/readIdentity FirstAMIN/conv13/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv13/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv13/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv13/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv13/BatchNorm/moving_mean8FirstAMIN/conv13/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv13/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv13/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv13/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv13/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv13/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv13/BatchNorm/moving_variance<FirstAMIN/conv13/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv13/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv13/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/addAdd/FirstAMIN/conv13/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv13/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv13/convolution:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv13/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/subSub$FirstAMIN/conv13/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv13/EluElu<Score-Map-Block09/FirstAMIN/conv13/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv14/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv14/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv14/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv14/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv14/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv14/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv14/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv14/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv14/weights
�
6FirstAMIN/conv14/weights/Initializer/random_normal/mulMulGFirstAMIN/conv14/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv14/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv14/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv14/weights/Initializer/random_normalAdd6FirstAMIN/conv14/weights/Initializer/random_normal/mul7FirstAMIN/conv14/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv14/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv14/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv14/weights*
shared_name 
�
FirstAMIN/conv14/weights/AssignAssignFirstAMIN/conv14/weights2FirstAMIN/conv14/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv14/weights/readIdentityFirstAMIN/conv14/weights*+
_class!
loc:@FirstAMIN/conv14/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv14/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv14/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv14/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv13/EluFirstAMIN/conv14/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv14/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv14/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv14/BatchNorm/beta/AssignAssignFirstAMIN/conv14/BatchNorm/beta1FirstAMIN/conv14/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv14/BatchNorm/beta/readIdentityFirstAMIN/conv14/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv14/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv14/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv14/BatchNorm/gamma/AssignAssign FirstAMIN/conv14/BatchNorm/gamma2FirstAMIN/conv14/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv14/BatchNorm/gamma/readIdentity FirstAMIN/conv14/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv14/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv14/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv14/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv14/BatchNorm/moving_mean8FirstAMIN/conv14/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv14/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv14/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv14/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv14/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv14/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv14/BatchNorm/moving_variance<FirstAMIN/conv14/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv14/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv14/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/addAdd/FirstAMIN/conv14/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv14/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv14/convolution:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv14/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/subSub$FirstAMIN/conv14/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv14/EluElu<Score-Map-Block09/FirstAMIN/conv14/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv15/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv15/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv15/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv15/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv15/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv15/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv15/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv15/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv15/weights
�
6FirstAMIN/conv15/weights/Initializer/random_normal/mulMulGFirstAMIN/conv15/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv15/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv15/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv15/weights/Initializer/random_normalAdd6FirstAMIN/conv15/weights/Initializer/random_normal/mul7FirstAMIN/conv15/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv15/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv15/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv15/weights*
shared_name 
�
FirstAMIN/conv15/weights/AssignAssignFirstAMIN/conv15/weights2FirstAMIN/conv15/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv15/weights/readIdentityFirstAMIN/conv15/weights*+
_class!
loc:@FirstAMIN/conv15/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv15/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv15/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv15/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv14/EluFirstAMIN/conv15/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv15/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv15/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv15/BatchNorm/beta/AssignAssignFirstAMIN/conv15/BatchNorm/beta1FirstAMIN/conv15/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv15/BatchNorm/beta/readIdentityFirstAMIN/conv15/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv15/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv15/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv15/BatchNorm/gamma/AssignAssign FirstAMIN/conv15/BatchNorm/gamma2FirstAMIN/conv15/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv15/BatchNorm/gamma/readIdentity FirstAMIN/conv15/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv15/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv15/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv15/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv15/BatchNorm/moving_mean8FirstAMIN/conv15/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv15/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv15/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv15/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv15/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv15/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv15/BatchNorm/moving_variance<FirstAMIN/conv15/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv15/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv15/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/addAdd/FirstAMIN/conv15/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv15/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv15/convolution:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv15/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/subSub$FirstAMIN/conv15/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv15/EluElu<Score-Map-Block09/FirstAMIN/conv15/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv16/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv16/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv16/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv16/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv16/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv16/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GFirstAMIN/conv16/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv16/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv16/weights
�
6FirstAMIN/conv16/weights/Initializer/random_normal/mulMulGFirstAMIN/conv16/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv16/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv16/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv16/weights/Initializer/random_normalAdd6FirstAMIN/conv16/weights/Initializer/random_normal/mul7FirstAMIN/conv16/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv16/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv16/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv16/weights*
shared_name 
�
FirstAMIN/conv16/weights/AssignAssignFirstAMIN/conv16/weights2FirstAMIN/conv16/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv16/weights/readIdentityFirstAMIN/conv16/weights*+
_class!
loc:@FirstAMIN/conv16/weights*
T0*&
_output_shapes
:
�
4Score-Map-Block09/FirstAMIN/conv16/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv16/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
.Score-Map-Block09/FirstAMIN/conv16/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv15/EluFirstAMIN/conv16/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1FirstAMIN/conv16/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
FirstAMIN/conv16/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
shared_name 
�
&FirstAMIN/conv16/BatchNorm/beta/AssignAssignFirstAMIN/conv16/BatchNorm/beta1FirstAMIN/conv16/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$FirstAMIN/conv16/BatchNorm/beta/readIdentityFirstAMIN/conv16/BatchNorm/beta*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
T0*
_output_shapes
:
�
2FirstAMIN/conv16/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 FirstAMIN/conv16/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
shared_name 
�
'FirstAMIN/conv16/BatchNorm/gamma/AssignAssign FirstAMIN/conv16/BatchNorm/gamma2FirstAMIN/conv16/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%FirstAMIN/conv16/BatchNorm/gamma/readIdentity FirstAMIN/conv16/BatchNorm/gamma*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
T0*
_output_shapes
:
�
8FirstAMIN/conv16/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&FirstAMIN/conv16/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
shared_name 
�
-FirstAMIN/conv16/BatchNorm/moving_mean/AssignAssign&FirstAMIN/conv16/BatchNorm/moving_mean8FirstAMIN/conv16/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+FirstAMIN/conv16/BatchNorm/moving_mean/readIdentity&FirstAMIN/conv16/BatchNorm/moving_mean*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<FirstAMIN/conv16/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*FirstAMIN/conv16/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
shared_name 
�
1FirstAMIN/conv16/BatchNorm/moving_variance/AssignAssign*FirstAMIN/conv16/BatchNorm/moving_variance<FirstAMIN/conv16/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/FirstAMIN/conv16/BatchNorm/moving_variance/readIdentity*FirstAMIN/conv16/BatchNorm/moving_variance*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/addAdd/FirstAMIN/conv16/BatchNorm/moving_variance/read<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/RsqrtRsqrt:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mulMul<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/Rsqrt%FirstAMIN/conv16/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul_1Mul.Score-Map-Block09/FirstAMIN/conv16/convolution:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul_2Mul+FirstAMIN/conv16/BatchNorm/moving_mean/read:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/subSub$FirstAMIN/conv16/BatchNorm/beta/read<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/add_1Add<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/mul_1:Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
&Score-Map-Block09/FirstAMIN/conv16/EluElu<Score-Map-Block09/FirstAMIN/conv16/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8FirstAMIN/conv17/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@FirstAMIN/conv17/weights*%
valueB"            *
_output_shapes
:
�
7FirstAMIN/conv17/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@FirstAMIN/conv17/weights*
valueB
 *    *
_output_shapes
: 
�
9FirstAMIN/conv17/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@FirstAMIN/conv17/weights*
valueB
 *o;*
_output_shapes
: 
�
GFirstAMIN/conv17/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8FirstAMIN/conv17/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@FirstAMIN/conv17/weights
�
6FirstAMIN/conv17/weights/Initializer/random_normal/mulMulGFirstAMIN/conv17/weights/Initializer/random_normal/RandomStandardNormal9FirstAMIN/conv17/weights/Initializer/random_normal/stddev*+
_class!
loc:@FirstAMIN/conv17/weights*
T0*&
_output_shapes
:
�
2FirstAMIN/conv17/weights/Initializer/random_normalAdd6FirstAMIN/conv17/weights/Initializer/random_normal/mul7FirstAMIN/conv17/weights/Initializer/random_normal/mean*+
_class!
loc:@FirstAMIN/conv17/weights*
T0*&
_output_shapes
:
�
FirstAMIN/conv17/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@FirstAMIN/conv17/weights*
shared_name 
�
FirstAMIN/conv17/weights/AssignAssignFirstAMIN/conv17/weights2FirstAMIN/conv17/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@FirstAMIN/conv17/weights*
use_locking(*
T0*&
_output_shapes
:
�
FirstAMIN/conv17/weights/readIdentityFirstAMIN/conv17/weights*+
_class!
loc:@FirstAMIN/conv17/weights*
T0*&
_output_shapes
:
{
"FirstAMIN/conv17/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
{
*FirstAMIN/conv17/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
FirstAMIN/conv17/convolutionConv2D&Score-Map-Block09/FirstAMIN/conv16/EluFirstAMIN/conv17/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
h

zeros_like	ZerosLikeFirstAMIN/conv17/convolution*
T0*(
_output_shapes
:��
{
ComplexComplexFirstAMIN/conv17/convolution
zeros_like*

Tout0*
T0*(
_output_shapes
:��
g
transpose/permConst*
dtype0*%
valueB"             *
_output_shapes
:
o
	transpose	TransposeComplextranspose/perm*
Tperm0*
T0*(
_output_shapes
:��
O
summap_fft_real_1FFT2D	transpose*(
_output_shapes
:��
c
Abs
ComplexAbssummap_fft_real_1*

Tout0*
T0*(
_output_shapes
:��
i
transpose_1/permConst*
dtype0*%
valueB"             *
_output_shapes
:
o
transpose_1	TransposeAbstranspose_1/perm*
Tperm0*
T0*(
_output_shapes
:��
l
strided_slice/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
n
strided_slice/stack_1Const*
dtype0*%
valueB"    �   �       *
_output_shapes
:
n
strided_slice/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_sliceStridedSlicetranspose_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
new_axis_mask *
Index0*(
_output_shapes
:��*

begin_mask	*
ellipsis_mask *
end_mask	*
T0*
shrink_axis_mask 
P
Log1pLog1pstrided_slice*
T0*(
_output_shapes
:��
P
truediv_1/yConst*
dtype0*
valueB
 *  4B*
_output_shapes
: 
r
	truediv_1RealDivFirstAMIN/conv17/convolutiontruediv_1/y*
T0*(
_output_shapes
:��
O
subSubstack	truediv_1*
T0*(
_output_shapes
:��
N
	Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
U
GreaterGreatersub	Greater/y*
T0*(
_output_shapes
:��
Y
Cast_1CastGreater*

DstT0*

SrcT0
*(
_output_shapes
:��
L
mul_1MulsubCast_1*
T0*(
_output_shapes
:��
�
7ThirdAMIN/conv9/weights/Initializer/random_normal/shapeConst*
dtype0**
_class 
loc:@ThirdAMIN/conv9/weights*%
valueB"            *
_output_shapes
:
�
6ThirdAMIN/conv9/weights/Initializer/random_normal/meanConst*
dtype0**
_class 
loc:@ThirdAMIN/conv9/weights*
valueB
 *    *
_output_shapes
: 
�
8ThirdAMIN/conv9/weights/Initializer/random_normal/stddevConst*
dtype0**
_class 
loc:@ThirdAMIN/conv9/weights*
valueB
 *
ף<*
_output_shapes
: 
�
FThirdAMIN/conv9/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal7ThirdAMIN/conv9/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0**
_class 
loc:@ThirdAMIN/conv9/weights
�
5ThirdAMIN/conv9/weights/Initializer/random_normal/mulMulFThirdAMIN/conv9/weights/Initializer/random_normal/RandomStandardNormal8ThirdAMIN/conv9/weights/Initializer/random_normal/stddev**
_class 
loc:@ThirdAMIN/conv9/weights*
T0*&
_output_shapes
:
�
1ThirdAMIN/conv9/weights/Initializer/random_normalAdd5ThirdAMIN/conv9/weights/Initializer/random_normal/mul6ThirdAMIN/conv9/weights/Initializer/random_normal/mean**
_class 
loc:@ThirdAMIN/conv9/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv9/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:**
_class 
loc:@ThirdAMIN/conv9/weights*
shared_name 
�
ThirdAMIN/conv9/weights/AssignAssignThirdAMIN/conv9/weights1ThirdAMIN/conv9/weights/Initializer/random_normal*
validate_shape(**
_class 
loc:@ThirdAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv9/weights/readIdentityThirdAMIN/conv9/weights**
_class 
loc:@ThirdAMIN/conv9/weights*
T0*&
_output_shapes
:
�
6Score-Map-Block1_dis/ThirdAMIN/conv9/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
0Score-Map-Block1_dis/ThirdAMIN/conv9/convolutionConv2Dmul_1ThirdAMIN/conv9/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
0ThirdAMIN/conv9/BatchNorm/beta/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv9/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
shared_name 
�
%ThirdAMIN/conv9/BatchNorm/beta/AssignAssignThirdAMIN/conv9/BatchNorm/beta0ThirdAMIN/conv9/BatchNorm/beta/Initializer/Const*
validate_shape(*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
#ThirdAMIN/conv9/BatchNorm/beta/readIdentityThirdAMIN/conv9/BatchNorm/beta*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
T0*
_output_shapes
:
�
1ThirdAMIN/conv9/BatchNorm/gamma/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
ThirdAMIN/conv9/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
shared_name 
�
&ThirdAMIN/conv9/BatchNorm/gamma/AssignAssignThirdAMIN/conv9/BatchNorm/gamma1ThirdAMIN/conv9/BatchNorm/gamma/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv9/BatchNorm/gamma/readIdentityThirdAMIN/conv9/BatchNorm/gamma*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
T0*
_output_shapes
:
�
7ThirdAMIN/conv9/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
%ThirdAMIN/conv9/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
shared_name 
�
,ThirdAMIN/conv9/BatchNorm/moving_mean/AssignAssign%ThirdAMIN/conv9/BatchNorm/moving_mean7ThirdAMIN/conv9/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
*ThirdAMIN/conv9/BatchNorm/moving_mean/readIdentity%ThirdAMIN/conv9/BatchNorm/moving_mean*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
;ThirdAMIN/conv9/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
)ThirdAMIN/conv9/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
shared_name 
�
0ThirdAMIN/conv9/BatchNorm/moving_variance/AssignAssign)ThirdAMIN/conv9/BatchNorm/moving_variance;ThirdAMIN/conv9/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
.ThirdAMIN/conv9/BatchNorm/moving_variance/readIdentity)ThirdAMIN/conv9/BatchNorm/moving_variance*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/addAdd.ThirdAMIN/conv9/BatchNorm/moving_variance/read>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/RsqrtRsqrt<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mulMul>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/Rsqrt$ThirdAMIN/conv9/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul_1Mul0Score-Map-Block1_dis/ThirdAMIN/conv9/convolution<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul_2Mul*ThirdAMIN/conv9/BatchNorm/moving_mean/read<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/subSub#ThirdAMIN/conv9/BatchNorm/beta/read>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/add_1Add>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/mul_1<Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
(Score-Map-Block1_dis/ThirdAMIN/conv9/EluElu>Score-Map-Block1_dis/ThirdAMIN/conv9/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8ThirdAMIN/conv10/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv10/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv10/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv10/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv10/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv10/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv10/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv10/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv10/weights
�
6ThirdAMIN/conv10/weights/Initializer/random_normal/mulMulGThirdAMIN/conv10/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv10/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv10/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv10/weights/Initializer/random_normalAdd6ThirdAMIN/conv10/weights/Initializer/random_normal/mul7ThirdAMIN/conv10/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv10/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv10/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv10/weights*
shared_name 
�
ThirdAMIN/conv10/weights/AssignAssignThirdAMIN/conv10/weights2ThirdAMIN/conv10/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv10/weights/readIdentityThirdAMIN/conv10/weights*+
_class!
loc:@ThirdAMIN/conv10/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv10/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv10/convolutionConv2D(Score-Map-Block1_dis/ThirdAMIN/conv9/EluThirdAMIN/conv10/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv10/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv10/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv10/BatchNorm/beta/AssignAssignThirdAMIN/conv10/BatchNorm/beta1ThirdAMIN/conv10/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv10/BatchNorm/beta/readIdentityThirdAMIN/conv10/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv10/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv10/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv10/BatchNorm/gamma/AssignAssign ThirdAMIN/conv10/BatchNorm/gamma2ThirdAMIN/conv10/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv10/BatchNorm/gamma/readIdentity ThirdAMIN/conv10/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv10/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv10/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv10/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv10/BatchNorm/moving_mean8ThirdAMIN/conv10/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv10/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv10/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv10/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv10/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv10/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv10/BatchNorm/moving_variance<ThirdAMIN/conv10/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv10/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv10/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv10/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv10/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv10/convolution=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv10/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/subSub$ThirdAMIN/conv10/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
)Score-Map-Block1_dis/ThirdAMIN/conv10/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv10/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
'Score-Map-Block1_dis/ThirdPool1/MaxPoolMaxPool)Score-Map-Block1_dis/ThirdAMIN/conv10/Elu*(
_output_shapes
:��*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8ThirdAMIN/conv12/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv12/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv12/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv12/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv12/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv12/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv12/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv12/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv12/weights
�
6ThirdAMIN/conv12/weights/Initializer/random_normal/mulMulGThirdAMIN/conv12/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv12/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv12/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv12/weights/Initializer/random_normalAdd6ThirdAMIN/conv12/weights/Initializer/random_normal/mul7ThirdAMIN/conv12/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv12/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv12/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv12/weights*
shared_name 
�
ThirdAMIN/conv12/weights/AssignAssignThirdAMIN/conv12/weights2ThirdAMIN/conv12/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv12/weights/readIdentityThirdAMIN/conv12/weights*+
_class!
loc:@ThirdAMIN/conv12/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv12/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv12/convolutionConv2D'Score-Map-Block1_dis/ThirdPool1/MaxPoolThirdAMIN/conv12/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv12/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv12/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv12/BatchNorm/beta/AssignAssignThirdAMIN/conv12/BatchNorm/beta1ThirdAMIN/conv12/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv12/BatchNorm/beta/readIdentityThirdAMIN/conv12/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv12/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv12/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv12/BatchNorm/gamma/AssignAssign ThirdAMIN/conv12/BatchNorm/gamma2ThirdAMIN/conv12/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv12/BatchNorm/gamma/readIdentity ThirdAMIN/conv12/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv12/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv12/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv12/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv12/BatchNorm/moving_mean8ThirdAMIN/conv12/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv12/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv12/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv12/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv12/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv12/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv12/BatchNorm/moving_variance<ThirdAMIN/conv12/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv12/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv12/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv12/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv12/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv12/convolution=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv12/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/subSub$ThirdAMIN/conv12/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
)Score-Map-Block1_dis/ThirdAMIN/conv12/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv12/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
8ThirdAMIN/conv13/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv13/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv13/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv13/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv13/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv13/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv13/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv13/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv13/weights
�
6ThirdAMIN/conv13/weights/Initializer/random_normal/mulMulGThirdAMIN/conv13/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv13/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv13/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv13/weights/Initializer/random_normalAdd6ThirdAMIN/conv13/weights/Initializer/random_normal/mul7ThirdAMIN/conv13/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv13/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv13/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv13/weights*
shared_name 
�
ThirdAMIN/conv13/weights/AssignAssignThirdAMIN/conv13/weights2ThirdAMIN/conv13/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv13/weights/readIdentityThirdAMIN/conv13/weights*+
_class!
loc:@ThirdAMIN/conv13/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv13/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv13/convolutionConv2D)Score-Map-Block1_dis/ThirdAMIN/conv12/EluThirdAMIN/conv13/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv13/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv13/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv13/BatchNorm/beta/AssignAssignThirdAMIN/conv13/BatchNorm/beta1ThirdAMIN/conv13/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv13/BatchNorm/beta/readIdentityThirdAMIN/conv13/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv13/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv13/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv13/BatchNorm/gamma/AssignAssign ThirdAMIN/conv13/BatchNorm/gamma2ThirdAMIN/conv13/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv13/BatchNorm/gamma/readIdentity ThirdAMIN/conv13/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv13/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv13/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv13/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv13/BatchNorm/moving_mean8ThirdAMIN/conv13/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv13/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv13/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv13/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv13/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv13/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv13/BatchNorm/moving_variance<ThirdAMIN/conv13/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv13/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv13/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv13/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv13/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv13/convolution=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv13/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/subSub$ThirdAMIN/conv13/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
)Score-Map-Block1_dis/ThirdAMIN/conv13/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv13/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
'Score-Map-Block1_dis/ThirdPool2/MaxPoolMaxPool)Score-Map-Block1_dis/ThirdAMIN/conv13/Elu*&
_output_shapes
:@@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8ThirdAMIN/conv14/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv14/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv14/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv14/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv14/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv14/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv14/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv14/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv14/weights
�
6ThirdAMIN/conv14/weights/Initializer/random_normal/mulMulGThirdAMIN/conv14/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv14/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv14/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv14/weights/Initializer/random_normalAdd6ThirdAMIN/conv14/weights/Initializer/random_normal/mul7ThirdAMIN/conv14/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv14/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv14/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv14/weights*
shared_name 
�
ThirdAMIN/conv14/weights/AssignAssignThirdAMIN/conv14/weights2ThirdAMIN/conv14/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv14/weights/readIdentityThirdAMIN/conv14/weights*+
_class!
loc:@ThirdAMIN/conv14/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv14/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv14/convolutionConv2D'Score-Map-Block1_dis/ThirdPool2/MaxPoolThirdAMIN/conv14/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv14/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv14/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv14/BatchNorm/beta/AssignAssignThirdAMIN/conv14/BatchNorm/beta1ThirdAMIN/conv14/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv14/BatchNorm/beta/readIdentityThirdAMIN/conv14/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv14/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv14/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv14/BatchNorm/gamma/AssignAssign ThirdAMIN/conv14/BatchNorm/gamma2ThirdAMIN/conv14/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv14/BatchNorm/gamma/readIdentity ThirdAMIN/conv14/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv14/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv14/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv14/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv14/BatchNorm/moving_mean8ThirdAMIN/conv14/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv14/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv14/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv14/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv14/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv14/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv14/BatchNorm/moving_variance<ThirdAMIN/conv14/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv14/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv14/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv14/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv14/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv14/convolution=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv14/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/subSub$ThirdAMIN/conv14/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
)Score-Map-Block1_dis/ThirdAMIN/conv14/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv14/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
8ThirdAMIN/conv15/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv15/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv15/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv15/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv15/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv15/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv15/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv15/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv15/weights
�
6ThirdAMIN/conv15/weights/Initializer/random_normal/mulMulGThirdAMIN/conv15/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv15/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv15/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv15/weights/Initializer/random_normalAdd6ThirdAMIN/conv15/weights/Initializer/random_normal/mul7ThirdAMIN/conv15/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv15/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv15/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv15/weights*
shared_name 
�
ThirdAMIN/conv15/weights/AssignAssignThirdAMIN/conv15/weights2ThirdAMIN/conv15/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv15/weights/readIdentityThirdAMIN/conv15/weights*+
_class!
loc:@ThirdAMIN/conv15/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv15/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv15/convolutionConv2D)Score-Map-Block1_dis/ThirdAMIN/conv14/EluThirdAMIN/conv15/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv15/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv15/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv15/BatchNorm/beta/AssignAssignThirdAMIN/conv15/BatchNorm/beta1ThirdAMIN/conv15/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv15/BatchNorm/beta/readIdentityThirdAMIN/conv15/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv15/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv15/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv15/BatchNorm/gamma/AssignAssign ThirdAMIN/conv15/BatchNorm/gamma2ThirdAMIN/conv15/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv15/BatchNorm/gamma/readIdentity ThirdAMIN/conv15/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv15/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv15/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv15/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv15/BatchNorm/moving_mean8ThirdAMIN/conv15/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv15/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv15/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv15/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv15/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv15/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv15/BatchNorm/moving_variance<ThirdAMIN/conv15/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv15/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv15/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv15/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv15/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv15/convolution=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv15/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/subSub$ThirdAMIN/conv15/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
)Score-Map-Block1_dis/ThirdAMIN/conv15/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv15/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
'Score-Map-Block1_dis/ThirdPool3/MaxPoolMaxPool)Score-Map-Block1_dis/ThirdAMIN/conv15/Elu*&
_output_shapes
:  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
8ThirdAMIN/conv16/weights/Initializer/random_normal/shapeConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv16/weights*%
valueB"            *
_output_shapes
:
�
7ThirdAMIN/conv16/weights/Initializer/random_normal/meanConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv16/weights*
valueB
 *    *
_output_shapes
: 
�
9ThirdAMIN/conv16/weights/Initializer/random_normal/stddevConst*
dtype0*+
_class!
loc:@ThirdAMIN/conv16/weights*
valueB
 *
ף<*
_output_shapes
: 
�
GThirdAMIN/conv16/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal8ThirdAMIN/conv16/weights/Initializer/random_normal/shape*&
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@ThirdAMIN/conv16/weights
�
6ThirdAMIN/conv16/weights/Initializer/random_normal/mulMulGThirdAMIN/conv16/weights/Initializer/random_normal/RandomStandardNormal9ThirdAMIN/conv16/weights/Initializer/random_normal/stddev*+
_class!
loc:@ThirdAMIN/conv16/weights*
T0*&
_output_shapes
:
�
2ThirdAMIN/conv16/weights/Initializer/random_normalAdd6ThirdAMIN/conv16/weights/Initializer/random_normal/mul7ThirdAMIN/conv16/weights/Initializer/random_normal/mean*+
_class!
loc:@ThirdAMIN/conv16/weights*
T0*&
_output_shapes
:
�
ThirdAMIN/conv16/weights
VariableV2*
	container *&
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@ThirdAMIN/conv16/weights*
shared_name 
�
ThirdAMIN/conv16/weights/AssignAssignThirdAMIN/conv16/weights2ThirdAMIN/conv16/weights/Initializer/random_normal*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
ThirdAMIN/conv16/weights/readIdentityThirdAMIN/conv16/weights*+
_class!
loc:@ThirdAMIN/conv16/weights*
T0*&
_output_shapes
:
�
7Score-Map-Block1_dis/ThirdAMIN/conv16/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
1Score-Map-Block1_dis/ThirdAMIN/conv16/convolutionConv2D'Score-Map-Block1_dis/ThirdPool3/MaxPoolThirdAMIN/conv16/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
1ThirdAMIN/conv16/BatchNorm/beta/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
valueB*    *
_output_shapes
:
�
ThirdAMIN/conv16/BatchNorm/beta
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
shared_name 
�
&ThirdAMIN/conv16/BatchNorm/beta/AssignAssignThirdAMIN/conv16/BatchNorm/beta1ThirdAMIN/conv16/BatchNorm/beta/Initializer/Const*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
$ThirdAMIN/conv16/BatchNorm/beta/readIdentityThirdAMIN/conv16/BatchNorm/beta*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
T0*
_output_shapes
:
�
2ThirdAMIN/conv16/BatchNorm/gamma/Initializer/ConstConst*
dtype0*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
valueB*  �?*
_output_shapes
:
�
 ThirdAMIN/conv16/BatchNorm/gamma
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
shared_name 
�
'ThirdAMIN/conv16/BatchNorm/gamma/AssignAssign ThirdAMIN/conv16/BatchNorm/gamma2ThirdAMIN/conv16/BatchNorm/gamma/Initializer/Const*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
%ThirdAMIN/conv16/BatchNorm/gamma/readIdentity ThirdAMIN/conv16/BatchNorm/gamma*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
T0*
_output_shapes
:
�
8ThirdAMIN/conv16/BatchNorm/moving_mean/Initializer/ConstConst*
dtype0*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
valueB*    *
_output_shapes
:
�
&ThirdAMIN/conv16/BatchNorm/moving_mean
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
shared_name 
�
-ThirdAMIN/conv16/BatchNorm/moving_mean/AssignAssign&ThirdAMIN/conv16/BatchNorm/moving_mean8ThirdAMIN/conv16/BatchNorm/moving_mean/Initializer/Const*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
+ThirdAMIN/conv16/BatchNorm/moving_mean/readIdentity&ThirdAMIN/conv16/BatchNorm/moving_mean*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
T0*
_output_shapes
:
�
<ThirdAMIN/conv16/BatchNorm/moving_variance/Initializer/ConstConst*
dtype0*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
valueB*  �?*
_output_shapes
:
�
*ThirdAMIN/conv16/BatchNorm/moving_variance
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
shared_name 
�
1ThirdAMIN/conv16/BatchNorm/moving_variance/AssignAssign*ThirdAMIN/conv16/BatchNorm/moving_variance<ThirdAMIN/conv16/BatchNorm/moving_variance/Initializer/Const*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
/ThirdAMIN/conv16/BatchNorm/moving_variance/readIdentity*ThirdAMIN/conv16/BatchNorm/moving_variance*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv16/BatchNorm/moving_variance/read?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/RsqrtRsqrt=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mulMul?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv16/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul_1Mul1Score-Map-Block1_dis/ThirdAMIN/conv16/convolution=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv16/BatchNorm/moving_mean/read=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/subSub$ThirdAMIN/conv16/BatchNorm/beta/read?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/add_1Add?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/mul_1=Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
)Score-Map-Block1_dis/ThirdAMIN/conv16/EluElu?Score-Map-Block1_dis/ThirdAMIN/conv16/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
s
"Score-Map-Block1_dis/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
�
Score-Map-Block1_dis/ReshapeReshape)Score-Map-Block1_dis/ThirdAMIN/conv16/Elu"Score-Map-Block1_dis/Reshape/shape*
_output_shapes
:	�*
Tshape0*
T0
�
DThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/shapeConst*
dtype0*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
valueB"   d   *
_output_shapes
:
�
BThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/minConst*
dtype0*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
valueB
 *����*
_output_shapes
: 
�
BThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/maxConst*
dtype0*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
valueB
 *���=*
_output_shapes
: 
�
LThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/RandomUniformRandomUniformDThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/shape*
_output_shapes
:	�d*
dtype0*
seed2 *

seed *
T0*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights
�
BThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/subSubBThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/maxBThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/min*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
T0*
_output_shapes
: 
�
BThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/mulMulLThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/RandomUniformBThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/sub*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
T0*
_output_shapes
:	�d
�
>ThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniformAddBThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/mulBThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform/min*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
T0*
_output_shapes
:	�d
�
#ThirdAMIN/bconv15_sc333_dis/weights
VariableV2*
	container *
_output_shapes
:	�d*
dtype0*
shape:	�d*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
shared_name 
�
*ThirdAMIN/bconv15_sc333_dis/weights/AssignAssign#ThirdAMIN/bconv15_sc333_dis/weights>ThirdAMIN/bconv15_sc333_dis/weights/Initializer/random_uniform*
validate_shape(*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
use_locking(*
T0*
_output_shapes
:	�d
�
(ThirdAMIN/bconv15_sc333_dis/weights/readIdentity#ThirdAMIN/bconv15_sc333_dis/weights*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
T0*
_output_shapes
:	�d
�
4ThirdAMIN/bconv15_sc333_dis/biases/Initializer/ConstConst*
dtype0*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
valueBd*    *
_output_shapes
:d
�
"ThirdAMIN/bconv15_sc333_dis/biases
VariableV2*
	container *
_output_shapes
:d*
dtype0*
shape:d*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
shared_name 
�
)ThirdAMIN/bconv15_sc333_dis/biases/AssignAssign"ThirdAMIN/bconv15_sc333_dis/biases4ThirdAMIN/bconv15_sc333_dis/biases/Initializer/Const*
validate_shape(*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
use_locking(*
T0*
_output_shapes
:d
�
'ThirdAMIN/bconv15_sc333_dis/biases/readIdentity"ThirdAMIN/bconv15_sc333_dis/biases*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
T0*
_output_shapes
:d
�
7Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/MatMulMatMulScore-Map-Block1_dis/Reshape(ThirdAMIN/bconv15_sc333_dis/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:d
�
8Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/BiasAddBiasAdd7Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/MatMul'ThirdAMIN/bconv15_sc333_dis/biases/read*
_output_shapes

:d*
data_formatNHWC*
T0
�
5Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/ReluRelu8Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/BiasAdd*
T0*
_output_shapes

:d
�
&Score-Map-Block1_dis/dropout3/IdentityIdentity5Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis/Relu*
T0*
_output_shapes

:d
�
<ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/shapeConst*
dtype0*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
valueB"d      *
_output_shapes
:
�
;ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/meanConst*
dtype0*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
valueB
 *    *
_output_shapes
: 
�
=ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/stddevConst*
dtype0*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
valueB
 *
ף<*
_output_shapes
: 
�
KThirdAMIN/bconv10_sc/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal<ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/shape*
_output_shapes

:d*
dtype0*
seed2 *

seed *
T0*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights
�
:ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/mulMulKThirdAMIN/bconv10_sc/weights/Initializer/random_normal/RandomStandardNormal=ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/stddev*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
T0*
_output_shapes

:d
�
6ThirdAMIN/bconv10_sc/weights/Initializer/random_normalAdd:ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/mul;ThirdAMIN/bconv10_sc/weights/Initializer/random_normal/mean*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
T0*
_output_shapes

:d
�
ThirdAMIN/bconv10_sc/weights
VariableV2*
	container *
_output_shapes

:d*
dtype0*
shape
:d*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
shared_name 
�
#ThirdAMIN/bconv10_sc/weights/AssignAssignThirdAMIN/bconv10_sc/weights6ThirdAMIN/bconv10_sc/weights/Initializer/random_normal*
validate_shape(*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
use_locking(*
T0*
_output_shapes

:d
�
!ThirdAMIN/bconv10_sc/weights/readIdentityThirdAMIN/bconv10_sc/weights*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
T0*
_output_shapes

:d
�
0Score-Map-Block1_dis/ThirdAMIN/bconv10_sc/MatMulMatMul&Score-Map-Block1_dis/dropout3/Identity!ThirdAMIN/bconv10_sc/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:
�
8Score-Map-Block1_dis/ThirdAMIN/conv9_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
2Score-Map-Block1_dis/ThirdAMIN/conv9_1/convolutionConv2DstackThirdAMIN/conv9/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/addAdd.ThirdAMIN/conv9/BatchNorm/moving_variance/read@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/RsqrtRsqrt>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mulMul@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/Rsqrt$ThirdAMIN/conv9/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul_1Mul2Score-Map-Block1_dis/ThirdAMIN/conv9_1/convolution>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul_2Mul*ThirdAMIN/conv9/BatchNorm/moving_mean/read>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/subSub#ThirdAMIN/conv9/BatchNorm/beta/read@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/add_1Add@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/mul_1>Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
*Score-Map-Block1_dis/ThirdAMIN/conv9_1/EluElu@Score-Map-Block1_dis/ThirdAMIN/conv9_1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
9Score-Map-Block1_dis/ThirdAMIN/conv10_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv10_1/convolutionConv2D*Score-Map-Block1_dis/ThirdAMIN/conv9_1/EluThirdAMIN/conv10/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv10/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv10/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv10_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv10/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv10/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
+Score-Map-Block1_dis/ThirdAMIN/conv10_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv10_1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
)Score-Map-Block1_dis/ThirdPool1_1/MaxPoolMaxPool+Score-Map-Block1_dis/ThirdAMIN/conv10_1/Elu*(
_output_shapes
:��*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
9Score-Map-Block1_dis/ThirdAMIN/conv12_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv12_1/convolutionConv2D)Score-Map-Block1_dis/ThirdPool1_1/MaxPoolThirdAMIN/conv12/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv12/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv12/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv12_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv12/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv12/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
+Score-Map-Block1_dis/ThirdAMIN/conv12_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv12_1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
9Score-Map-Block1_dis/ThirdAMIN/conv13_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv13_1/convolutionConv2D+Score-Map-Block1_dis/ThirdAMIN/conv12_1/EluThirdAMIN/conv13/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv13/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv13/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv13_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv13/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv13/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
+Score-Map-Block1_dis/ThirdAMIN/conv13_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv13_1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
)Score-Map-Block1_dis/ThirdPool2_1/MaxPoolMaxPool+Score-Map-Block1_dis/ThirdAMIN/conv13_1/Elu*&
_output_shapes
:@@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
9Score-Map-Block1_dis/ThirdAMIN/conv14_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv14_1/convolutionConv2D)Score-Map-Block1_dis/ThirdPool2_1/MaxPoolThirdAMIN/conv14/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv14/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv14/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv14_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv14/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv14/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
+Score-Map-Block1_dis/ThirdAMIN/conv14_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv14_1/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
9Score-Map-Block1_dis/ThirdAMIN/conv15_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv15_1/convolutionConv2D+Score-Map-Block1_dis/ThirdAMIN/conv14_1/EluThirdAMIN/conv15/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv15/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv15/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv15_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv15/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv15/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
+Score-Map-Block1_dis/ThirdAMIN/conv15_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv15_1/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
)Score-Map-Block1_dis/ThirdPool3_1/MaxPoolMaxPool+Score-Map-Block1_dis/ThirdAMIN/conv15_1/Elu*&
_output_shapes
:  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
9Score-Map-Block1_dis/ThirdAMIN/conv16_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
3Score-Map-Block1_dis/ThirdAMIN/conv16_1/convolutionConv2D)Score-Map-Block1_dis/ThirdPool3_1/MaxPoolThirdAMIN/conv16/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/addAdd/ThirdAMIN/conv16/BatchNorm/moving_variance/readAScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/RsqrtRsqrt?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mulMulAScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/Rsqrt%ThirdAMIN/conv16/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul_1Mul3Score-Map-Block1_dis/ThirdAMIN/conv16_1/convolution?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul_2Mul+ThirdAMIN/conv16/BatchNorm/moving_mean/read?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/subSub$ThirdAMIN/conv16/BatchNorm/beta/readAScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
AScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/add_1AddAScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/mul_1?Score-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
+Score-Map-Block1_dis/ThirdAMIN/conv16_1/EluEluAScore-Map-Block1_dis/ThirdAMIN/conv16_1/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
u
$Score-Map-Block1_dis/Reshape_1/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
�
Score-Map-Block1_dis/Reshape_1Reshape+Score-Map-Block1_dis/ThirdAMIN/conv16_1/Elu$Score-Map-Block1_dis/Reshape_1/shape*
_output_shapes
:	�*
Tshape0*
T0
�
9Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/MatMulMatMulScore-Map-Block1_dis/Reshape_1(ThirdAMIN/bconv15_sc333_dis/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:d
�
:Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/BiasAddBiasAdd9Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/MatMul'ThirdAMIN/bconv15_sc333_dis/biases/read*
_output_shapes

:d*
data_formatNHWC*
T0
�
7Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/ReluRelu:Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/BiasAdd*
T0*
_output_shapes

:d
�
&Score-Map-Block1_dis/dropout4/IdentityIdentity7Score-Map-Block1_dis/ThirdAMIN/bconv15_sc333_dis_1/Relu*
T0*
_output_shapes

:d
�
2Score-Map-Block1_dis/ThirdAMIN/bconv10_sc_1/MatMulMatMul&Score-Map-Block1_dis/dropout4/Identity!ThirdAMIN/bconv10_sc/weights/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes

:
}
$SecondAMIN/conv0_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
}
,SecondAMIN/conv0_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
SecondAMIN/conv0_1/convolutionConv2Dmul_1SecondAMIN/conv0/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
q
,SecondAMIN/conv0_1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
*SecondAMIN/conv0_1/BatchNorm/batchnorm/addAdd/SecondAMIN/conv0/BatchNorm/moving_variance/read,SecondAMIN/conv0_1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
,SecondAMIN/conv0_1/BatchNorm/batchnorm/RsqrtRsqrt*SecondAMIN/conv0_1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
*SecondAMIN/conv0_1/BatchNorm/batchnorm/mulMul,SecondAMIN/conv0_1/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv0/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
,SecondAMIN/conv0_1/BatchNorm/batchnorm/mul_1MulSecondAMIN/conv0_1/convolution*SecondAMIN/conv0_1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
,SecondAMIN/conv0_1/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv0/BatchNorm/moving_mean/read*SecondAMIN/conv0_1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
*SecondAMIN/conv0_1/BatchNorm/batchnorm/subSub$SecondAMIN/conv0/BatchNorm/beta/read,SecondAMIN/conv0_1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
,SecondAMIN/conv0_1/BatchNorm/batchnorm/add_1Add,SecondAMIN/conv0_1/BatchNorm/batchnorm/mul_1*SecondAMIN/conv0_1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
~
SecondAMIN/conv0_1/EluElu,SecondAMIN/conv0_1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
pool1_1/MaxPoolMaxPoolSecondAMIN/conv0_1/Elu*(
_output_shapes
:��*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
2convBlock-1_new/SecondAMIN/conv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-1_new/SecondAMIN/conv1/convolutionConv2Dpool1_1/MaxPoolSecondAMIN/conv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/addAdd/SecondAMIN/conv1/BatchNorm/moving_variance/read:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mulMul:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul_1Mul,convBlock-1_new/SecondAMIN/conv1/convolution8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv1/BatchNorm/moving_mean/read8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/subSub$SecondAMIN/conv1/BatchNorm/beta/read:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/add_1Add:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/mul_18convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
$convBlock-1_new/SecondAMIN/conv1/EluElu:convBlock-1_new/SecondAMIN/conv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
3convBlock-1_new/SecondAMIN/bconv1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
;convBlock-1_new/SecondAMIN/bconv1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
-convBlock-1_new/SecondAMIN/bconv1/convolutionConv2D$convBlock-1_new/SecondAMIN/conv1/EluSecondAMIN/bconv1/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv1/BatchNorm/moving_variance/read;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/RsqrtRsqrt9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mulMul;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv1/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_1Mul-convBlock-1_new/SecondAMIN/bconv1/convolution9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv1/BatchNorm/moving_mean/read9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
9convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/subSub%SecondAMIN/bconv1/BatchNorm/beta/read;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/add_1Add;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/mul_19convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
%convBlock-1_new/SecondAMIN/bconv1/EluElu;convBlock-1_new/SecondAMIN/bconv1/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
2convBlock-1_new/SecondAMIN/conv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-1_new/SecondAMIN/conv2/convolutionConv2D%convBlock-1_new/SecondAMIN/bconv1/EluSecondAMIN/conv2/weights/read*(
_output_shapes
:��*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/addAdd/SecondAMIN/conv2/BatchNorm/moving_variance/read:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mulMul:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul_1Mul,convBlock-1_new/SecondAMIN/conv2/convolution8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul*
T0*(
_output_shapes
:��
�
:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv2/BatchNorm/moving_mean/read8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/subSub$SecondAMIN/conv2/BatchNorm/beta/read:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/add_1Add:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/mul_18convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/sub*
T0*(
_output_shapes
:��
�
$convBlock-1_new/SecondAMIN/conv2/EluElu:convBlock-1_new/SecondAMIN/conv2/BatchNorm/batchnorm/add_1*
T0*(
_output_shapes
:��
�
convBlock-2_new/pool2/MaxPoolMaxPool$convBlock-1_new/SecondAMIN/conv2/Elu*&
_output_shapes
:@@*
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
2convBlock-2_new/SecondAMIN/conv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-2_new/SecondAMIN/conv3/convolutionConv2DconvBlock-2_new/pool2/MaxPoolSecondAMIN/conv3/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/addAdd/SecondAMIN/conv3/BatchNorm/moving_variance/read:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mulMul:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul_1Mul,convBlock-2_new/SecondAMIN/conv3/convolution8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv3/BatchNorm/moving_mean/read8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/subSub$SecondAMIN/conv3/BatchNorm/beta/read:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/add_1Add:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/mul_18convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
$convBlock-2_new/SecondAMIN/conv3/EluElu:convBlock-2_new/SecondAMIN/conv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
3convBlock-2_new/SecondAMIN/bconv2/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
;convBlock-2_new/SecondAMIN/bconv2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
-convBlock-2_new/SecondAMIN/bconv2/convolutionConv2D$convBlock-2_new/SecondAMIN/conv3/EluSecondAMIN/bconv2/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv2/BatchNorm/moving_variance/read;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/RsqrtRsqrt9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mulMul;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv2/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_1Mul-convBlock-2_new/SecondAMIN/bconv2/convolution9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv2/BatchNorm/moving_mean/read9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
9convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/subSub%SecondAMIN/bconv2/BatchNorm/beta/read;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/add_1Add;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/mul_19convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
%convBlock-2_new/SecondAMIN/bconv2/EluElu;convBlock-2_new/SecondAMIN/bconv2/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
2convBlock-2_new/SecondAMIN/conv4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-2_new/SecondAMIN/conv4/convolutionConv2D%convBlock-2_new/SecondAMIN/bconv2/EluSecondAMIN/conv4/weights/read*&
_output_shapes
:@@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/addAdd/SecondAMIN/conv4/BatchNorm/moving_variance/read:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mulMul:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv4/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul_1Mul,convBlock-2_new/SecondAMIN/conv4/convolution8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:@@
�
:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv4/BatchNorm/moving_mean/read8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/subSub$SecondAMIN/conv4/BatchNorm/beta/read:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/add_1Add:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/mul_18convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:@@
�
$convBlock-2_new/SecondAMIN/conv4/EluElu:convBlock-2_new/SecondAMIN/conv4/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:@@
�
convBlock-3_new/pool3/AvgPoolAvgPool$convBlock-2_new/SecondAMIN/conv4/Elu*&
_output_shapes
:  *
data_formatNHWC*
paddingSAME*
strides
*
ksize
*
T0
�
2convBlock-3_new/SecondAMIN/conv5/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv5/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-3_new/SecondAMIN/conv5/convolutionConv2DconvBlock-3_new/pool3/AvgPoolSecondAMIN/conv5/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/addAdd/SecondAMIN/conv5/BatchNorm/moving_variance/read:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mulMul:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv5/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul_1Mul,convBlock-3_new/SecondAMIN/conv5/convolution8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv5/BatchNorm/moving_mean/read8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/subSub$SecondAMIN/conv5/BatchNorm/beta/read:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/add_1Add:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/mul_18convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
$convBlock-3_new/SecondAMIN/conv5/EluElu:convBlock-3_new/SecondAMIN/conv5/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
3convBlock-3_new/SecondAMIN/bconv3/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
;convBlock-3_new/SecondAMIN/bconv3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
-convBlock-3_new/SecondAMIN/bconv3/convolutionConv2D$convBlock-3_new/SecondAMIN/conv5/EluSecondAMIN/bconv3/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/addAdd0SecondAMIN/bconv3/BatchNorm/moving_variance/read;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/RsqrtRsqrt9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mulMul;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/Rsqrt&SecondAMIN/bconv3/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_1Mul-convBlock-3_new/SecondAMIN/bconv3/convolution9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_2Mul,SecondAMIN/bconv3/BatchNorm/moving_mean/read9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
9convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/subSub%SecondAMIN/bconv3/BatchNorm/beta/read;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/add_1Add;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/mul_19convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
%convBlock-3_new/SecondAMIN/bconv3/EluElu;convBlock-3_new/SecondAMIN/bconv3/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
2convBlock-3_new/SecondAMIN/conv6/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv6/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
,convBlock-3_new/SecondAMIN/conv6/convolutionConv2D%convBlock-3_new/SecondAMIN/bconv3/EluSecondAMIN/conv6/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0

:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/addAdd/SecondAMIN/conv6/BatchNorm/moving_variance/read:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/RsqrtRsqrt8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mulMul:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv6/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul_1Mul,convBlock-3_new/SecondAMIN/conv6/convolution8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv6/BatchNorm/moving_mean/read8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
8convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/subSub$SecondAMIN/conv6/BatchNorm/beta/read:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/add_1Add:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/mul_18convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
$convBlock-3_new/SecondAMIN/conv6/EluElu:convBlock-3_new/SecondAMIN/conv6/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
W
size_5Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_5ResizeBilinear$convBlock-1_new/SecondAMIN/conv2/Elusize_5*
align_corners( *
T0*&
_output_shapes
:  
W
size_6Const*
dtype0*
valueB"        *
_output_shapes
:
�
ResizeBilinear_6ResizeBilinear$convBlock-2_new/SecondAMIN/conv4/Elusize_6*
align_corners( *
T0*&
_output_shapes
:  
O
concat_4/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
concat_4ConcatV2ResizeBilinear_5ResizeBilinear_6$convBlock-3_new/SecondAMIN/conv6/Eluconcat_4/axis*
N*

Tidx0*
T0*&
_output_shapes
:  <
�
6Depth-Map-Block_new/SecondAMIN/conv7/convolution/ShapeConst*
dtype0*%
valueB"      <      *
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv7/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
0Depth-Map-Block_new/SecondAMIN/conv7/convolutionConv2Dconcat_4SecondAMIN/conv7/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/addAdd/SecondAMIN/conv7/BatchNorm/moving_variance/read>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/RsqrtRsqrt<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mulMul>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv7/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul_1Mul0Depth-Map-Block_new/SecondAMIN/conv7/convolution<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv7/BatchNorm/moving_mean/read<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/subSub$SecondAMIN/conv7/BatchNorm/beta/read>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/add_1Add>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/mul_1<Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
(Depth-Map-Block_new/SecondAMIN/conv7/EluElu>Depth-Map-Block_new/SecondAMIN/conv7/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
�
&Depth-Map-Block_new/dropout15/IdentityIdentity(Depth-Map-Block_new/SecondAMIN/conv7/Elu*
T0*&
_output_shapes
:  
�
6Depth-Map-Block_new/SecondAMIN/conv8/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv8/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
0Depth-Map-Block_new/SecondAMIN/conv8/convolutionConv2D&Depth-Map-Block_new/dropout15/IdentitySecondAMIN/conv8/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *��'7*
_output_shapes
: 
�
<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/addAdd/SecondAMIN/conv8/BatchNorm/moving_variance/read>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/add/y*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/RsqrtRsqrt<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/add*
T0*
_output_shapes
:
�
<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mulMul>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/Rsqrt%SecondAMIN/conv8/BatchNorm/gamma/read*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul_1Mul0Depth-Map-Block_new/SecondAMIN/conv8/convolution<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul*
T0*&
_output_shapes
:  
�
>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul_2Mul+SecondAMIN/conv8/BatchNorm/moving_mean/read<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul*
T0*
_output_shapes
:
�
<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/subSub$SecondAMIN/conv8/BatchNorm/beta/read>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul_2*
T0*
_output_shapes
:
�
>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/add_1Add>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/mul_1<Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/sub*
T0*&
_output_shapes
:  
�
(Depth-Map-Block_new/SecondAMIN/conv8/EluElu>Depth-Map-Block_new/SecondAMIN/conv8/BatchNorm/batchnorm/add_1*
T0*&
_output_shapes
:  
~
%SecondAMIN/conv11_1/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
~
-SecondAMIN/conv11_1/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
�
SecondAMIN/conv11_1/convolutionConv2D(Depth-Map-Block_new/SecondAMIN/conv8/EluSecondAMIN/conv11/weights/read*&
_output_shapes
:  *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*
strides
*
T0
�
Cast_2/xConst*
dtype0*��
value��B��  "��      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?*&
_output_shapes
:  
X
Cast_2CastCast_2/x*

DstT0*

SrcT0*&
_output_shapes
:  
L
sub_1/xConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
A
sub_1Subsub_1/xzeros*
T0*
_output_shapes
:
f
Reshape/shapeConst*
dtype0*%
valueB"            *
_output_shapes
:
g
ReshapeReshapesub_1Reshape/shape*&
_output_shapes
:*
Tshape0*
T0
N
mul_2MulCast_2Reshape*
T0*&
_output_shapes
:  
h
Reshape_1/shapeConst*
dtype0*%
valueB"            *
_output_shapes
:
k
	Reshape_1ReshapezerosReshape_1/shape*&
_output_shapes
:*
Tshape0*
T0
Q
mul_3Mulzeros_1	Reshape_1*
T0*&
_output_shapes
:
�
Cast_5/xConst*
dtype0*�
value�B�"�                                      �?                                                                      �?                                                                      �?                                                                      �?                                                                      �?                                                                      �?                                *&
_output_shapes
:
X
Cast_5CastCast_5/x*

DstT0*

SrcT0*&
_output_shapes
:
n
strided_slice_1/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
p
strided_slice_1/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_1/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_1StridedSlicemul_3strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
new_axis_mask *
Index0*&
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
K
GT2/tagConst*
dtype0*
valueB	 BGT2*
_output_shapes
: 
�
GT2ImageSummaryGT2/tagstrided_slice_1*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_2/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
p
strided_slice_2/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_2/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_2StridedSliceSecondAMIN/conv11/convolutionstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
new_axis_mask *
Index0*&
_output_shapes
:  *

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
L
mul_4/xConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
W
mul_4Mulmul_4/xstrided_slice_2*
T0*&
_output_shapes
:  
U
Cast_6Castmul_4*

DstT0*

SrcT0*&
_output_shapes
:  
I
SC/tagConst*
dtype0*
value
B BSC*
_output_shapes
: 
v
SCImageSummarySC/tagCast_6*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_3/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
p
strided_slice_3/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_3/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_3StridedSliceSecondAMIN/conv11_1/convolutionstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
new_axis_mask *
Index0*&
_output_shapes
:  *

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
L
mul_5/xConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
W
mul_5Mulmul_5/xstrided_slice_3*
T0*&
_output_shapes
:  
U
Cast_7Castmul_5*

DstT0*

SrcT0*&
_output_shapes
:  
S
Live_SC/tagConst*
dtype0*
valueB BLive_SC*
_output_shapes
: 
�
Live_SCImageSummaryLive_SC/tagCast_7*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_4/stackConst*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_4/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_4/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_4StridedSlicemul_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
new_axis_mask *
Index0*(
_output_shapes
:��*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
L
mul_6/xConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
Y
mul_6Mulmul_6/xstrided_slice_4*
T0*(
_output_shapes
:��
W
Cast_8Castmul_6*

DstT0*

SrcT0*(
_output_shapes
:��
M
Live/tagConst*
dtype0*
valueB
 BLive*
_output_shapes
: 
z
LiveImageSummaryLive/tagCast_8*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_5/stackConst*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_5/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_5/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_5StridedSlicestackstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
new_axis_mask *
Index0*(
_output_shapes
:��*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
L
mul_7/xConst*
dtype0*
valueB
 *  �C*
_output_shapes
: 
Y
mul_7Mulmul_7/xstrided_slice_5*
T0*(
_output_shapes
:��
W
Cast_9Castmul_7*

DstT0*

SrcT0*(
_output_shapes
:��
Y
inputImage/tagConst*
dtype0*
valueB B
inputImage*
_output_shapes
: 
�

inputImageImageSummaryinputImage/tagCast_9*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_6/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
p
strided_slice_6/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_6/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_6StridedSlicemul_2strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
new_axis_mask *
Index0*&
_output_shapes
:  *

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
]
GT3_Artifact/tagConst*
dtype0*
valueB BGT3_Artifact*
_output_shapes
: 
�
GT3_ArtifactImageSummaryGT3_Artifact/tagstrided_slice_6*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_7/stackConst*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_7/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_7/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_7StridedSliceFirstAMIN/conv17/convolutionstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
new_axis_mask *
Index0*(
_output_shapes
:��*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
U
Artifact/tagConst*
dtype0*
valueB BArtifact*
_output_shapes
: 
�
ArtifactImageSummaryArtifact/tagstrided_slice_7*
	bad_colorB:�  �*

max_images*
T0*
_output_shapes
: 
n
strided_slice_8/stackConst*
dtype0*%
valueB"                *
_output_shapes
:
p
strided_slice_8/stack_1Const*
dtype0*%
valueB"               *
_output_shapes
:
p
strided_slice_8/stack_2Const*
dtype0*%
valueB"            *
_output_shapes
:
�
strided_slice_8StridedSliceFirstAMIN/conv17/convolutionstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
new_axis_mask *
Index0*$
_output_shapes
:��*

begin_mask*
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask
L
Abs_1Absstrided_slice_8*
T0*$
_output_shapes
:��
X
Mean/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
r
MeanMeanAbs_1Mean/reduction_indices*
_output_shapes
:	�*

Tidx0*
	keep_dims( *
T0
Z
Mean_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
q
Mean_1MeanMeanMean_1/reduction_indices*
_output_shapes	
:�*

Tidx0*
	keep_dims( *
T0
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
[
Mean_2MeanMean_1Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�M
save/SaveV2/tensor_namesConst*
dtype0*�M
value�MB�M�B8FirstAMIN/bconv1/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/bconv1/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/bconv1/BatchNorm/moving_meanB*FirstAMIN/bconv1/BatchNorm/moving_varianceB1FirstAMIN/bconv1/weights/ExponentialMovingAverageB8FirstAMIN/bconv2/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/bconv2/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/bconv2/BatchNorm/moving_meanB*FirstAMIN/bconv2/BatchNorm/moving_varianceB1FirstAMIN/bconv2/weights/ExponentialMovingAverageB8FirstAMIN/bconv3/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/bconv3/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/bconv3/BatchNorm/moving_meanB*FirstAMIN/bconv3/BatchNorm/moving_varianceB1FirstAMIN/bconv3/weights/ExponentialMovingAverageB7FirstAMIN/conv0/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv0/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv0/BatchNorm/moving_meanB)FirstAMIN/conv0/BatchNorm/moving_varianceB0FirstAMIN/conv0/weights/ExponentialMovingAverageB7FirstAMIN/conv1/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv1/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv1/BatchNorm/moving_meanB)FirstAMIN/conv1/BatchNorm/moving_varianceB0FirstAMIN/conv1/weights/ExponentialMovingAverageB8FirstAMIN/conv10/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv10/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv10/BatchNorm/moving_meanB*FirstAMIN/conv10/BatchNorm/moving_varianceB1FirstAMIN/conv10/weights/ExponentialMovingAverageB1FirstAMIN/conv11/weights/ExponentialMovingAverageB8FirstAMIN/conv12/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv12/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv12/BatchNorm/moving_meanB*FirstAMIN/conv12/BatchNorm/moving_varianceB1FirstAMIN/conv12/weights/ExponentialMovingAverageB8FirstAMIN/conv13/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv13/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv13/BatchNorm/moving_meanB*FirstAMIN/conv13/BatchNorm/moving_varianceB1FirstAMIN/conv13/weights/ExponentialMovingAverageB8FirstAMIN/conv14/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv14/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv14/BatchNorm/moving_meanB*FirstAMIN/conv14/BatchNorm/moving_varianceB1FirstAMIN/conv14/weights/ExponentialMovingAverageB8FirstAMIN/conv15/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv15/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv15/BatchNorm/moving_meanB*FirstAMIN/conv15/BatchNorm/moving_varianceB1FirstAMIN/conv15/weights/ExponentialMovingAverageB8FirstAMIN/conv16/BatchNorm/beta/ExponentialMovingAverageB9FirstAMIN/conv16/BatchNorm/gamma/ExponentialMovingAverageB&FirstAMIN/conv16/BatchNorm/moving_meanB*FirstAMIN/conv16/BatchNorm/moving_varianceB1FirstAMIN/conv16/weights/ExponentialMovingAverageB1FirstAMIN/conv17/weights/ExponentialMovingAverageB7FirstAMIN/conv2/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv2/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv2/BatchNorm/moving_meanB)FirstAMIN/conv2/BatchNorm/moving_varianceB0FirstAMIN/conv2/weights/ExponentialMovingAverageB7FirstAMIN/conv3/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv3/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv3/BatchNorm/moving_meanB)FirstAMIN/conv3/BatchNorm/moving_varianceB0FirstAMIN/conv3/weights/ExponentialMovingAverageB7FirstAMIN/conv4/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv4/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv4/BatchNorm/moving_meanB)FirstAMIN/conv4/BatchNorm/moving_varianceB0FirstAMIN/conv4/weights/ExponentialMovingAverageB7FirstAMIN/conv5/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv5/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv5/BatchNorm/moving_meanB)FirstAMIN/conv5/BatchNorm/moving_varianceB0FirstAMIN/conv5/weights/ExponentialMovingAverageB7FirstAMIN/conv6/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv6/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv6/BatchNorm/moving_meanB)FirstAMIN/conv6/BatchNorm/moving_varianceB0FirstAMIN/conv6/weights/ExponentialMovingAverageB7FirstAMIN/conv7/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv7/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv7/BatchNorm/moving_meanB)FirstAMIN/conv7/BatchNorm/moving_varianceB0FirstAMIN/conv7/weights/ExponentialMovingAverageB7FirstAMIN/conv8/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv8/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv8/BatchNorm/moving_meanB)FirstAMIN/conv8/BatchNorm/moving_varianceB0FirstAMIN/conv8/weights/ExponentialMovingAverageB7FirstAMIN/conv9/BatchNorm/beta/ExponentialMovingAverageB8FirstAMIN/conv9/BatchNorm/gamma/ExponentialMovingAverageB%FirstAMIN/conv9/BatchNorm/moving_meanB)FirstAMIN/conv9/BatchNorm/moving_varianceB0FirstAMIN/conv9/weights/ExponentialMovingAverageB9SecondAMIN/bconv1/BatchNorm/beta/ExponentialMovingAverageB:SecondAMIN/bconv1/BatchNorm/gamma/ExponentialMovingAverageB'SecondAMIN/bconv1/BatchNorm/moving_meanB+SecondAMIN/bconv1/BatchNorm/moving_varianceB2SecondAMIN/bconv1/weights/ExponentialMovingAverageB9SecondAMIN/bconv2/BatchNorm/beta/ExponentialMovingAverageB:SecondAMIN/bconv2/BatchNorm/gamma/ExponentialMovingAverageB'SecondAMIN/bconv2/BatchNorm/moving_meanB+SecondAMIN/bconv2/BatchNorm/moving_varianceB2SecondAMIN/bconv2/weights/ExponentialMovingAverageB9SecondAMIN/bconv3/BatchNorm/beta/ExponentialMovingAverageB:SecondAMIN/bconv3/BatchNorm/gamma/ExponentialMovingAverageB'SecondAMIN/bconv3/BatchNorm/moving_meanB+SecondAMIN/bconv3/BatchNorm/moving_varianceB2SecondAMIN/bconv3/weights/ExponentialMovingAverageB8SecondAMIN/conv0/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv0/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv0/BatchNorm/moving_meanB*SecondAMIN/conv0/BatchNorm/moving_varianceB1SecondAMIN/conv0/weights/ExponentialMovingAverageB8SecondAMIN/conv1/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv1/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv1/BatchNorm/moving_meanB*SecondAMIN/conv1/BatchNorm/moving_varianceB1SecondAMIN/conv1/weights/ExponentialMovingAverageB2SecondAMIN/conv11/weights/ExponentialMovingAverageB8SecondAMIN/conv2/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv2/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv2/BatchNorm/moving_meanB*SecondAMIN/conv2/BatchNorm/moving_varianceB1SecondAMIN/conv2/weights/ExponentialMovingAverageB8SecondAMIN/conv3/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv3/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv3/BatchNorm/moving_meanB*SecondAMIN/conv3/BatchNorm/moving_varianceB1SecondAMIN/conv3/weights/ExponentialMovingAverageB8SecondAMIN/conv4/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv4/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv4/BatchNorm/moving_meanB*SecondAMIN/conv4/BatchNorm/moving_varianceB1SecondAMIN/conv4/weights/ExponentialMovingAverageB8SecondAMIN/conv5/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv5/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv5/BatchNorm/moving_meanB*SecondAMIN/conv5/BatchNorm/moving_varianceB1SecondAMIN/conv5/weights/ExponentialMovingAverageB8SecondAMIN/conv6/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv6/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv6/BatchNorm/moving_meanB*SecondAMIN/conv6/BatchNorm/moving_varianceB1SecondAMIN/conv6/weights/ExponentialMovingAverageB8SecondAMIN/conv7/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv7/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv7/BatchNorm/moving_meanB*SecondAMIN/conv7/BatchNorm/moving_varianceB1SecondAMIN/conv7/weights/ExponentialMovingAverageB8SecondAMIN/conv8/BatchNorm/beta/ExponentialMovingAverageB9SecondAMIN/conv8/BatchNorm/gamma/ExponentialMovingAverageB&SecondAMIN/conv8/BatchNorm/moving_meanB*SecondAMIN/conv8/BatchNorm/moving_varianceB1SecondAMIN/conv8/weights/ExponentialMovingAverageB5ThirdAMIN/bconv10_sc/weights/ExponentialMovingAverageB;ThirdAMIN/bconv15_sc333_dis/biases/ExponentialMovingAverageB<ThirdAMIN/bconv15_sc333_dis/weights/ExponentialMovingAverageB8ThirdAMIN/conv10/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv10/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv10/BatchNorm/moving_meanB*ThirdAMIN/conv10/BatchNorm/moving_varianceB1ThirdAMIN/conv10/weights/ExponentialMovingAverageB8ThirdAMIN/conv12/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv12/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv12/BatchNorm/moving_meanB*ThirdAMIN/conv12/BatchNorm/moving_varianceB1ThirdAMIN/conv12/weights/ExponentialMovingAverageB8ThirdAMIN/conv13/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv13/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv13/BatchNorm/moving_meanB*ThirdAMIN/conv13/BatchNorm/moving_varianceB1ThirdAMIN/conv13/weights/ExponentialMovingAverageB8ThirdAMIN/conv14/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv14/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv14/BatchNorm/moving_meanB*ThirdAMIN/conv14/BatchNorm/moving_varianceB1ThirdAMIN/conv14/weights/ExponentialMovingAverageB8ThirdAMIN/conv15/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv15/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv15/BatchNorm/moving_meanB*ThirdAMIN/conv15/BatchNorm/moving_varianceB1ThirdAMIN/conv15/weights/ExponentialMovingAverageB8ThirdAMIN/conv16/BatchNorm/beta/ExponentialMovingAverageB9ThirdAMIN/conv16/BatchNorm/gamma/ExponentialMovingAverageB&ThirdAMIN/conv16/BatchNorm/moving_meanB*ThirdAMIN/conv16/BatchNorm/moving_varianceB1ThirdAMIN/conv16/weights/ExponentialMovingAverageB7ThirdAMIN/conv9/BatchNorm/beta/ExponentialMovingAverageB8ThirdAMIN/conv9/BatchNorm/gamma/ExponentialMovingAverageB%ThirdAMIN/conv9/BatchNorm/moving_meanB)ThirdAMIN/conv9/BatchNorm/moving_varianceB0ThirdAMIN/conv9/weights/ExponentialMovingAverage*
_output_shapes	
:�
�
save/SaveV2/shape_and_slicesConst*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:�
�8
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesFirstAMIN/bconv1/BatchNorm/beta FirstAMIN/bconv1/BatchNorm/gamma&FirstAMIN/bconv1/BatchNorm/moving_mean*FirstAMIN/bconv1/BatchNorm/moving_varianceFirstAMIN/bconv1/weightsFirstAMIN/bconv2/BatchNorm/beta FirstAMIN/bconv2/BatchNorm/gamma&FirstAMIN/bconv2/BatchNorm/moving_mean*FirstAMIN/bconv2/BatchNorm/moving_varianceFirstAMIN/bconv2/weightsFirstAMIN/bconv3/BatchNorm/beta FirstAMIN/bconv3/BatchNorm/gamma&FirstAMIN/bconv3/BatchNorm/moving_mean*FirstAMIN/bconv3/BatchNorm/moving_varianceFirstAMIN/bconv3/weightsFirstAMIN/conv0/BatchNorm/betaFirstAMIN/conv0/BatchNorm/gamma%FirstAMIN/conv0/BatchNorm/moving_mean)FirstAMIN/conv0/BatchNorm/moving_varianceFirstAMIN/conv0/weightsFirstAMIN/conv1/BatchNorm/betaFirstAMIN/conv1/BatchNorm/gamma%FirstAMIN/conv1/BatchNorm/moving_mean)FirstAMIN/conv1/BatchNorm/moving_varianceFirstAMIN/conv1/weightsFirstAMIN/conv10/BatchNorm/beta FirstAMIN/conv10/BatchNorm/gamma&FirstAMIN/conv10/BatchNorm/moving_mean*FirstAMIN/conv10/BatchNorm/moving_varianceFirstAMIN/conv10/weightsFirstAMIN/conv11/weightsFirstAMIN/conv12/BatchNorm/beta FirstAMIN/conv12/BatchNorm/gamma&FirstAMIN/conv12/BatchNorm/moving_mean*FirstAMIN/conv12/BatchNorm/moving_varianceFirstAMIN/conv12/weightsFirstAMIN/conv13/BatchNorm/beta FirstAMIN/conv13/BatchNorm/gamma&FirstAMIN/conv13/BatchNorm/moving_mean*FirstAMIN/conv13/BatchNorm/moving_varianceFirstAMIN/conv13/weightsFirstAMIN/conv14/BatchNorm/beta FirstAMIN/conv14/BatchNorm/gamma&FirstAMIN/conv14/BatchNorm/moving_mean*FirstAMIN/conv14/BatchNorm/moving_varianceFirstAMIN/conv14/weightsFirstAMIN/conv15/BatchNorm/beta FirstAMIN/conv15/BatchNorm/gamma&FirstAMIN/conv15/BatchNorm/moving_mean*FirstAMIN/conv15/BatchNorm/moving_varianceFirstAMIN/conv15/weightsFirstAMIN/conv16/BatchNorm/beta FirstAMIN/conv16/BatchNorm/gamma&FirstAMIN/conv16/BatchNorm/moving_mean*FirstAMIN/conv16/BatchNorm/moving_varianceFirstAMIN/conv16/weightsFirstAMIN/conv17/weightsFirstAMIN/conv2/BatchNorm/betaFirstAMIN/conv2/BatchNorm/gamma%FirstAMIN/conv2/BatchNorm/moving_mean)FirstAMIN/conv2/BatchNorm/moving_varianceFirstAMIN/conv2/weightsFirstAMIN/conv3/BatchNorm/betaFirstAMIN/conv3/BatchNorm/gamma%FirstAMIN/conv3/BatchNorm/moving_mean)FirstAMIN/conv3/BatchNorm/moving_varianceFirstAMIN/conv3/weightsFirstAMIN/conv4/BatchNorm/betaFirstAMIN/conv4/BatchNorm/gamma%FirstAMIN/conv4/BatchNorm/moving_mean)FirstAMIN/conv4/BatchNorm/moving_varianceFirstAMIN/conv4/weightsFirstAMIN/conv5/BatchNorm/betaFirstAMIN/conv5/BatchNorm/gamma%FirstAMIN/conv5/BatchNorm/moving_mean)FirstAMIN/conv5/BatchNorm/moving_varianceFirstAMIN/conv5/weightsFirstAMIN/conv6/BatchNorm/betaFirstAMIN/conv6/BatchNorm/gamma%FirstAMIN/conv6/BatchNorm/moving_mean)FirstAMIN/conv6/BatchNorm/moving_varianceFirstAMIN/conv6/weightsFirstAMIN/conv7/BatchNorm/betaFirstAMIN/conv7/BatchNorm/gamma%FirstAMIN/conv7/BatchNorm/moving_mean)FirstAMIN/conv7/BatchNorm/moving_varianceFirstAMIN/conv7/weightsFirstAMIN/conv8/BatchNorm/betaFirstAMIN/conv8/BatchNorm/gamma%FirstAMIN/conv8/BatchNorm/moving_mean)FirstAMIN/conv8/BatchNorm/moving_varianceFirstAMIN/conv8/weightsFirstAMIN/conv9/BatchNorm/betaFirstAMIN/conv9/BatchNorm/gamma%FirstAMIN/conv9/BatchNorm/moving_mean)FirstAMIN/conv9/BatchNorm/moving_varianceFirstAMIN/conv9/weights SecondAMIN/bconv1/BatchNorm/beta!SecondAMIN/bconv1/BatchNorm/gamma'SecondAMIN/bconv1/BatchNorm/moving_mean+SecondAMIN/bconv1/BatchNorm/moving_varianceSecondAMIN/bconv1/weights SecondAMIN/bconv2/BatchNorm/beta!SecondAMIN/bconv2/BatchNorm/gamma'SecondAMIN/bconv2/BatchNorm/moving_mean+SecondAMIN/bconv2/BatchNorm/moving_varianceSecondAMIN/bconv2/weights SecondAMIN/bconv3/BatchNorm/beta!SecondAMIN/bconv3/BatchNorm/gamma'SecondAMIN/bconv3/BatchNorm/moving_mean+SecondAMIN/bconv3/BatchNorm/moving_varianceSecondAMIN/bconv3/weightsSecondAMIN/conv0/BatchNorm/beta SecondAMIN/conv0/BatchNorm/gamma&SecondAMIN/conv0/BatchNorm/moving_mean*SecondAMIN/conv0/BatchNorm/moving_varianceSecondAMIN/conv0/weightsSecondAMIN/conv1/BatchNorm/beta SecondAMIN/conv1/BatchNorm/gamma&SecondAMIN/conv1/BatchNorm/moving_mean*SecondAMIN/conv1/BatchNorm/moving_varianceSecondAMIN/conv1/weightsSecondAMIN/conv11/weightsSecondAMIN/conv2/BatchNorm/beta SecondAMIN/conv2/BatchNorm/gamma&SecondAMIN/conv2/BatchNorm/moving_mean*SecondAMIN/conv2/BatchNorm/moving_varianceSecondAMIN/conv2/weightsSecondAMIN/conv3/BatchNorm/beta SecondAMIN/conv3/BatchNorm/gamma&SecondAMIN/conv3/BatchNorm/moving_mean*SecondAMIN/conv3/BatchNorm/moving_varianceSecondAMIN/conv3/weightsSecondAMIN/conv4/BatchNorm/beta SecondAMIN/conv4/BatchNorm/gamma&SecondAMIN/conv4/BatchNorm/moving_mean*SecondAMIN/conv4/BatchNorm/moving_varianceSecondAMIN/conv4/weightsSecondAMIN/conv5/BatchNorm/beta SecondAMIN/conv5/BatchNorm/gamma&SecondAMIN/conv5/BatchNorm/moving_mean*SecondAMIN/conv5/BatchNorm/moving_varianceSecondAMIN/conv5/weightsSecondAMIN/conv6/BatchNorm/beta SecondAMIN/conv6/BatchNorm/gamma&SecondAMIN/conv6/BatchNorm/moving_mean*SecondAMIN/conv6/BatchNorm/moving_varianceSecondAMIN/conv6/weightsSecondAMIN/conv7/BatchNorm/beta SecondAMIN/conv7/BatchNorm/gamma&SecondAMIN/conv7/BatchNorm/moving_mean*SecondAMIN/conv7/BatchNorm/moving_varianceSecondAMIN/conv7/weightsSecondAMIN/conv8/BatchNorm/beta SecondAMIN/conv8/BatchNorm/gamma&SecondAMIN/conv8/BatchNorm/moving_mean*SecondAMIN/conv8/BatchNorm/moving_varianceSecondAMIN/conv8/weightsThirdAMIN/bconv10_sc/weights"ThirdAMIN/bconv15_sc333_dis/biases#ThirdAMIN/bconv15_sc333_dis/weightsThirdAMIN/conv10/BatchNorm/beta ThirdAMIN/conv10/BatchNorm/gamma&ThirdAMIN/conv10/BatchNorm/moving_mean*ThirdAMIN/conv10/BatchNorm/moving_varianceThirdAMIN/conv10/weightsThirdAMIN/conv12/BatchNorm/beta ThirdAMIN/conv12/BatchNorm/gamma&ThirdAMIN/conv12/BatchNorm/moving_mean*ThirdAMIN/conv12/BatchNorm/moving_varianceThirdAMIN/conv12/weightsThirdAMIN/conv13/BatchNorm/beta ThirdAMIN/conv13/BatchNorm/gamma&ThirdAMIN/conv13/BatchNorm/moving_mean*ThirdAMIN/conv13/BatchNorm/moving_varianceThirdAMIN/conv13/weightsThirdAMIN/conv14/BatchNorm/beta ThirdAMIN/conv14/BatchNorm/gamma&ThirdAMIN/conv14/BatchNorm/moving_mean*ThirdAMIN/conv14/BatchNorm/moving_varianceThirdAMIN/conv14/weightsThirdAMIN/conv15/BatchNorm/beta ThirdAMIN/conv15/BatchNorm/gamma&ThirdAMIN/conv15/BatchNorm/moving_mean*ThirdAMIN/conv15/BatchNorm/moving_varianceThirdAMIN/conv15/weightsThirdAMIN/conv16/BatchNorm/beta ThirdAMIN/conv16/BatchNorm/gamma&ThirdAMIN/conv16/BatchNorm/moving_mean*ThirdAMIN/conv16/BatchNorm/moving_varianceThirdAMIN/conv16/weightsThirdAMIN/conv9/BatchNorm/betaThirdAMIN/conv9/BatchNorm/gamma%ThirdAMIN/conv9/BatchNorm/moving_mean)ThirdAMIN/conv9/BatchNorm/moving_varianceThirdAMIN/conv9/weights*�
dtypes�
�2�
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/bconv1/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/AssignAssignFirstAMIN/bconv1/BatchNorm/betasave/RestoreV2*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_1/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/bconv1/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1Assign FirstAMIN/bconv1/BatchNorm/gammasave/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_2/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv1/BatchNorm/moving_mean*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_2Assign&FirstAMIN/bconv1/BatchNorm/moving_meansave/RestoreV2_2*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_3/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv1/BatchNorm/moving_variance*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_3Assign*FirstAMIN/bconv1/BatchNorm/moving_variancesave/RestoreV2_3*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_4/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/bconv1/weights/ExponentialMovingAverage*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_4AssignFirstAMIN/bconv1/weightssave/RestoreV2_4*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_5/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/bconv2/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_5AssignFirstAMIN/bconv2/BatchNorm/betasave/RestoreV2_5*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_6/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/bconv2/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_6Assign FirstAMIN/bconv2/BatchNorm/gammasave/RestoreV2_6*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_7/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv2/BatchNorm/moving_mean*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_7Assign&FirstAMIN/bconv2/BatchNorm/moving_meansave/RestoreV2_7*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_8/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv2/BatchNorm/moving_variance*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_8Assign*FirstAMIN/bconv2/BatchNorm/moving_variancesave/RestoreV2_8*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_9/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/bconv2/weights/ExponentialMovingAverage*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_9AssignFirstAMIN/bconv2/weightssave/RestoreV2_9*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_10/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/bconv3/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_10AssignFirstAMIN/bconv3/BatchNorm/betasave/RestoreV2_10*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_11/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/bconv3/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_11Assign FirstAMIN/bconv3/BatchNorm/gammasave/RestoreV2_11*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_12/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv3/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_12Assign&FirstAMIN/bconv3/BatchNorm/moving_meansave/RestoreV2_12*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_13/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv3/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_13Assign*FirstAMIN/bconv3/BatchNorm/moving_variancesave/RestoreV2_13*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_14/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/bconv3/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_14AssignFirstAMIN/bconv3/weightssave/RestoreV2_14*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_15/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv0/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_15AssignFirstAMIN/conv0/BatchNorm/betasave/RestoreV2_15*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_16/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv0/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_16AssignFirstAMIN/conv0/BatchNorm/gammasave/RestoreV2_16*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_17/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv0/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_17Assign%FirstAMIN/conv0/BatchNorm/moving_meansave/RestoreV2_17*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_18/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv0/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_18Assign)FirstAMIN/conv0/BatchNorm/moving_variancesave/RestoreV2_18*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_19/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv0/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_19AssignFirstAMIN/conv0/weightssave/RestoreV2_19*
validate_shape(**
_class 
loc:@FirstAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_20/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv1/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_20AssignFirstAMIN/conv1/BatchNorm/betasave/RestoreV2_20*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_21/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv1/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_21AssignFirstAMIN/conv1/BatchNorm/gammasave/RestoreV2_21*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_22/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv1/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_22Assign%FirstAMIN/conv1/BatchNorm/moving_meansave/RestoreV2_22*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_23/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv1/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_23Assign)FirstAMIN/conv1/BatchNorm/moving_variancesave/RestoreV2_23*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_24/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv1/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_24AssignFirstAMIN/conv1/weightssave/RestoreV2_24*
validate_shape(**
_class 
loc:@FirstAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_25/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv10/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_25AssignFirstAMIN/conv10/BatchNorm/betasave/RestoreV2_25*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_26/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv10/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_26Assign FirstAMIN/conv10/BatchNorm/gammasave/RestoreV2_26*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_27/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv10/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_27Assign&FirstAMIN/conv10/BatchNorm/moving_meansave/RestoreV2_27*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_28/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv10/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_28Assign*FirstAMIN/conv10/BatchNorm/moving_variancesave/RestoreV2_28*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_29/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv10/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_29AssignFirstAMIN/conv10/weightssave/RestoreV2_29*
validate_shape(*+
_class!
loc:@FirstAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_30/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv11/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_30/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_30AssignFirstAMIN/conv11/weightssave/RestoreV2_30*
validate_shape(*+
_class!
loc:@FirstAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_31/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv12/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_31AssignFirstAMIN/conv12/BatchNorm/betasave/RestoreV2_31*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_32/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv12/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_32/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_32Assign FirstAMIN/conv12/BatchNorm/gammasave/RestoreV2_32*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_33/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv12/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_33Assign&FirstAMIN/conv12/BatchNorm/moving_meansave/RestoreV2_33*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_34/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv12/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_34/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_34Assign*FirstAMIN/conv12/BatchNorm/moving_variancesave/RestoreV2_34*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_35/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv12/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_35AssignFirstAMIN/conv12/weightssave/RestoreV2_35*
validate_shape(*+
_class!
loc:@FirstAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_36/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv13/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_36AssignFirstAMIN/conv13/BatchNorm/betasave/RestoreV2_36*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_37/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv13/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_37/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_37Assign FirstAMIN/conv13/BatchNorm/gammasave/RestoreV2_37*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_38/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv13/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_38/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_38Assign&FirstAMIN/conv13/BatchNorm/moving_meansave/RestoreV2_38*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_39/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv13/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_39/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_39Assign*FirstAMIN/conv13/BatchNorm/moving_variancesave/RestoreV2_39*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_40/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv13/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_40/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_40AssignFirstAMIN/conv13/weightssave/RestoreV2_40*
validate_shape(*+
_class!
loc:@FirstAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_41/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv14/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_41/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_41AssignFirstAMIN/conv14/BatchNorm/betasave/RestoreV2_41*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_42/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv14/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_42/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_42Assign FirstAMIN/conv14/BatchNorm/gammasave/RestoreV2_42*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_43/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv14/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_43/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_43Assign&FirstAMIN/conv14/BatchNorm/moving_meansave/RestoreV2_43*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_44/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv14/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_44/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_44Assign*FirstAMIN/conv14/BatchNorm/moving_variancesave/RestoreV2_44*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_45/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv14/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_45/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_45AssignFirstAMIN/conv14/weightssave/RestoreV2_45*
validate_shape(*+
_class!
loc:@FirstAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_46/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv15/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_46/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_46AssignFirstAMIN/conv15/BatchNorm/betasave/RestoreV2_46*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_47/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv15/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_47/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_47Assign FirstAMIN/conv15/BatchNorm/gammasave/RestoreV2_47*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_48/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv15/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_48/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_48Assign&FirstAMIN/conv15/BatchNorm/moving_meansave/RestoreV2_48*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_49/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv15/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_49/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_49Assign*FirstAMIN/conv15/BatchNorm/moving_variancesave/RestoreV2_49*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_50/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv15/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_50/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_50AssignFirstAMIN/conv15/weightssave/RestoreV2_50*
validate_shape(*+
_class!
loc:@FirstAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_51/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv16/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_51/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_51	RestoreV2
save/Constsave/RestoreV2_51/tensor_names"save/RestoreV2_51/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_51AssignFirstAMIN/conv16/BatchNorm/betasave/RestoreV2_51*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_52/tensor_namesConst*
dtype0*N
valueEBCB9FirstAMIN/conv16/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_52/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_52	RestoreV2
save/Constsave/RestoreV2_52/tensor_names"save/RestoreV2_52/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_52Assign FirstAMIN/conv16/BatchNorm/gammasave/RestoreV2_52*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_53/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv16/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_53/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_53	RestoreV2
save/Constsave/RestoreV2_53/tensor_names"save/RestoreV2_53/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_53Assign&FirstAMIN/conv16/BatchNorm/moving_meansave/RestoreV2_53*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_54/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv16/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_54/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_54	RestoreV2
save/Constsave/RestoreV2_54/tensor_names"save/RestoreV2_54/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_54Assign*FirstAMIN/conv16/BatchNorm/moving_variancesave/RestoreV2_54*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_55/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv16/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_55/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_55	RestoreV2
save/Constsave/RestoreV2_55/tensor_names"save/RestoreV2_55/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_55AssignFirstAMIN/conv16/weightssave/RestoreV2_55*
validate_shape(*+
_class!
loc:@FirstAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_56/tensor_namesConst*
dtype0*F
value=B;B1FirstAMIN/conv17/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_56/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_56	RestoreV2
save/Constsave/RestoreV2_56/tensor_names"save/RestoreV2_56/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_56AssignFirstAMIN/conv17/weightssave/RestoreV2_56*
validate_shape(*+
_class!
loc:@FirstAMIN/conv17/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_57/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv2/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_57/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_57	RestoreV2
save/Constsave/RestoreV2_57/tensor_names"save/RestoreV2_57/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_57AssignFirstAMIN/conv2/BatchNorm/betasave/RestoreV2_57*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_58/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv2/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_58/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_58	RestoreV2
save/Constsave/RestoreV2_58/tensor_names"save/RestoreV2_58/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_58AssignFirstAMIN/conv2/BatchNorm/gammasave/RestoreV2_58*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_59/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv2/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_59/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_59	RestoreV2
save/Constsave/RestoreV2_59/tensor_names"save/RestoreV2_59/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_59Assign%FirstAMIN/conv2/BatchNorm/moving_meansave/RestoreV2_59*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_60/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv2/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_60/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_60	RestoreV2
save/Constsave/RestoreV2_60/tensor_names"save/RestoreV2_60/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_60Assign)FirstAMIN/conv2/BatchNorm/moving_variancesave/RestoreV2_60*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_61/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv2/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_61/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_61	RestoreV2
save/Constsave/RestoreV2_61/tensor_names"save/RestoreV2_61/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_61AssignFirstAMIN/conv2/weightssave/RestoreV2_61*
validate_shape(**
_class 
loc:@FirstAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_62/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv3/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_62/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_62	RestoreV2
save/Constsave/RestoreV2_62/tensor_names"save/RestoreV2_62/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_62AssignFirstAMIN/conv3/BatchNorm/betasave/RestoreV2_62*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_63/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv3/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_63/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_63	RestoreV2
save/Constsave/RestoreV2_63/tensor_names"save/RestoreV2_63/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_63AssignFirstAMIN/conv3/BatchNorm/gammasave/RestoreV2_63*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_64/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv3/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_64/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_64	RestoreV2
save/Constsave/RestoreV2_64/tensor_names"save/RestoreV2_64/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_64Assign%FirstAMIN/conv3/BatchNorm/moving_meansave/RestoreV2_64*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_65/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv3/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_65/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_65	RestoreV2
save/Constsave/RestoreV2_65/tensor_names"save/RestoreV2_65/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_65Assign)FirstAMIN/conv3/BatchNorm/moving_variancesave/RestoreV2_65*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_66/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv3/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_66/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_66	RestoreV2
save/Constsave/RestoreV2_66/tensor_names"save/RestoreV2_66/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_66AssignFirstAMIN/conv3/weightssave/RestoreV2_66*
validate_shape(**
_class 
loc:@FirstAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_67/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv4/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_67/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_67	RestoreV2
save/Constsave/RestoreV2_67/tensor_names"save/RestoreV2_67/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_67AssignFirstAMIN/conv4/BatchNorm/betasave/RestoreV2_67*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_68/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv4/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_68/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_68	RestoreV2
save/Constsave/RestoreV2_68/tensor_names"save/RestoreV2_68/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_68AssignFirstAMIN/conv4/BatchNorm/gammasave/RestoreV2_68*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_69/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv4/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_69/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_69	RestoreV2
save/Constsave/RestoreV2_69/tensor_names"save/RestoreV2_69/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_69Assign%FirstAMIN/conv4/BatchNorm/moving_meansave/RestoreV2_69*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_70/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv4/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_70/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_70	RestoreV2
save/Constsave/RestoreV2_70/tensor_names"save/RestoreV2_70/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_70Assign)FirstAMIN/conv4/BatchNorm/moving_variancesave/RestoreV2_70*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_71/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv4/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_71/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_71	RestoreV2
save/Constsave/RestoreV2_71/tensor_names"save/RestoreV2_71/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_71AssignFirstAMIN/conv4/weightssave/RestoreV2_71*
validate_shape(**
_class 
loc:@FirstAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_72/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv5/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_72/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_72	RestoreV2
save/Constsave/RestoreV2_72/tensor_names"save/RestoreV2_72/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_72AssignFirstAMIN/conv5/BatchNorm/betasave/RestoreV2_72*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_73/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv5/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_73/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_73	RestoreV2
save/Constsave/RestoreV2_73/tensor_names"save/RestoreV2_73/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_73AssignFirstAMIN/conv5/BatchNorm/gammasave/RestoreV2_73*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_74/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv5/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_74/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_74	RestoreV2
save/Constsave/RestoreV2_74/tensor_names"save/RestoreV2_74/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_74Assign%FirstAMIN/conv5/BatchNorm/moving_meansave/RestoreV2_74*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_75/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv5/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_75/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_75	RestoreV2
save/Constsave/RestoreV2_75/tensor_names"save/RestoreV2_75/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_75Assign)FirstAMIN/conv5/BatchNorm/moving_variancesave/RestoreV2_75*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_76/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv5/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_76/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_76	RestoreV2
save/Constsave/RestoreV2_76/tensor_names"save/RestoreV2_76/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_76AssignFirstAMIN/conv5/weightssave/RestoreV2_76*
validate_shape(**
_class 
loc:@FirstAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_77/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv6/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_77/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_77	RestoreV2
save/Constsave/RestoreV2_77/tensor_names"save/RestoreV2_77/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_77AssignFirstAMIN/conv6/BatchNorm/betasave/RestoreV2_77*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_78/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv6/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_78/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_78	RestoreV2
save/Constsave/RestoreV2_78/tensor_names"save/RestoreV2_78/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_78AssignFirstAMIN/conv6/BatchNorm/gammasave/RestoreV2_78*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_79/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv6/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_79/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_79	RestoreV2
save/Constsave/RestoreV2_79/tensor_names"save/RestoreV2_79/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_79Assign%FirstAMIN/conv6/BatchNorm/moving_meansave/RestoreV2_79*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_80/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv6/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_80/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_80	RestoreV2
save/Constsave/RestoreV2_80/tensor_names"save/RestoreV2_80/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_80Assign)FirstAMIN/conv6/BatchNorm/moving_variancesave/RestoreV2_80*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_81/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv6/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_81/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_81	RestoreV2
save/Constsave/RestoreV2_81/tensor_names"save/RestoreV2_81/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_81AssignFirstAMIN/conv6/weightssave/RestoreV2_81*
validate_shape(**
_class 
loc:@FirstAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_82/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv7/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_82/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_82	RestoreV2
save/Constsave/RestoreV2_82/tensor_names"save/RestoreV2_82/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_82AssignFirstAMIN/conv7/BatchNorm/betasave/RestoreV2_82*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_83/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv7/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_83/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_83	RestoreV2
save/Constsave/RestoreV2_83/tensor_names"save/RestoreV2_83/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_83AssignFirstAMIN/conv7/BatchNorm/gammasave/RestoreV2_83*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_84/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv7/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_84/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_84	RestoreV2
save/Constsave/RestoreV2_84/tensor_names"save/RestoreV2_84/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_84Assign%FirstAMIN/conv7/BatchNorm/moving_meansave/RestoreV2_84*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_85/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv7/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_85/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_85	RestoreV2
save/Constsave/RestoreV2_85/tensor_names"save/RestoreV2_85/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_85Assign)FirstAMIN/conv7/BatchNorm/moving_variancesave/RestoreV2_85*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_86/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv7/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_86/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_86	RestoreV2
save/Constsave/RestoreV2_86/tensor_names"save/RestoreV2_86/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_86AssignFirstAMIN/conv7/weightssave/RestoreV2_86*
validate_shape(**
_class 
loc:@FirstAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
save/RestoreV2_87/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv8/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_87/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_87	RestoreV2
save/Constsave/RestoreV2_87/tensor_names"save/RestoreV2_87/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_87AssignFirstAMIN/conv8/BatchNorm/betasave/RestoreV2_87*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_88/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv8/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_88/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_88	RestoreV2
save/Constsave/RestoreV2_88/tensor_names"save/RestoreV2_88/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_88AssignFirstAMIN/conv8/BatchNorm/gammasave/RestoreV2_88*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_89/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv8/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_89/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_89	RestoreV2
save/Constsave/RestoreV2_89/tensor_names"save/RestoreV2_89/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_89Assign%FirstAMIN/conv8/BatchNorm/moving_meansave/RestoreV2_89*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_90/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv8/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_90/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_90	RestoreV2
save/Constsave/RestoreV2_90/tensor_names"save/RestoreV2_90/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_90Assign)FirstAMIN/conv8/BatchNorm/moving_variancesave/RestoreV2_90*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_91/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv8/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_91/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_91	RestoreV2
save/Constsave/RestoreV2_91/tensor_names"save/RestoreV2_91/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_91AssignFirstAMIN/conv8/weightssave/RestoreV2_91*
validate_shape(**
_class 
loc:@FirstAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_92/tensor_namesConst*
dtype0*L
valueCBAB7FirstAMIN/conv9/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_92/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_92	RestoreV2
save/Constsave/RestoreV2_92/tensor_names"save/RestoreV2_92/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_92AssignFirstAMIN/conv9/BatchNorm/betasave/RestoreV2_92*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_93/tensor_namesConst*
dtype0*M
valueDBBB8FirstAMIN/conv9/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_93/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_93	RestoreV2
save/Constsave/RestoreV2_93/tensor_names"save/RestoreV2_93/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_93AssignFirstAMIN/conv9/BatchNorm/gammasave/RestoreV2_93*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_94/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv9/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_94/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_94	RestoreV2
save/Constsave/RestoreV2_94/tensor_names"save/RestoreV2_94/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_94Assign%FirstAMIN/conv9/BatchNorm/moving_meansave/RestoreV2_94*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_95/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv9/BatchNorm/moving_variance*
_output_shapes
:
k
"save/RestoreV2_95/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_95	RestoreV2
save/Constsave/RestoreV2_95/tensor_names"save/RestoreV2_95/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_95Assign)FirstAMIN/conv9/BatchNorm/moving_variancesave/RestoreV2_95*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_96/tensor_namesConst*
dtype0*E
value<B:B0FirstAMIN/conv9/weights/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_96/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_96	RestoreV2
save/Constsave/RestoreV2_96/tensor_names"save/RestoreV2_96/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_96AssignFirstAMIN/conv9/weightssave/RestoreV2_96*
validate_shape(**
_class 
loc:@FirstAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:<
�
save/RestoreV2_97/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/bconv1/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_97/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_97	RestoreV2
save/Constsave/RestoreV2_97/tensor_names"save/RestoreV2_97/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_97Assign SecondAMIN/bconv1/BatchNorm/betasave/RestoreV2_97*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_98/tensor_namesConst*
dtype0*O
valueFBDB:SecondAMIN/bconv1/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
k
"save/RestoreV2_98/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_98	RestoreV2
save/Constsave/RestoreV2_98/tensor_names"save/RestoreV2_98/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_98Assign!SecondAMIN/bconv1/BatchNorm/gammasave/RestoreV2_98*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_99/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv1/BatchNorm/moving_mean*
_output_shapes
:
k
"save/RestoreV2_99/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_99	RestoreV2
save/Constsave/RestoreV2_99/tensor_names"save/RestoreV2_99/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_99Assign'SecondAMIN/bconv1/BatchNorm/moving_meansave/RestoreV2_99*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_100/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv1/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_100/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_100	RestoreV2
save/Constsave/RestoreV2_100/tensor_names#save/RestoreV2_100/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_100Assign+SecondAMIN/bconv1/BatchNorm/moving_variancesave/RestoreV2_100*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_101/tensor_namesConst*
dtype0*G
value>B<B2SecondAMIN/bconv1/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_101/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_101	RestoreV2
save/Constsave/RestoreV2_101/tensor_names#save/RestoreV2_101/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_101AssignSecondAMIN/bconv1/weightssave/RestoreV2_101*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_102/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/bconv2/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_102/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_102	RestoreV2
save/Constsave/RestoreV2_102/tensor_names#save/RestoreV2_102/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_102Assign SecondAMIN/bconv2/BatchNorm/betasave/RestoreV2_102*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_103/tensor_namesConst*
dtype0*O
valueFBDB:SecondAMIN/bconv2/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_103/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_103	RestoreV2
save/Constsave/RestoreV2_103/tensor_names#save/RestoreV2_103/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_103Assign!SecondAMIN/bconv2/BatchNorm/gammasave/RestoreV2_103*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_104/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv2/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_104/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_104	RestoreV2
save/Constsave/RestoreV2_104/tensor_names#save/RestoreV2_104/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_104Assign'SecondAMIN/bconv2/BatchNorm/moving_meansave/RestoreV2_104*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_105/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv2/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_105/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_105	RestoreV2
save/Constsave/RestoreV2_105/tensor_names#save/RestoreV2_105/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_105Assign+SecondAMIN/bconv2/BatchNorm/moving_variancesave/RestoreV2_105*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_106/tensor_namesConst*
dtype0*G
value>B<B2SecondAMIN/bconv2/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_106/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_106	RestoreV2
save/Constsave/RestoreV2_106/tensor_names#save/RestoreV2_106/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_106AssignSecondAMIN/bconv2/weightssave/RestoreV2_106*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_107/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/bconv3/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_107/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_107	RestoreV2
save/Constsave/RestoreV2_107/tensor_names#save/RestoreV2_107/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_107Assign SecondAMIN/bconv3/BatchNorm/betasave/RestoreV2_107*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_108/tensor_namesConst*
dtype0*O
valueFBDB:SecondAMIN/bconv3/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_108/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_108	RestoreV2
save/Constsave/RestoreV2_108/tensor_names#save/RestoreV2_108/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_108Assign!SecondAMIN/bconv3/BatchNorm/gammasave/RestoreV2_108*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_109/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv3/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_109/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_109	RestoreV2
save/Constsave/RestoreV2_109/tensor_names#save/RestoreV2_109/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_109Assign'SecondAMIN/bconv3/BatchNorm/moving_meansave/RestoreV2_109*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_110/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv3/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_110/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_110	RestoreV2
save/Constsave/RestoreV2_110/tensor_names#save/RestoreV2_110/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_110Assign+SecondAMIN/bconv3/BatchNorm/moving_variancesave/RestoreV2_110*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_111/tensor_namesConst*
dtype0*G
value>B<B2SecondAMIN/bconv3/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_111/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_111	RestoreV2
save/Constsave/RestoreV2_111/tensor_names#save/RestoreV2_111/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_111AssignSecondAMIN/bconv3/weightssave/RestoreV2_111*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_112/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv0/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_112/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_112	RestoreV2
save/Constsave/RestoreV2_112/tensor_names#save/RestoreV2_112/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_112AssignSecondAMIN/conv0/BatchNorm/betasave/RestoreV2_112*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_113/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv0/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_113/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_113	RestoreV2
save/Constsave/RestoreV2_113/tensor_names#save/RestoreV2_113/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_113Assign SecondAMIN/conv0/BatchNorm/gammasave/RestoreV2_113*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_114/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv0/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_114/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_114	RestoreV2
save/Constsave/RestoreV2_114/tensor_names#save/RestoreV2_114/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_114Assign&SecondAMIN/conv0/BatchNorm/moving_meansave/RestoreV2_114*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_115/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv0/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_115/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_115	RestoreV2
save/Constsave/RestoreV2_115/tensor_names#save/RestoreV2_115/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_115Assign*SecondAMIN/conv0/BatchNorm/moving_variancesave/RestoreV2_115*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_116/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv0/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_116/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_116	RestoreV2
save/Constsave/RestoreV2_116/tensor_names#save/RestoreV2_116/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_116AssignSecondAMIN/conv0/weightssave/RestoreV2_116*
validate_shape(*+
_class!
loc:@SecondAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_117/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv1/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_117/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_117	RestoreV2
save/Constsave/RestoreV2_117/tensor_names#save/RestoreV2_117/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_117AssignSecondAMIN/conv1/BatchNorm/betasave/RestoreV2_117*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_118/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv1/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_118/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_118	RestoreV2
save/Constsave/RestoreV2_118/tensor_names#save/RestoreV2_118/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_118Assign SecondAMIN/conv1/BatchNorm/gammasave/RestoreV2_118*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_119/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv1/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_119/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_119	RestoreV2
save/Constsave/RestoreV2_119/tensor_names#save/RestoreV2_119/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_119Assign&SecondAMIN/conv1/BatchNorm/moving_meansave/RestoreV2_119*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_120/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv1/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_120/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_120	RestoreV2
save/Constsave/RestoreV2_120/tensor_names#save/RestoreV2_120/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_120Assign*SecondAMIN/conv1/BatchNorm/moving_variancesave/RestoreV2_120*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_121/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv1/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_121/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_121	RestoreV2
save/Constsave/RestoreV2_121/tensor_names#save/RestoreV2_121/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_121AssignSecondAMIN/conv1/weightssave/RestoreV2_121*
validate_shape(*+
_class!
loc:@SecondAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_122/tensor_namesConst*
dtype0*G
value>B<B2SecondAMIN/conv11/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_122/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_122	RestoreV2
save/Constsave/RestoreV2_122/tensor_names#save/RestoreV2_122/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_122AssignSecondAMIN/conv11/weightssave/RestoreV2_122*
validate_shape(*,
_class"
 loc:@SecondAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_123/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv2/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_123/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_123	RestoreV2
save/Constsave/RestoreV2_123/tensor_names#save/RestoreV2_123/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_123AssignSecondAMIN/conv2/BatchNorm/betasave/RestoreV2_123*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_124/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv2/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_124/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_124	RestoreV2
save/Constsave/RestoreV2_124/tensor_names#save/RestoreV2_124/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_124Assign SecondAMIN/conv2/BatchNorm/gammasave/RestoreV2_124*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_125/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv2/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_125/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_125	RestoreV2
save/Constsave/RestoreV2_125/tensor_names#save/RestoreV2_125/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_125Assign&SecondAMIN/conv2/BatchNorm/moving_meansave/RestoreV2_125*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_126/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv2/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_126/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_126	RestoreV2
save/Constsave/RestoreV2_126/tensor_names#save/RestoreV2_126/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_126Assign*SecondAMIN/conv2/BatchNorm/moving_variancesave/RestoreV2_126*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_127/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv2/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_127/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_127	RestoreV2
save/Constsave/RestoreV2_127/tensor_names#save/RestoreV2_127/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_127AssignSecondAMIN/conv2/weightssave/RestoreV2_127*
validate_shape(*+
_class!
loc:@SecondAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_128/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv3/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_128/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_128	RestoreV2
save/Constsave/RestoreV2_128/tensor_names#save/RestoreV2_128/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_128AssignSecondAMIN/conv3/BatchNorm/betasave/RestoreV2_128*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_129/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv3/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_129/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_129	RestoreV2
save/Constsave/RestoreV2_129/tensor_names#save/RestoreV2_129/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_129Assign SecondAMIN/conv3/BatchNorm/gammasave/RestoreV2_129*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_130/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv3/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_130/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_130	RestoreV2
save/Constsave/RestoreV2_130/tensor_names#save/RestoreV2_130/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_130Assign&SecondAMIN/conv3/BatchNorm/moving_meansave/RestoreV2_130*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_131/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv3/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_131/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_131	RestoreV2
save/Constsave/RestoreV2_131/tensor_names#save/RestoreV2_131/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_131Assign*SecondAMIN/conv3/BatchNorm/moving_variancesave/RestoreV2_131*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_132/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv3/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_132/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_132	RestoreV2
save/Constsave/RestoreV2_132/tensor_names#save/RestoreV2_132/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_132AssignSecondAMIN/conv3/weightssave/RestoreV2_132*
validate_shape(*+
_class!
loc:@SecondAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_133/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv4/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_133/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_133	RestoreV2
save/Constsave/RestoreV2_133/tensor_names#save/RestoreV2_133/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_133AssignSecondAMIN/conv4/BatchNorm/betasave/RestoreV2_133*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_134/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv4/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_134/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_134	RestoreV2
save/Constsave/RestoreV2_134/tensor_names#save/RestoreV2_134/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_134Assign SecondAMIN/conv4/BatchNorm/gammasave/RestoreV2_134*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_135/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv4/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_135/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_135	RestoreV2
save/Constsave/RestoreV2_135/tensor_names#save/RestoreV2_135/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_135Assign&SecondAMIN/conv4/BatchNorm/moving_meansave/RestoreV2_135*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_136/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv4/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_136/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_136	RestoreV2
save/Constsave/RestoreV2_136/tensor_names#save/RestoreV2_136/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_136Assign*SecondAMIN/conv4/BatchNorm/moving_variancesave/RestoreV2_136*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_137/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv4/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_137/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_137	RestoreV2
save/Constsave/RestoreV2_137/tensor_names#save/RestoreV2_137/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_137AssignSecondAMIN/conv4/weightssave/RestoreV2_137*
validate_shape(*+
_class!
loc:@SecondAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_138/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv5/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_138/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_138	RestoreV2
save/Constsave/RestoreV2_138/tensor_names#save/RestoreV2_138/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_138AssignSecondAMIN/conv5/BatchNorm/betasave/RestoreV2_138*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_139/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv5/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_139/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_139	RestoreV2
save/Constsave/RestoreV2_139/tensor_names#save/RestoreV2_139/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_139Assign SecondAMIN/conv5/BatchNorm/gammasave/RestoreV2_139*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_140/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv5/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_140/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_140	RestoreV2
save/Constsave/RestoreV2_140/tensor_names#save/RestoreV2_140/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_140Assign&SecondAMIN/conv5/BatchNorm/moving_meansave/RestoreV2_140*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_141/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv5/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_141/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_141	RestoreV2
save/Constsave/RestoreV2_141/tensor_names#save/RestoreV2_141/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_141Assign*SecondAMIN/conv5/BatchNorm/moving_variancesave/RestoreV2_141*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_142/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv5/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_142/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_142	RestoreV2
save/Constsave/RestoreV2_142/tensor_names#save/RestoreV2_142/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_142AssignSecondAMIN/conv5/weightssave/RestoreV2_142*
validate_shape(*+
_class!
loc:@SecondAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_143/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv6/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_143/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_143	RestoreV2
save/Constsave/RestoreV2_143/tensor_names#save/RestoreV2_143/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_143AssignSecondAMIN/conv6/BatchNorm/betasave/RestoreV2_143*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_144/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv6/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_144/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_144	RestoreV2
save/Constsave/RestoreV2_144/tensor_names#save/RestoreV2_144/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_144Assign SecondAMIN/conv6/BatchNorm/gammasave/RestoreV2_144*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_145/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv6/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_145/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_145	RestoreV2
save/Constsave/RestoreV2_145/tensor_names#save/RestoreV2_145/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_145Assign&SecondAMIN/conv6/BatchNorm/moving_meansave/RestoreV2_145*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_146/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv6/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_146/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_146	RestoreV2
save/Constsave/RestoreV2_146/tensor_names#save/RestoreV2_146/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_146Assign*SecondAMIN/conv6/BatchNorm/moving_variancesave/RestoreV2_146*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_147/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv6/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_147/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_147	RestoreV2
save/Constsave/RestoreV2_147/tensor_names#save/RestoreV2_147/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_147AssignSecondAMIN/conv6/weightssave/RestoreV2_147*
validate_shape(*+
_class!
loc:@SecondAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_148/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv7/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_148/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_148	RestoreV2
save/Constsave/RestoreV2_148/tensor_names#save/RestoreV2_148/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_148AssignSecondAMIN/conv7/BatchNorm/betasave/RestoreV2_148*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_149/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv7/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_149/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_149	RestoreV2
save/Constsave/RestoreV2_149/tensor_names#save/RestoreV2_149/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_149Assign SecondAMIN/conv7/BatchNorm/gammasave/RestoreV2_149*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_150/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv7/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_150/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_150	RestoreV2
save/Constsave/RestoreV2_150/tensor_names#save/RestoreV2_150/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_150Assign&SecondAMIN/conv7/BatchNorm/moving_meansave/RestoreV2_150*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_151/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv7/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_151/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_151	RestoreV2
save/Constsave/RestoreV2_151/tensor_names#save/RestoreV2_151/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_151Assign*SecondAMIN/conv7/BatchNorm/moving_variancesave/RestoreV2_151*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_152/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv7/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_152/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_152	RestoreV2
save/Constsave/RestoreV2_152/tensor_names#save/RestoreV2_152/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_152AssignSecondAMIN/conv7/weightssave/RestoreV2_152*
validate_shape(*+
_class!
loc:@SecondAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
save/RestoreV2_153/tensor_namesConst*
dtype0*M
valueDBBB8SecondAMIN/conv8/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_153/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_153	RestoreV2
save/Constsave/RestoreV2_153/tensor_names#save/RestoreV2_153/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_153AssignSecondAMIN/conv8/BatchNorm/betasave/RestoreV2_153*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_154/tensor_namesConst*
dtype0*N
valueEBCB9SecondAMIN/conv8/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_154/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_154	RestoreV2
save/Constsave/RestoreV2_154/tensor_names#save/RestoreV2_154/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_154Assign SecondAMIN/conv8/BatchNorm/gammasave/RestoreV2_154*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_155/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv8/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_155/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_155	RestoreV2
save/Constsave/RestoreV2_155/tensor_names#save/RestoreV2_155/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_155Assign&SecondAMIN/conv8/BatchNorm/moving_meansave/RestoreV2_155*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_156/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv8/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_156/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_156	RestoreV2
save/Constsave/RestoreV2_156/tensor_names#save/RestoreV2_156/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_156Assign*SecondAMIN/conv8/BatchNorm/moving_variancesave/RestoreV2_156*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_157/tensor_namesConst*
dtype0*F
value=B;B1SecondAMIN/conv8/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_157/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_157	RestoreV2
save/Constsave/RestoreV2_157/tensor_names#save/RestoreV2_157/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_157AssignSecondAMIN/conv8/weightssave/RestoreV2_157*
validate_shape(*+
_class!
loc:@SecondAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_158/tensor_namesConst*
dtype0*J
valueAB?B5ThirdAMIN/bconv10_sc/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_158/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_158	RestoreV2
save/Constsave/RestoreV2_158/tensor_names#save/RestoreV2_158/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_158AssignThirdAMIN/bconv10_sc/weightssave/RestoreV2_158*
validate_shape(*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
use_locking(*
T0*
_output_shapes

:d
�
save/RestoreV2_159/tensor_namesConst*
dtype0*P
valueGBEB;ThirdAMIN/bconv15_sc333_dis/biases/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_159/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_159	RestoreV2
save/Constsave/RestoreV2_159/tensor_names#save/RestoreV2_159/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_159Assign"ThirdAMIN/bconv15_sc333_dis/biasessave/RestoreV2_159*
validate_shape(*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
use_locking(*
T0*
_output_shapes
:d
�
save/RestoreV2_160/tensor_namesConst*
dtype0*Q
valueHBFB<ThirdAMIN/bconv15_sc333_dis/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_160/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_160	RestoreV2
save/Constsave/RestoreV2_160/tensor_names#save/RestoreV2_160/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_160Assign#ThirdAMIN/bconv15_sc333_dis/weightssave/RestoreV2_160*
validate_shape(*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
use_locking(*
T0*
_output_shapes
:	�d
�
save/RestoreV2_161/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv10/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_161/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_161	RestoreV2
save/Constsave/RestoreV2_161/tensor_names#save/RestoreV2_161/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_161AssignThirdAMIN/conv10/BatchNorm/betasave/RestoreV2_161*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_162/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv10/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_162/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_162	RestoreV2
save/Constsave/RestoreV2_162/tensor_names#save/RestoreV2_162/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_162Assign ThirdAMIN/conv10/BatchNorm/gammasave/RestoreV2_162*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_163/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv10/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_163/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_163	RestoreV2
save/Constsave/RestoreV2_163/tensor_names#save/RestoreV2_163/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_163Assign&ThirdAMIN/conv10/BatchNorm/moving_meansave/RestoreV2_163*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_164/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv10/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_164/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_164	RestoreV2
save/Constsave/RestoreV2_164/tensor_names#save/RestoreV2_164/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_164Assign*ThirdAMIN/conv10/BatchNorm/moving_variancesave/RestoreV2_164*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_165/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv10/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_165/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_165	RestoreV2
save/Constsave/RestoreV2_165/tensor_names#save/RestoreV2_165/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_165AssignThirdAMIN/conv10/weightssave/RestoreV2_165*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_166/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv12/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_166/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_166	RestoreV2
save/Constsave/RestoreV2_166/tensor_names#save/RestoreV2_166/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_166AssignThirdAMIN/conv12/BatchNorm/betasave/RestoreV2_166*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_167/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv12/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_167/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_167	RestoreV2
save/Constsave/RestoreV2_167/tensor_names#save/RestoreV2_167/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_167Assign ThirdAMIN/conv12/BatchNorm/gammasave/RestoreV2_167*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_168/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv12/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_168/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_168	RestoreV2
save/Constsave/RestoreV2_168/tensor_names#save/RestoreV2_168/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_168Assign&ThirdAMIN/conv12/BatchNorm/moving_meansave/RestoreV2_168*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_169/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv12/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_169/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_169	RestoreV2
save/Constsave/RestoreV2_169/tensor_names#save/RestoreV2_169/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_169Assign*ThirdAMIN/conv12/BatchNorm/moving_variancesave/RestoreV2_169*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_170/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv12/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_170/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_170	RestoreV2
save/Constsave/RestoreV2_170/tensor_names#save/RestoreV2_170/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_170AssignThirdAMIN/conv12/weightssave/RestoreV2_170*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_171/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv13/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_171/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_171	RestoreV2
save/Constsave/RestoreV2_171/tensor_names#save/RestoreV2_171/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_171AssignThirdAMIN/conv13/BatchNorm/betasave/RestoreV2_171*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_172/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv13/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_172/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_172	RestoreV2
save/Constsave/RestoreV2_172/tensor_names#save/RestoreV2_172/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_172Assign ThirdAMIN/conv13/BatchNorm/gammasave/RestoreV2_172*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_173/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv13/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_173/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_173	RestoreV2
save/Constsave/RestoreV2_173/tensor_names#save/RestoreV2_173/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_173Assign&ThirdAMIN/conv13/BatchNorm/moving_meansave/RestoreV2_173*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_174/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv13/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_174/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_174	RestoreV2
save/Constsave/RestoreV2_174/tensor_names#save/RestoreV2_174/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_174Assign*ThirdAMIN/conv13/BatchNorm/moving_variancesave/RestoreV2_174*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_175/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv13/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_175/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_175	RestoreV2
save/Constsave/RestoreV2_175/tensor_names#save/RestoreV2_175/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_175AssignThirdAMIN/conv13/weightssave/RestoreV2_175*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_176/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv14/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_176/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_176	RestoreV2
save/Constsave/RestoreV2_176/tensor_names#save/RestoreV2_176/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_176AssignThirdAMIN/conv14/BatchNorm/betasave/RestoreV2_176*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_177/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv14/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_177/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_177	RestoreV2
save/Constsave/RestoreV2_177/tensor_names#save/RestoreV2_177/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_177Assign ThirdAMIN/conv14/BatchNorm/gammasave/RestoreV2_177*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_178/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv14/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_178/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_178	RestoreV2
save/Constsave/RestoreV2_178/tensor_names#save/RestoreV2_178/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_178Assign&ThirdAMIN/conv14/BatchNorm/moving_meansave/RestoreV2_178*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_179/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv14/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_179/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_179	RestoreV2
save/Constsave/RestoreV2_179/tensor_names#save/RestoreV2_179/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_179Assign*ThirdAMIN/conv14/BatchNorm/moving_variancesave/RestoreV2_179*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_180/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv14/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_180/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_180	RestoreV2
save/Constsave/RestoreV2_180/tensor_names#save/RestoreV2_180/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_180AssignThirdAMIN/conv14/weightssave/RestoreV2_180*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_181/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv15/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_181/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_181	RestoreV2
save/Constsave/RestoreV2_181/tensor_names#save/RestoreV2_181/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_181AssignThirdAMIN/conv15/BatchNorm/betasave/RestoreV2_181*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_182/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv15/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_182/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_182	RestoreV2
save/Constsave/RestoreV2_182/tensor_names#save/RestoreV2_182/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_182Assign ThirdAMIN/conv15/BatchNorm/gammasave/RestoreV2_182*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_183/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv15/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_183/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_183	RestoreV2
save/Constsave/RestoreV2_183/tensor_names#save/RestoreV2_183/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_183Assign&ThirdAMIN/conv15/BatchNorm/moving_meansave/RestoreV2_183*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_184/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv15/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_184/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_184	RestoreV2
save/Constsave/RestoreV2_184/tensor_names#save/RestoreV2_184/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_184Assign*ThirdAMIN/conv15/BatchNorm/moving_variancesave/RestoreV2_184*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_185/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv15/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_185/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_185	RestoreV2
save/Constsave/RestoreV2_185/tensor_names#save/RestoreV2_185/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_185AssignThirdAMIN/conv15/weightssave/RestoreV2_185*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_186/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv16/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_186/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_186	RestoreV2
save/Constsave/RestoreV2_186/tensor_names#save/RestoreV2_186/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_186AssignThirdAMIN/conv16/BatchNorm/betasave/RestoreV2_186*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_187/tensor_namesConst*
dtype0*N
valueEBCB9ThirdAMIN/conv16/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_187/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_187	RestoreV2
save/Constsave/RestoreV2_187/tensor_names#save/RestoreV2_187/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_187Assign ThirdAMIN/conv16/BatchNorm/gammasave/RestoreV2_187*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_188/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv16/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_188/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_188	RestoreV2
save/Constsave/RestoreV2_188/tensor_names#save/RestoreV2_188/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_188Assign&ThirdAMIN/conv16/BatchNorm/moving_meansave/RestoreV2_188*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_189/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv16/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_189/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_189	RestoreV2
save/Constsave/RestoreV2_189/tensor_names#save/RestoreV2_189/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_189Assign*ThirdAMIN/conv16/BatchNorm/moving_variancesave/RestoreV2_189*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_190/tensor_namesConst*
dtype0*F
value=B;B1ThirdAMIN/conv16/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_190/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_190	RestoreV2
save/Constsave/RestoreV2_190/tensor_names#save/RestoreV2_190/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_190AssignThirdAMIN/conv16/weightssave/RestoreV2_190*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/RestoreV2_191/tensor_namesConst*
dtype0*L
valueCBAB7ThirdAMIN/conv9/BatchNorm/beta/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_191/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_191	RestoreV2
save/Constsave/RestoreV2_191/tensor_names#save/RestoreV2_191/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_191AssignThirdAMIN/conv9/BatchNorm/betasave/RestoreV2_191*
validate_shape(*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_192/tensor_namesConst*
dtype0*M
valueDBBB8ThirdAMIN/conv9/BatchNorm/gamma/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_192/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_192	RestoreV2
save/Constsave/RestoreV2_192/tensor_names#save/RestoreV2_192/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_192AssignThirdAMIN/conv9/BatchNorm/gammasave/RestoreV2_192*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_193/tensor_namesConst*
dtype0*:
value1B/B%ThirdAMIN/conv9/BatchNorm/moving_mean*
_output_shapes
:
l
#save/RestoreV2_193/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_193	RestoreV2
save/Constsave/RestoreV2_193/tensor_names#save/RestoreV2_193/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_193Assign%ThirdAMIN/conv9/BatchNorm/moving_meansave/RestoreV2_193*
validate_shape(*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_194/tensor_namesConst*
dtype0*>
value5B3B)ThirdAMIN/conv9/BatchNorm/moving_variance*
_output_shapes
:
l
#save/RestoreV2_194/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_194	RestoreV2
save/Constsave/RestoreV2_194/tensor_names#save/RestoreV2_194/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_194Assign)ThirdAMIN/conv9/BatchNorm/moving_variancesave/RestoreV2_194*
validate_shape(*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save/RestoreV2_195/tensor_namesConst*
dtype0*E
value<B:B0ThirdAMIN/conv9/weights/ExponentialMovingAverage*
_output_shapes
:
l
#save/RestoreV2_195/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2_195	RestoreV2
save/Constsave/RestoreV2_195/tensor_names#save/RestoreV2_195/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_195AssignThirdAMIN/conv9/weightssave/RestoreV2_195*
validate_shape(**
_class 
loc:@ThirdAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_5d90558ba21b4be38219384e11a19494/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�6
save_1/SaveV2/tensor_namesConst*
dtype0*�5
value�5B�5�BFirstAMIN/bconv1/BatchNorm/betaB FirstAMIN/bconv1/BatchNorm/gammaB&FirstAMIN/bconv1/BatchNorm/moving_meanB*FirstAMIN/bconv1/BatchNorm/moving_varianceBFirstAMIN/bconv1/weightsBFirstAMIN/bconv2/BatchNorm/betaB FirstAMIN/bconv2/BatchNorm/gammaB&FirstAMIN/bconv2/BatchNorm/moving_meanB*FirstAMIN/bconv2/BatchNorm/moving_varianceBFirstAMIN/bconv2/weightsBFirstAMIN/bconv3/BatchNorm/betaB FirstAMIN/bconv3/BatchNorm/gammaB&FirstAMIN/bconv3/BatchNorm/moving_meanB*FirstAMIN/bconv3/BatchNorm/moving_varianceBFirstAMIN/bconv3/weightsBFirstAMIN/conv0/BatchNorm/betaBFirstAMIN/conv0/BatchNorm/gammaB%FirstAMIN/conv0/BatchNorm/moving_meanB)FirstAMIN/conv0/BatchNorm/moving_varianceBFirstAMIN/conv0/weightsBFirstAMIN/conv1/BatchNorm/betaBFirstAMIN/conv1/BatchNorm/gammaB%FirstAMIN/conv1/BatchNorm/moving_meanB)FirstAMIN/conv1/BatchNorm/moving_varianceBFirstAMIN/conv1/weightsBFirstAMIN/conv10/BatchNorm/betaB FirstAMIN/conv10/BatchNorm/gammaB&FirstAMIN/conv10/BatchNorm/moving_meanB*FirstAMIN/conv10/BatchNorm/moving_varianceBFirstAMIN/conv10/weightsBFirstAMIN/conv11/weightsBFirstAMIN/conv12/BatchNorm/betaB FirstAMIN/conv12/BatchNorm/gammaB&FirstAMIN/conv12/BatchNorm/moving_meanB*FirstAMIN/conv12/BatchNorm/moving_varianceBFirstAMIN/conv12/weightsBFirstAMIN/conv13/BatchNorm/betaB FirstAMIN/conv13/BatchNorm/gammaB&FirstAMIN/conv13/BatchNorm/moving_meanB*FirstAMIN/conv13/BatchNorm/moving_varianceBFirstAMIN/conv13/weightsBFirstAMIN/conv14/BatchNorm/betaB FirstAMIN/conv14/BatchNorm/gammaB&FirstAMIN/conv14/BatchNorm/moving_meanB*FirstAMIN/conv14/BatchNorm/moving_varianceBFirstAMIN/conv14/weightsBFirstAMIN/conv15/BatchNorm/betaB FirstAMIN/conv15/BatchNorm/gammaB&FirstAMIN/conv15/BatchNorm/moving_meanB*FirstAMIN/conv15/BatchNorm/moving_varianceBFirstAMIN/conv15/weightsBFirstAMIN/conv16/BatchNorm/betaB FirstAMIN/conv16/BatchNorm/gammaB&FirstAMIN/conv16/BatchNorm/moving_meanB*FirstAMIN/conv16/BatchNorm/moving_varianceBFirstAMIN/conv16/weightsBFirstAMIN/conv17/weightsBFirstAMIN/conv2/BatchNorm/betaBFirstAMIN/conv2/BatchNorm/gammaB%FirstAMIN/conv2/BatchNorm/moving_meanB)FirstAMIN/conv2/BatchNorm/moving_varianceBFirstAMIN/conv2/weightsBFirstAMIN/conv3/BatchNorm/betaBFirstAMIN/conv3/BatchNorm/gammaB%FirstAMIN/conv3/BatchNorm/moving_meanB)FirstAMIN/conv3/BatchNorm/moving_varianceBFirstAMIN/conv3/weightsBFirstAMIN/conv4/BatchNorm/betaBFirstAMIN/conv4/BatchNorm/gammaB%FirstAMIN/conv4/BatchNorm/moving_meanB)FirstAMIN/conv4/BatchNorm/moving_varianceBFirstAMIN/conv4/weightsBFirstAMIN/conv5/BatchNorm/betaBFirstAMIN/conv5/BatchNorm/gammaB%FirstAMIN/conv5/BatchNorm/moving_meanB)FirstAMIN/conv5/BatchNorm/moving_varianceBFirstAMIN/conv5/weightsBFirstAMIN/conv6/BatchNorm/betaBFirstAMIN/conv6/BatchNorm/gammaB%FirstAMIN/conv6/BatchNorm/moving_meanB)FirstAMIN/conv6/BatchNorm/moving_varianceBFirstAMIN/conv6/weightsBFirstAMIN/conv7/BatchNorm/betaBFirstAMIN/conv7/BatchNorm/gammaB%FirstAMIN/conv7/BatchNorm/moving_meanB)FirstAMIN/conv7/BatchNorm/moving_varianceBFirstAMIN/conv7/weightsBFirstAMIN/conv8/BatchNorm/betaBFirstAMIN/conv8/BatchNorm/gammaB%FirstAMIN/conv8/BatchNorm/moving_meanB)FirstAMIN/conv8/BatchNorm/moving_varianceBFirstAMIN/conv8/weightsBFirstAMIN/conv9/BatchNorm/betaBFirstAMIN/conv9/BatchNorm/gammaB%FirstAMIN/conv9/BatchNorm/moving_meanB)FirstAMIN/conv9/BatchNorm/moving_varianceBFirstAMIN/conv9/weightsB SecondAMIN/bconv1/BatchNorm/betaB!SecondAMIN/bconv1/BatchNorm/gammaB'SecondAMIN/bconv1/BatchNorm/moving_meanB+SecondAMIN/bconv1/BatchNorm/moving_varianceBSecondAMIN/bconv1/weightsB SecondAMIN/bconv2/BatchNorm/betaB!SecondAMIN/bconv2/BatchNorm/gammaB'SecondAMIN/bconv2/BatchNorm/moving_meanB+SecondAMIN/bconv2/BatchNorm/moving_varianceBSecondAMIN/bconv2/weightsB SecondAMIN/bconv3/BatchNorm/betaB!SecondAMIN/bconv3/BatchNorm/gammaB'SecondAMIN/bconv3/BatchNorm/moving_meanB+SecondAMIN/bconv3/BatchNorm/moving_varianceBSecondAMIN/bconv3/weightsBSecondAMIN/conv0/BatchNorm/betaB SecondAMIN/conv0/BatchNorm/gammaB&SecondAMIN/conv0/BatchNorm/moving_meanB*SecondAMIN/conv0/BatchNorm/moving_varianceBSecondAMIN/conv0/weightsBSecondAMIN/conv1/BatchNorm/betaB SecondAMIN/conv1/BatchNorm/gammaB&SecondAMIN/conv1/BatchNorm/moving_meanB*SecondAMIN/conv1/BatchNorm/moving_varianceBSecondAMIN/conv1/weightsBSecondAMIN/conv11/weightsBSecondAMIN/conv2/BatchNorm/betaB SecondAMIN/conv2/BatchNorm/gammaB&SecondAMIN/conv2/BatchNorm/moving_meanB*SecondAMIN/conv2/BatchNorm/moving_varianceBSecondAMIN/conv2/weightsBSecondAMIN/conv3/BatchNorm/betaB SecondAMIN/conv3/BatchNorm/gammaB&SecondAMIN/conv3/BatchNorm/moving_meanB*SecondAMIN/conv3/BatchNorm/moving_varianceBSecondAMIN/conv3/weightsBSecondAMIN/conv4/BatchNorm/betaB SecondAMIN/conv4/BatchNorm/gammaB&SecondAMIN/conv4/BatchNorm/moving_meanB*SecondAMIN/conv4/BatchNorm/moving_varianceBSecondAMIN/conv4/weightsBSecondAMIN/conv5/BatchNorm/betaB SecondAMIN/conv5/BatchNorm/gammaB&SecondAMIN/conv5/BatchNorm/moving_meanB*SecondAMIN/conv5/BatchNorm/moving_varianceBSecondAMIN/conv5/weightsBSecondAMIN/conv6/BatchNorm/betaB SecondAMIN/conv6/BatchNorm/gammaB&SecondAMIN/conv6/BatchNorm/moving_meanB*SecondAMIN/conv6/BatchNorm/moving_varianceBSecondAMIN/conv6/weightsBSecondAMIN/conv7/BatchNorm/betaB SecondAMIN/conv7/BatchNorm/gammaB&SecondAMIN/conv7/BatchNorm/moving_meanB*SecondAMIN/conv7/BatchNorm/moving_varianceBSecondAMIN/conv7/weightsBSecondAMIN/conv8/BatchNorm/betaB SecondAMIN/conv8/BatchNorm/gammaB&SecondAMIN/conv8/BatchNorm/moving_meanB*SecondAMIN/conv8/BatchNorm/moving_varianceBSecondAMIN/conv8/weightsBThirdAMIN/bconv10_sc/weightsB"ThirdAMIN/bconv15_sc333_dis/biasesB#ThirdAMIN/bconv15_sc333_dis/weightsBThirdAMIN/conv10/BatchNorm/betaB ThirdAMIN/conv10/BatchNorm/gammaB&ThirdAMIN/conv10/BatchNorm/moving_meanB*ThirdAMIN/conv10/BatchNorm/moving_varianceBThirdAMIN/conv10/weightsBThirdAMIN/conv12/BatchNorm/betaB ThirdAMIN/conv12/BatchNorm/gammaB&ThirdAMIN/conv12/BatchNorm/moving_meanB*ThirdAMIN/conv12/BatchNorm/moving_varianceBThirdAMIN/conv12/weightsBThirdAMIN/conv13/BatchNorm/betaB ThirdAMIN/conv13/BatchNorm/gammaB&ThirdAMIN/conv13/BatchNorm/moving_meanB*ThirdAMIN/conv13/BatchNorm/moving_varianceBThirdAMIN/conv13/weightsBThirdAMIN/conv14/BatchNorm/betaB ThirdAMIN/conv14/BatchNorm/gammaB&ThirdAMIN/conv14/BatchNorm/moving_meanB*ThirdAMIN/conv14/BatchNorm/moving_varianceBThirdAMIN/conv14/weightsBThirdAMIN/conv15/BatchNorm/betaB ThirdAMIN/conv15/BatchNorm/gammaB&ThirdAMIN/conv15/BatchNorm/moving_meanB*ThirdAMIN/conv15/BatchNorm/moving_varianceBThirdAMIN/conv15/weightsBThirdAMIN/conv16/BatchNorm/betaB ThirdAMIN/conv16/BatchNorm/gammaB&ThirdAMIN/conv16/BatchNorm/moving_meanB*ThirdAMIN/conv16/BatchNorm/moving_varianceBThirdAMIN/conv16/weightsBThirdAMIN/conv9/BatchNorm/betaBThirdAMIN/conv9/BatchNorm/gammaB%ThirdAMIN/conv9/BatchNorm/moving_meanB)ThirdAMIN/conv9/BatchNorm/moving_varianceBThirdAMIN/conv9/weights*
_output_shapes	
:�
�
save_1/SaveV2/shape_and_slicesConst*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes	
:�
�8
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesFirstAMIN/bconv1/BatchNorm/beta FirstAMIN/bconv1/BatchNorm/gamma&FirstAMIN/bconv1/BatchNorm/moving_mean*FirstAMIN/bconv1/BatchNorm/moving_varianceFirstAMIN/bconv1/weightsFirstAMIN/bconv2/BatchNorm/beta FirstAMIN/bconv2/BatchNorm/gamma&FirstAMIN/bconv2/BatchNorm/moving_mean*FirstAMIN/bconv2/BatchNorm/moving_varianceFirstAMIN/bconv2/weightsFirstAMIN/bconv3/BatchNorm/beta FirstAMIN/bconv3/BatchNorm/gamma&FirstAMIN/bconv3/BatchNorm/moving_mean*FirstAMIN/bconv3/BatchNorm/moving_varianceFirstAMIN/bconv3/weightsFirstAMIN/conv0/BatchNorm/betaFirstAMIN/conv0/BatchNorm/gamma%FirstAMIN/conv0/BatchNorm/moving_mean)FirstAMIN/conv0/BatchNorm/moving_varianceFirstAMIN/conv0/weightsFirstAMIN/conv1/BatchNorm/betaFirstAMIN/conv1/BatchNorm/gamma%FirstAMIN/conv1/BatchNorm/moving_mean)FirstAMIN/conv1/BatchNorm/moving_varianceFirstAMIN/conv1/weightsFirstAMIN/conv10/BatchNorm/beta FirstAMIN/conv10/BatchNorm/gamma&FirstAMIN/conv10/BatchNorm/moving_mean*FirstAMIN/conv10/BatchNorm/moving_varianceFirstAMIN/conv10/weightsFirstAMIN/conv11/weightsFirstAMIN/conv12/BatchNorm/beta FirstAMIN/conv12/BatchNorm/gamma&FirstAMIN/conv12/BatchNorm/moving_mean*FirstAMIN/conv12/BatchNorm/moving_varianceFirstAMIN/conv12/weightsFirstAMIN/conv13/BatchNorm/beta FirstAMIN/conv13/BatchNorm/gamma&FirstAMIN/conv13/BatchNorm/moving_mean*FirstAMIN/conv13/BatchNorm/moving_varianceFirstAMIN/conv13/weightsFirstAMIN/conv14/BatchNorm/beta FirstAMIN/conv14/BatchNorm/gamma&FirstAMIN/conv14/BatchNorm/moving_mean*FirstAMIN/conv14/BatchNorm/moving_varianceFirstAMIN/conv14/weightsFirstAMIN/conv15/BatchNorm/beta FirstAMIN/conv15/BatchNorm/gamma&FirstAMIN/conv15/BatchNorm/moving_mean*FirstAMIN/conv15/BatchNorm/moving_varianceFirstAMIN/conv15/weightsFirstAMIN/conv16/BatchNorm/beta FirstAMIN/conv16/BatchNorm/gamma&FirstAMIN/conv16/BatchNorm/moving_mean*FirstAMIN/conv16/BatchNorm/moving_varianceFirstAMIN/conv16/weightsFirstAMIN/conv17/weightsFirstAMIN/conv2/BatchNorm/betaFirstAMIN/conv2/BatchNorm/gamma%FirstAMIN/conv2/BatchNorm/moving_mean)FirstAMIN/conv2/BatchNorm/moving_varianceFirstAMIN/conv2/weightsFirstAMIN/conv3/BatchNorm/betaFirstAMIN/conv3/BatchNorm/gamma%FirstAMIN/conv3/BatchNorm/moving_mean)FirstAMIN/conv3/BatchNorm/moving_varianceFirstAMIN/conv3/weightsFirstAMIN/conv4/BatchNorm/betaFirstAMIN/conv4/BatchNorm/gamma%FirstAMIN/conv4/BatchNorm/moving_mean)FirstAMIN/conv4/BatchNorm/moving_varianceFirstAMIN/conv4/weightsFirstAMIN/conv5/BatchNorm/betaFirstAMIN/conv5/BatchNorm/gamma%FirstAMIN/conv5/BatchNorm/moving_mean)FirstAMIN/conv5/BatchNorm/moving_varianceFirstAMIN/conv5/weightsFirstAMIN/conv6/BatchNorm/betaFirstAMIN/conv6/BatchNorm/gamma%FirstAMIN/conv6/BatchNorm/moving_mean)FirstAMIN/conv6/BatchNorm/moving_varianceFirstAMIN/conv6/weightsFirstAMIN/conv7/BatchNorm/betaFirstAMIN/conv7/BatchNorm/gamma%FirstAMIN/conv7/BatchNorm/moving_mean)FirstAMIN/conv7/BatchNorm/moving_varianceFirstAMIN/conv7/weightsFirstAMIN/conv8/BatchNorm/betaFirstAMIN/conv8/BatchNorm/gamma%FirstAMIN/conv8/BatchNorm/moving_mean)FirstAMIN/conv8/BatchNorm/moving_varianceFirstAMIN/conv8/weightsFirstAMIN/conv9/BatchNorm/betaFirstAMIN/conv9/BatchNorm/gamma%FirstAMIN/conv9/BatchNorm/moving_mean)FirstAMIN/conv9/BatchNorm/moving_varianceFirstAMIN/conv9/weights SecondAMIN/bconv1/BatchNorm/beta!SecondAMIN/bconv1/BatchNorm/gamma'SecondAMIN/bconv1/BatchNorm/moving_mean+SecondAMIN/bconv1/BatchNorm/moving_varianceSecondAMIN/bconv1/weights SecondAMIN/bconv2/BatchNorm/beta!SecondAMIN/bconv2/BatchNorm/gamma'SecondAMIN/bconv2/BatchNorm/moving_mean+SecondAMIN/bconv2/BatchNorm/moving_varianceSecondAMIN/bconv2/weights SecondAMIN/bconv3/BatchNorm/beta!SecondAMIN/bconv3/BatchNorm/gamma'SecondAMIN/bconv3/BatchNorm/moving_mean+SecondAMIN/bconv3/BatchNorm/moving_varianceSecondAMIN/bconv3/weightsSecondAMIN/conv0/BatchNorm/beta SecondAMIN/conv0/BatchNorm/gamma&SecondAMIN/conv0/BatchNorm/moving_mean*SecondAMIN/conv0/BatchNorm/moving_varianceSecondAMIN/conv0/weightsSecondAMIN/conv1/BatchNorm/beta SecondAMIN/conv1/BatchNorm/gamma&SecondAMIN/conv1/BatchNorm/moving_mean*SecondAMIN/conv1/BatchNorm/moving_varianceSecondAMIN/conv1/weightsSecondAMIN/conv11/weightsSecondAMIN/conv2/BatchNorm/beta SecondAMIN/conv2/BatchNorm/gamma&SecondAMIN/conv2/BatchNorm/moving_mean*SecondAMIN/conv2/BatchNorm/moving_varianceSecondAMIN/conv2/weightsSecondAMIN/conv3/BatchNorm/beta SecondAMIN/conv3/BatchNorm/gamma&SecondAMIN/conv3/BatchNorm/moving_mean*SecondAMIN/conv3/BatchNorm/moving_varianceSecondAMIN/conv3/weightsSecondAMIN/conv4/BatchNorm/beta SecondAMIN/conv4/BatchNorm/gamma&SecondAMIN/conv4/BatchNorm/moving_mean*SecondAMIN/conv4/BatchNorm/moving_varianceSecondAMIN/conv4/weightsSecondAMIN/conv5/BatchNorm/beta SecondAMIN/conv5/BatchNorm/gamma&SecondAMIN/conv5/BatchNorm/moving_mean*SecondAMIN/conv5/BatchNorm/moving_varianceSecondAMIN/conv5/weightsSecondAMIN/conv6/BatchNorm/beta SecondAMIN/conv6/BatchNorm/gamma&SecondAMIN/conv6/BatchNorm/moving_mean*SecondAMIN/conv6/BatchNorm/moving_varianceSecondAMIN/conv6/weightsSecondAMIN/conv7/BatchNorm/beta SecondAMIN/conv7/BatchNorm/gamma&SecondAMIN/conv7/BatchNorm/moving_mean*SecondAMIN/conv7/BatchNorm/moving_varianceSecondAMIN/conv7/weightsSecondAMIN/conv8/BatchNorm/beta SecondAMIN/conv8/BatchNorm/gamma&SecondAMIN/conv8/BatchNorm/moving_mean*SecondAMIN/conv8/BatchNorm/moving_varianceSecondAMIN/conv8/weightsThirdAMIN/bconv10_sc/weights"ThirdAMIN/bconv15_sc333_dis/biases#ThirdAMIN/bconv15_sc333_dis/weightsThirdAMIN/conv10/BatchNorm/beta ThirdAMIN/conv10/BatchNorm/gamma&ThirdAMIN/conv10/BatchNorm/moving_mean*ThirdAMIN/conv10/BatchNorm/moving_varianceThirdAMIN/conv10/weightsThirdAMIN/conv12/BatchNorm/beta ThirdAMIN/conv12/BatchNorm/gamma&ThirdAMIN/conv12/BatchNorm/moving_mean*ThirdAMIN/conv12/BatchNorm/moving_varianceThirdAMIN/conv12/weightsThirdAMIN/conv13/BatchNorm/beta ThirdAMIN/conv13/BatchNorm/gamma&ThirdAMIN/conv13/BatchNorm/moving_mean*ThirdAMIN/conv13/BatchNorm/moving_varianceThirdAMIN/conv13/weightsThirdAMIN/conv14/BatchNorm/beta ThirdAMIN/conv14/BatchNorm/gamma&ThirdAMIN/conv14/BatchNorm/moving_mean*ThirdAMIN/conv14/BatchNorm/moving_varianceThirdAMIN/conv14/weightsThirdAMIN/conv15/BatchNorm/beta ThirdAMIN/conv15/BatchNorm/gamma&ThirdAMIN/conv15/BatchNorm/moving_mean*ThirdAMIN/conv15/BatchNorm/moving_varianceThirdAMIN/conv15/weightsThirdAMIN/conv16/BatchNorm/beta ThirdAMIN/conv16/BatchNorm/gamma&ThirdAMIN/conv16/BatchNorm/moving_mean*ThirdAMIN/conv16/BatchNorm/moving_varianceThirdAMIN/conv16/weightsThirdAMIN/conv9/BatchNorm/betaThirdAMIN/conv9/BatchNorm/gamma%ThirdAMIN/conv9/BatchNorm/moving_mean)ThirdAMIN/conv9/BatchNorm/moving_varianceThirdAMIN/conv9/weights*�
dtypes�
�2�
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/bconv1/BatchNorm/beta*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/AssignAssignFirstAMIN/bconv1/BatchNorm/betasave_1/RestoreV2*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_1/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/bconv1/BatchNorm/gamma*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1Assign FirstAMIN/bconv1/BatchNorm/gammasave_1/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_2/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv1/BatchNorm/moving_mean*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2Assign&FirstAMIN/bconv1/BatchNorm/moving_meansave_1/RestoreV2_2*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_3/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv1/BatchNorm/moving_variance*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_3Assign*FirstAMIN/bconv1/BatchNorm/moving_variancesave_1/RestoreV2_3*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_4/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/bconv1/weights*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_4AssignFirstAMIN/bconv1/weightssave_1/RestoreV2_4*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
save_1/RestoreV2_5/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/bconv2/BatchNorm/beta*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_5AssignFirstAMIN/bconv2/BatchNorm/betasave_1/RestoreV2_5*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_6/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/bconv2/BatchNorm/gamma*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_6Assign FirstAMIN/bconv2/BatchNorm/gammasave_1/RestoreV2_6*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_7/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv2/BatchNorm/moving_mean*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_7Assign&FirstAMIN/bconv2/BatchNorm/moving_meansave_1/RestoreV2_7*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_8/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv2/BatchNorm/moving_variance*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_8Assign*FirstAMIN/bconv2/BatchNorm/moving_variancesave_1/RestoreV2_8*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_9/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/bconv2/weights*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_9AssignFirstAMIN/bconv2/weightssave_1/RestoreV2_9*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/bconv3/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_10AssignFirstAMIN/bconv3/BatchNorm/betasave_1/RestoreV2_10*
validate_shape(*2
_class(
&$loc:@FirstAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/bconv3/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_11Assign FirstAMIN/bconv3/BatchNorm/gammasave_1/RestoreV2_11*
validate_shape(*3
_class)
'%loc:@FirstAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/bconv3/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_12Assign&FirstAMIN/bconv3/BatchNorm/moving_meansave_1/RestoreV2_12*
validate_shape(*9
_class/
-+loc:@FirstAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/bconv3/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_13Assign*FirstAMIN/bconv3/BatchNorm/moving_variancesave_1/RestoreV2_13*
validate_shape(*=
_class3
1/loc:@FirstAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/bconv3/weights*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_14AssignFirstAMIN/bconv3/weightssave_1/RestoreV2_14*
validate_shape(*+
_class!
loc:@FirstAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_15/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv0/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_15AssignFirstAMIN/conv0/BatchNorm/betasave_1/RestoreV2_15*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_16/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv0/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_16AssignFirstAMIN/conv0/BatchNorm/gammasave_1/RestoreV2_16*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_17/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv0/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_17Assign%FirstAMIN/conv0/BatchNorm/moving_meansave_1/RestoreV2_17*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_18/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv0/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_18Assign)FirstAMIN/conv0/BatchNorm/moving_variancesave_1/RestoreV2_18*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_19/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv0/weights*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_19AssignFirstAMIN/conv0/weightssave_1/RestoreV2_19*
validate_shape(**
_class 
loc:@FirstAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_20/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv1/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_20AssignFirstAMIN/conv1/BatchNorm/betasave_1/RestoreV2_20*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv1/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_21AssignFirstAMIN/conv1/BatchNorm/gammasave_1/RestoreV2_21*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_22/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv1/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_22Assign%FirstAMIN/conv1/BatchNorm/moving_meansave_1/RestoreV2_22*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_23/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv1/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_23Assign)FirstAMIN/conv1/BatchNorm/moving_variancesave_1/RestoreV2_23*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_24/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv1/weights*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_24AssignFirstAMIN/conv1/weightssave_1/RestoreV2_24*
validate_shape(**
_class 
loc:@FirstAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_25/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv10/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_25AssignFirstAMIN/conv10/BatchNorm/betasave_1/RestoreV2_25*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_26/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv10/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_26Assign FirstAMIN/conv10/BatchNorm/gammasave_1/RestoreV2_26*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_27/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv10/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_27Assign&FirstAMIN/conv10/BatchNorm/moving_meansave_1/RestoreV2_27*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_28/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv10/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_28Assign*FirstAMIN/conv10/BatchNorm/moving_variancesave_1/RestoreV2_28*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_29/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv10/weights*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_29AssignFirstAMIN/conv10/weightssave_1/RestoreV2_29*
validate_shape(*+
_class!
loc:@FirstAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_30/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv11/weights*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_30AssignFirstAMIN/conv11/weightssave_1/RestoreV2_30*
validate_shape(*+
_class!
loc:@FirstAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_31/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv12/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_31/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_31AssignFirstAMIN/conv12/BatchNorm/betasave_1/RestoreV2_31*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_32/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv12/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_32/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_32Assign FirstAMIN/conv12/BatchNorm/gammasave_1/RestoreV2_32*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_33/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv12/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_33/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_33Assign&FirstAMIN/conv12/BatchNorm/moving_meansave_1/RestoreV2_33*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_34/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv12/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_34/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_34Assign*FirstAMIN/conv12/BatchNorm/moving_variancesave_1/RestoreV2_34*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_35/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv12/weights*
_output_shapes
:
m
$save_1/RestoreV2_35/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_35AssignFirstAMIN/conv12/weightssave_1/RestoreV2_35*
validate_shape(*+
_class!
loc:@FirstAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_36/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv13/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_36/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_36AssignFirstAMIN/conv13/BatchNorm/betasave_1/RestoreV2_36*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_37/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv13/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_37/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_37Assign FirstAMIN/conv13/BatchNorm/gammasave_1/RestoreV2_37*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_38/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv13/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_38/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_38Assign&FirstAMIN/conv13/BatchNorm/moving_meansave_1/RestoreV2_38*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_39/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv13/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_39/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_39Assign*FirstAMIN/conv13/BatchNorm/moving_variancesave_1/RestoreV2_39*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_40/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv13/weights*
_output_shapes
:
m
$save_1/RestoreV2_40/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_40AssignFirstAMIN/conv13/weightssave_1/RestoreV2_40*
validate_shape(*+
_class!
loc:@FirstAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_41/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv14/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_41/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_41	RestoreV2save_1/Const save_1/RestoreV2_41/tensor_names$save_1/RestoreV2_41/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_41AssignFirstAMIN/conv14/BatchNorm/betasave_1/RestoreV2_41*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_42/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv14/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_42/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_42	RestoreV2save_1/Const save_1/RestoreV2_42/tensor_names$save_1/RestoreV2_42/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_42Assign FirstAMIN/conv14/BatchNorm/gammasave_1/RestoreV2_42*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_43/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv14/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_43/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_43	RestoreV2save_1/Const save_1/RestoreV2_43/tensor_names$save_1/RestoreV2_43/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_43Assign&FirstAMIN/conv14/BatchNorm/moving_meansave_1/RestoreV2_43*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_44/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv14/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_44/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_44	RestoreV2save_1/Const save_1/RestoreV2_44/tensor_names$save_1/RestoreV2_44/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_44Assign*FirstAMIN/conv14/BatchNorm/moving_variancesave_1/RestoreV2_44*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_45/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv14/weights*
_output_shapes
:
m
$save_1/RestoreV2_45/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_45	RestoreV2save_1/Const save_1/RestoreV2_45/tensor_names$save_1/RestoreV2_45/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_45AssignFirstAMIN/conv14/weightssave_1/RestoreV2_45*
validate_shape(*+
_class!
loc:@FirstAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_46/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv15/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_46/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_46	RestoreV2save_1/Const save_1/RestoreV2_46/tensor_names$save_1/RestoreV2_46/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_46AssignFirstAMIN/conv15/BatchNorm/betasave_1/RestoreV2_46*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_47/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv15/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_47/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_47	RestoreV2save_1/Const save_1/RestoreV2_47/tensor_names$save_1/RestoreV2_47/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_47Assign FirstAMIN/conv15/BatchNorm/gammasave_1/RestoreV2_47*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_48/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv15/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_48/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_48	RestoreV2save_1/Const save_1/RestoreV2_48/tensor_names$save_1/RestoreV2_48/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_48Assign&FirstAMIN/conv15/BatchNorm/moving_meansave_1/RestoreV2_48*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_49/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv15/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_49/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_49	RestoreV2save_1/Const save_1/RestoreV2_49/tensor_names$save_1/RestoreV2_49/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_49Assign*FirstAMIN/conv15/BatchNorm/moving_variancesave_1/RestoreV2_49*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_50/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv15/weights*
_output_shapes
:
m
$save_1/RestoreV2_50/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_50	RestoreV2save_1/Const save_1/RestoreV2_50/tensor_names$save_1/RestoreV2_50/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_50AssignFirstAMIN/conv15/weightssave_1/RestoreV2_50*
validate_shape(*+
_class!
loc:@FirstAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_51/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv16/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_51/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_51	RestoreV2save_1/Const save_1/RestoreV2_51/tensor_names$save_1/RestoreV2_51/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_51AssignFirstAMIN/conv16/BatchNorm/betasave_1/RestoreV2_51*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_52/tensor_namesConst*
dtype0*5
value,B*B FirstAMIN/conv16/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_52/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_52	RestoreV2save_1/Const save_1/RestoreV2_52/tensor_names$save_1/RestoreV2_52/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_52Assign FirstAMIN/conv16/BatchNorm/gammasave_1/RestoreV2_52*
validate_shape(*3
_class)
'%loc:@FirstAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_53/tensor_namesConst*
dtype0*;
value2B0B&FirstAMIN/conv16/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_53/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_53	RestoreV2save_1/Const save_1/RestoreV2_53/tensor_names$save_1/RestoreV2_53/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_53Assign&FirstAMIN/conv16/BatchNorm/moving_meansave_1/RestoreV2_53*
validate_shape(*9
_class/
-+loc:@FirstAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_54/tensor_namesConst*
dtype0*?
value6B4B*FirstAMIN/conv16/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_54/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_54	RestoreV2save_1/Const save_1/RestoreV2_54/tensor_names$save_1/RestoreV2_54/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_54Assign*FirstAMIN/conv16/BatchNorm/moving_variancesave_1/RestoreV2_54*
validate_shape(*=
_class3
1/loc:@FirstAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_55/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv16/weights*
_output_shapes
:
m
$save_1/RestoreV2_55/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_55	RestoreV2save_1/Const save_1/RestoreV2_55/tensor_names$save_1/RestoreV2_55/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_55AssignFirstAMIN/conv16/weightssave_1/RestoreV2_55*
validate_shape(*+
_class!
loc:@FirstAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_56/tensor_namesConst*
dtype0*-
value$B"BFirstAMIN/conv17/weights*
_output_shapes
:
m
$save_1/RestoreV2_56/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_56	RestoreV2save_1/Const save_1/RestoreV2_56/tensor_names$save_1/RestoreV2_56/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_56AssignFirstAMIN/conv17/weightssave_1/RestoreV2_56*
validate_shape(*+
_class!
loc:@FirstAMIN/conv17/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_57/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv2/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_57/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_57	RestoreV2save_1/Const save_1/RestoreV2_57/tensor_names$save_1/RestoreV2_57/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_57AssignFirstAMIN/conv2/BatchNorm/betasave_1/RestoreV2_57*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_58/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv2/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_58/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_58	RestoreV2save_1/Const save_1/RestoreV2_58/tensor_names$save_1/RestoreV2_58/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_58AssignFirstAMIN/conv2/BatchNorm/gammasave_1/RestoreV2_58*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_59/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv2/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_59/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_59	RestoreV2save_1/Const save_1/RestoreV2_59/tensor_names$save_1/RestoreV2_59/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_59Assign%FirstAMIN/conv2/BatchNorm/moving_meansave_1/RestoreV2_59*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_60/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv2/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_60/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_60	RestoreV2save_1/Const save_1/RestoreV2_60/tensor_names$save_1/RestoreV2_60/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_60Assign)FirstAMIN/conv2/BatchNorm/moving_variancesave_1/RestoreV2_60*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_61/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv2/weights*
_output_shapes
:
m
$save_1/RestoreV2_61/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_61	RestoreV2save_1/Const save_1/RestoreV2_61/tensor_names$save_1/RestoreV2_61/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_61AssignFirstAMIN/conv2/weightssave_1/RestoreV2_61*
validate_shape(**
_class 
loc:@FirstAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_62/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv3/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_62/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_62	RestoreV2save_1/Const save_1/RestoreV2_62/tensor_names$save_1/RestoreV2_62/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_62AssignFirstAMIN/conv3/BatchNorm/betasave_1/RestoreV2_62*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_63/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv3/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_63/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_63	RestoreV2save_1/Const save_1/RestoreV2_63/tensor_names$save_1/RestoreV2_63/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_63AssignFirstAMIN/conv3/BatchNorm/gammasave_1/RestoreV2_63*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_64/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv3/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_64/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_64	RestoreV2save_1/Const save_1/RestoreV2_64/tensor_names$save_1/RestoreV2_64/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_64Assign%FirstAMIN/conv3/BatchNorm/moving_meansave_1/RestoreV2_64*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_65/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv3/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_65/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_65	RestoreV2save_1/Const save_1/RestoreV2_65/tensor_names$save_1/RestoreV2_65/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_65Assign)FirstAMIN/conv3/BatchNorm/moving_variancesave_1/RestoreV2_65*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_66/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv3/weights*
_output_shapes
:
m
$save_1/RestoreV2_66/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_66	RestoreV2save_1/Const save_1/RestoreV2_66/tensor_names$save_1/RestoreV2_66/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_66AssignFirstAMIN/conv3/weightssave_1/RestoreV2_66*
validate_shape(**
_class 
loc:@FirstAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_67/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv4/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_67/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_67	RestoreV2save_1/Const save_1/RestoreV2_67/tensor_names$save_1/RestoreV2_67/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_67AssignFirstAMIN/conv4/BatchNorm/betasave_1/RestoreV2_67*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_68/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv4/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_68/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_68	RestoreV2save_1/Const save_1/RestoreV2_68/tensor_names$save_1/RestoreV2_68/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_68AssignFirstAMIN/conv4/BatchNorm/gammasave_1/RestoreV2_68*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_69/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv4/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_69/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_69	RestoreV2save_1/Const save_1/RestoreV2_69/tensor_names$save_1/RestoreV2_69/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_69Assign%FirstAMIN/conv4/BatchNorm/moving_meansave_1/RestoreV2_69*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_70/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv4/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_70/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_70	RestoreV2save_1/Const save_1/RestoreV2_70/tensor_names$save_1/RestoreV2_70/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_70Assign)FirstAMIN/conv4/BatchNorm/moving_variancesave_1/RestoreV2_70*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_71/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv4/weights*
_output_shapes
:
m
$save_1/RestoreV2_71/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_71	RestoreV2save_1/Const save_1/RestoreV2_71/tensor_names$save_1/RestoreV2_71/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_71AssignFirstAMIN/conv4/weightssave_1/RestoreV2_71*
validate_shape(**
_class 
loc:@FirstAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_72/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv5/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_72/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_72	RestoreV2save_1/Const save_1/RestoreV2_72/tensor_names$save_1/RestoreV2_72/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_72AssignFirstAMIN/conv5/BatchNorm/betasave_1/RestoreV2_72*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_73/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv5/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_73/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_73	RestoreV2save_1/Const save_1/RestoreV2_73/tensor_names$save_1/RestoreV2_73/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_73AssignFirstAMIN/conv5/BatchNorm/gammasave_1/RestoreV2_73*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_74/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv5/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_74/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_74	RestoreV2save_1/Const save_1/RestoreV2_74/tensor_names$save_1/RestoreV2_74/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_74Assign%FirstAMIN/conv5/BatchNorm/moving_meansave_1/RestoreV2_74*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_75/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv5/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_75/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_75	RestoreV2save_1/Const save_1/RestoreV2_75/tensor_names$save_1/RestoreV2_75/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_75Assign)FirstAMIN/conv5/BatchNorm/moving_variancesave_1/RestoreV2_75*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_76/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv5/weights*
_output_shapes
:
m
$save_1/RestoreV2_76/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_76	RestoreV2save_1/Const save_1/RestoreV2_76/tensor_names$save_1/RestoreV2_76/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_76AssignFirstAMIN/conv5/weightssave_1/RestoreV2_76*
validate_shape(**
_class 
loc:@FirstAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_77/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv6/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_77/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_77	RestoreV2save_1/Const save_1/RestoreV2_77/tensor_names$save_1/RestoreV2_77/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_77AssignFirstAMIN/conv6/BatchNorm/betasave_1/RestoreV2_77*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_78/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv6/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_78/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_78	RestoreV2save_1/Const save_1/RestoreV2_78/tensor_names$save_1/RestoreV2_78/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_78AssignFirstAMIN/conv6/BatchNorm/gammasave_1/RestoreV2_78*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_79/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv6/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_79/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_79	RestoreV2save_1/Const save_1/RestoreV2_79/tensor_names$save_1/RestoreV2_79/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_79Assign%FirstAMIN/conv6/BatchNorm/moving_meansave_1/RestoreV2_79*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_80/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv6/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_80/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_80	RestoreV2save_1/Const save_1/RestoreV2_80/tensor_names$save_1/RestoreV2_80/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_80Assign)FirstAMIN/conv6/BatchNorm/moving_variancesave_1/RestoreV2_80*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_81/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv6/weights*
_output_shapes
:
m
$save_1/RestoreV2_81/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_81	RestoreV2save_1/Const save_1/RestoreV2_81/tensor_names$save_1/RestoreV2_81/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_81AssignFirstAMIN/conv6/weightssave_1/RestoreV2_81*
validate_shape(**
_class 
loc:@FirstAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_82/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv7/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_82/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_82	RestoreV2save_1/Const save_1/RestoreV2_82/tensor_names$save_1/RestoreV2_82/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_82AssignFirstAMIN/conv7/BatchNorm/betasave_1/RestoreV2_82*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_83/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv7/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_83/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_83	RestoreV2save_1/Const save_1/RestoreV2_83/tensor_names$save_1/RestoreV2_83/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_83AssignFirstAMIN/conv7/BatchNorm/gammasave_1/RestoreV2_83*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_84/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv7/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_84/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_84	RestoreV2save_1/Const save_1/RestoreV2_84/tensor_names$save_1/RestoreV2_84/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_84Assign%FirstAMIN/conv7/BatchNorm/moving_meansave_1/RestoreV2_84*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_85/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv7/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_85/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_85	RestoreV2save_1/Const save_1/RestoreV2_85/tensor_names$save_1/RestoreV2_85/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_85Assign)FirstAMIN/conv7/BatchNorm/moving_variancesave_1/RestoreV2_85*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_86/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv7/weights*
_output_shapes
:
m
$save_1/RestoreV2_86/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_86	RestoreV2save_1/Const save_1/RestoreV2_86/tensor_names$save_1/RestoreV2_86/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_86AssignFirstAMIN/conv7/weightssave_1/RestoreV2_86*
validate_shape(**
_class 
loc:@FirstAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
 save_1/RestoreV2_87/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv8/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_87/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_87	RestoreV2save_1/Const save_1/RestoreV2_87/tensor_names$save_1/RestoreV2_87/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_87AssignFirstAMIN/conv8/BatchNorm/betasave_1/RestoreV2_87*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_88/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv8/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_88/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_88	RestoreV2save_1/Const save_1/RestoreV2_88/tensor_names$save_1/RestoreV2_88/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_88AssignFirstAMIN/conv8/BatchNorm/gammasave_1/RestoreV2_88*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_89/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv8/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_89/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_89	RestoreV2save_1/Const save_1/RestoreV2_89/tensor_names$save_1/RestoreV2_89/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_89Assign%FirstAMIN/conv8/BatchNorm/moving_meansave_1/RestoreV2_89*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_90/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv8/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_90/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_90	RestoreV2save_1/Const save_1/RestoreV2_90/tensor_names$save_1/RestoreV2_90/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_90Assign)FirstAMIN/conv8/BatchNorm/moving_variancesave_1/RestoreV2_90*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_91/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv8/weights*
_output_shapes
:
m
$save_1/RestoreV2_91/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_91	RestoreV2save_1/Const save_1/RestoreV2_91/tensor_names$save_1/RestoreV2_91/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_91AssignFirstAMIN/conv8/weightssave_1/RestoreV2_91*
validate_shape(**
_class 
loc:@FirstAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
 save_1/RestoreV2_92/tensor_namesConst*
dtype0*3
value*B(BFirstAMIN/conv9/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_92/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_92	RestoreV2save_1/Const save_1/RestoreV2_92/tensor_names$save_1/RestoreV2_92/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_92AssignFirstAMIN/conv9/BatchNorm/betasave_1/RestoreV2_92*
validate_shape(*1
_class'
%#loc:@FirstAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_93/tensor_namesConst*
dtype0*4
value+B)BFirstAMIN/conv9/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_93/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_93	RestoreV2save_1/Const save_1/RestoreV2_93/tensor_names$save_1/RestoreV2_93/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_93AssignFirstAMIN/conv9/BatchNorm/gammasave_1/RestoreV2_93*
validate_shape(*2
_class(
&$loc:@FirstAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_94/tensor_namesConst*
dtype0*:
value1B/B%FirstAMIN/conv9/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_94/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_94	RestoreV2save_1/Const save_1/RestoreV2_94/tensor_names$save_1/RestoreV2_94/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_94Assign%FirstAMIN/conv9/BatchNorm/moving_meansave_1/RestoreV2_94*
validate_shape(*8
_class.
,*loc:@FirstAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_95/tensor_namesConst*
dtype0*>
value5B3B)FirstAMIN/conv9/BatchNorm/moving_variance*
_output_shapes
:
m
$save_1/RestoreV2_95/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_95	RestoreV2save_1/Const save_1/RestoreV2_95/tensor_names$save_1/RestoreV2_95/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_95Assign)FirstAMIN/conv9/BatchNorm/moving_variancesave_1/RestoreV2_95*
validate_shape(*<
_class2
0.loc:@FirstAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_96/tensor_namesConst*
dtype0*,
value#B!BFirstAMIN/conv9/weights*
_output_shapes
:
m
$save_1/RestoreV2_96/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_96	RestoreV2save_1/Const save_1/RestoreV2_96/tensor_names$save_1/RestoreV2_96/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_96AssignFirstAMIN/conv9/weightssave_1/RestoreV2_96*
validate_shape(**
_class 
loc:@FirstAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:<
�
 save_1/RestoreV2_97/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/bconv1/BatchNorm/beta*
_output_shapes
:
m
$save_1/RestoreV2_97/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_97	RestoreV2save_1/Const save_1/RestoreV2_97/tensor_names$save_1/RestoreV2_97/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_97Assign SecondAMIN/bconv1/BatchNorm/betasave_1/RestoreV2_97*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_98/tensor_namesConst*
dtype0*6
value-B+B!SecondAMIN/bconv1/BatchNorm/gamma*
_output_shapes
:
m
$save_1/RestoreV2_98/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_98	RestoreV2save_1/Const save_1/RestoreV2_98/tensor_names$save_1/RestoreV2_98/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_98Assign!SecondAMIN/bconv1/BatchNorm/gammasave_1/RestoreV2_98*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
 save_1/RestoreV2_99/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv1/BatchNorm/moving_mean*
_output_shapes
:
m
$save_1/RestoreV2_99/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_99	RestoreV2save_1/Const save_1/RestoreV2_99/tensor_names$save_1/RestoreV2_99/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_99Assign'SecondAMIN/bconv1/BatchNorm/moving_meansave_1/RestoreV2_99*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_100/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv1/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_100/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_100	RestoreV2save_1/Const!save_1/RestoreV2_100/tensor_names%save_1/RestoreV2_100/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_100Assign+SecondAMIN/bconv1/BatchNorm/moving_variancesave_1/RestoreV2_100*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_101/tensor_namesConst*
dtype0*.
value%B#BSecondAMIN/bconv1/weights*
_output_shapes
:
n
%save_1/RestoreV2_101/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_101	RestoreV2save_1/Const!save_1/RestoreV2_101/tensor_names%save_1/RestoreV2_101/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_101AssignSecondAMIN/bconv1/weightssave_1/RestoreV2_101*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_102/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/bconv2/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_102/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_102	RestoreV2save_1/Const!save_1/RestoreV2_102/tensor_names%save_1/RestoreV2_102/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_102Assign SecondAMIN/bconv2/BatchNorm/betasave_1/RestoreV2_102*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_103/tensor_namesConst*
dtype0*6
value-B+B!SecondAMIN/bconv2/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_103/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_103	RestoreV2save_1/Const!save_1/RestoreV2_103/tensor_names%save_1/RestoreV2_103/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_103Assign!SecondAMIN/bconv2/BatchNorm/gammasave_1/RestoreV2_103*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_104/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv2/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_104/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_104	RestoreV2save_1/Const!save_1/RestoreV2_104/tensor_names%save_1/RestoreV2_104/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_104Assign'SecondAMIN/bconv2/BatchNorm/moving_meansave_1/RestoreV2_104*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_105/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv2/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_105/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_105	RestoreV2save_1/Const!save_1/RestoreV2_105/tensor_names%save_1/RestoreV2_105/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_105Assign+SecondAMIN/bconv2/BatchNorm/moving_variancesave_1/RestoreV2_105*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_106/tensor_namesConst*
dtype0*.
value%B#BSecondAMIN/bconv2/weights*
_output_shapes
:
n
%save_1/RestoreV2_106/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_106	RestoreV2save_1/Const!save_1/RestoreV2_106/tensor_names%save_1/RestoreV2_106/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_106AssignSecondAMIN/bconv2/weightssave_1/RestoreV2_106*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_107/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/bconv3/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_107/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_107	RestoreV2save_1/Const!save_1/RestoreV2_107/tensor_names%save_1/RestoreV2_107/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_107Assign SecondAMIN/bconv3/BatchNorm/betasave_1/RestoreV2_107*
validate_shape(*3
_class)
'%loc:@SecondAMIN/bconv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_108/tensor_namesConst*
dtype0*6
value-B+B!SecondAMIN/bconv3/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_108/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_108	RestoreV2save_1/Const!save_1/RestoreV2_108/tensor_names%save_1/RestoreV2_108/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_108Assign!SecondAMIN/bconv3/BatchNorm/gammasave_1/RestoreV2_108*
validate_shape(*4
_class*
(&loc:@SecondAMIN/bconv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_109/tensor_namesConst*
dtype0*<
value3B1B'SecondAMIN/bconv3/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_109/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_109	RestoreV2save_1/Const!save_1/RestoreV2_109/tensor_names%save_1/RestoreV2_109/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_109Assign'SecondAMIN/bconv3/BatchNorm/moving_meansave_1/RestoreV2_109*
validate_shape(*:
_class0
.,loc:@SecondAMIN/bconv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_110/tensor_namesConst*
dtype0*@
value7B5B+SecondAMIN/bconv3/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_110/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_110	RestoreV2save_1/Const!save_1/RestoreV2_110/tensor_names%save_1/RestoreV2_110/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_110Assign+SecondAMIN/bconv3/BatchNorm/moving_variancesave_1/RestoreV2_110*
validate_shape(*>
_class4
20loc:@SecondAMIN/bconv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_111/tensor_namesConst*
dtype0*.
value%B#BSecondAMIN/bconv3/weights*
_output_shapes
:
n
%save_1/RestoreV2_111/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_111	RestoreV2save_1/Const!save_1/RestoreV2_111/tensor_names%save_1/RestoreV2_111/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_111AssignSecondAMIN/bconv3/weightssave_1/RestoreV2_111*
validate_shape(*,
_class"
 loc:@SecondAMIN/bconv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_112/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv0/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_112/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_112	RestoreV2save_1/Const!save_1/RestoreV2_112/tensor_names%save_1/RestoreV2_112/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_112AssignSecondAMIN/conv0/BatchNorm/betasave_1/RestoreV2_112*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv0/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_113/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv0/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_113/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_113	RestoreV2save_1/Const!save_1/RestoreV2_113/tensor_names%save_1/RestoreV2_113/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_113Assign SecondAMIN/conv0/BatchNorm/gammasave_1/RestoreV2_113*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv0/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_114/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv0/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_114/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_114	RestoreV2save_1/Const!save_1/RestoreV2_114/tensor_names%save_1/RestoreV2_114/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_114Assign&SecondAMIN/conv0/BatchNorm/moving_meansave_1/RestoreV2_114*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv0/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_115/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv0/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_115/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_115	RestoreV2save_1/Const!save_1/RestoreV2_115/tensor_names%save_1/RestoreV2_115/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_115Assign*SecondAMIN/conv0/BatchNorm/moving_variancesave_1/RestoreV2_115*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv0/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_116/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv0/weights*
_output_shapes
:
n
%save_1/RestoreV2_116/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_116	RestoreV2save_1/Const!save_1/RestoreV2_116/tensor_names%save_1/RestoreV2_116/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_116AssignSecondAMIN/conv0/weightssave_1/RestoreV2_116*
validate_shape(*+
_class!
loc:@SecondAMIN/conv0/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_117/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv1/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_117/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_117	RestoreV2save_1/Const!save_1/RestoreV2_117/tensor_names%save_1/RestoreV2_117/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_117AssignSecondAMIN/conv1/BatchNorm/betasave_1/RestoreV2_117*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv1/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_118/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv1/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_118/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_118	RestoreV2save_1/Const!save_1/RestoreV2_118/tensor_names%save_1/RestoreV2_118/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_118Assign SecondAMIN/conv1/BatchNorm/gammasave_1/RestoreV2_118*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv1/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_119/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv1/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_119/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_119	RestoreV2save_1/Const!save_1/RestoreV2_119/tensor_names%save_1/RestoreV2_119/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_119Assign&SecondAMIN/conv1/BatchNorm/moving_meansave_1/RestoreV2_119*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv1/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_120/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv1/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_120/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_120	RestoreV2save_1/Const!save_1/RestoreV2_120/tensor_names%save_1/RestoreV2_120/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_120Assign*SecondAMIN/conv1/BatchNorm/moving_variancesave_1/RestoreV2_120*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv1/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_121/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv1/weights*
_output_shapes
:
n
%save_1/RestoreV2_121/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_121	RestoreV2save_1/Const!save_1/RestoreV2_121/tensor_names%save_1/RestoreV2_121/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_121AssignSecondAMIN/conv1/weightssave_1/RestoreV2_121*
validate_shape(*+
_class!
loc:@SecondAMIN/conv1/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_122/tensor_namesConst*
dtype0*.
value%B#BSecondAMIN/conv11/weights*
_output_shapes
:
n
%save_1/RestoreV2_122/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_122	RestoreV2save_1/Const!save_1/RestoreV2_122/tensor_names%save_1/RestoreV2_122/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_122AssignSecondAMIN/conv11/weightssave_1/RestoreV2_122*
validate_shape(*,
_class"
 loc:@SecondAMIN/conv11/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_123/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv2/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_123/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_123	RestoreV2save_1/Const!save_1/RestoreV2_123/tensor_names%save_1/RestoreV2_123/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_123AssignSecondAMIN/conv2/BatchNorm/betasave_1/RestoreV2_123*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv2/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_124/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv2/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_124/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_124	RestoreV2save_1/Const!save_1/RestoreV2_124/tensor_names%save_1/RestoreV2_124/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_124Assign SecondAMIN/conv2/BatchNorm/gammasave_1/RestoreV2_124*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv2/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_125/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv2/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_125/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_125	RestoreV2save_1/Const!save_1/RestoreV2_125/tensor_names%save_1/RestoreV2_125/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_125Assign&SecondAMIN/conv2/BatchNorm/moving_meansave_1/RestoreV2_125*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv2/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_126/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv2/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_126/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_126	RestoreV2save_1/Const!save_1/RestoreV2_126/tensor_names%save_1/RestoreV2_126/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_126Assign*SecondAMIN/conv2/BatchNorm/moving_variancesave_1/RestoreV2_126*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv2/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_127/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv2/weights*
_output_shapes
:
n
%save_1/RestoreV2_127/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_127	RestoreV2save_1/Const!save_1/RestoreV2_127/tensor_names%save_1/RestoreV2_127/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_127AssignSecondAMIN/conv2/weightssave_1/RestoreV2_127*
validate_shape(*+
_class!
loc:@SecondAMIN/conv2/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_128/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv3/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_128/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_128	RestoreV2save_1/Const!save_1/RestoreV2_128/tensor_names%save_1/RestoreV2_128/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_128AssignSecondAMIN/conv3/BatchNorm/betasave_1/RestoreV2_128*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv3/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_129/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv3/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_129/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_129	RestoreV2save_1/Const!save_1/RestoreV2_129/tensor_names%save_1/RestoreV2_129/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_129Assign SecondAMIN/conv3/BatchNorm/gammasave_1/RestoreV2_129*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv3/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_130/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv3/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_130/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_130	RestoreV2save_1/Const!save_1/RestoreV2_130/tensor_names%save_1/RestoreV2_130/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_130Assign&SecondAMIN/conv3/BatchNorm/moving_meansave_1/RestoreV2_130*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv3/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_131/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv3/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_131/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_131	RestoreV2save_1/Const!save_1/RestoreV2_131/tensor_names%save_1/RestoreV2_131/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_131Assign*SecondAMIN/conv3/BatchNorm/moving_variancesave_1/RestoreV2_131*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv3/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_132/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv3/weights*
_output_shapes
:
n
%save_1/RestoreV2_132/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_132	RestoreV2save_1/Const!save_1/RestoreV2_132/tensor_names%save_1/RestoreV2_132/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_132AssignSecondAMIN/conv3/weightssave_1/RestoreV2_132*
validate_shape(*+
_class!
loc:@SecondAMIN/conv3/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_133/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv4/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_133/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_133	RestoreV2save_1/Const!save_1/RestoreV2_133/tensor_names%save_1/RestoreV2_133/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_133AssignSecondAMIN/conv4/BatchNorm/betasave_1/RestoreV2_133*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv4/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_134/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv4/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_134/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_134	RestoreV2save_1/Const!save_1/RestoreV2_134/tensor_names%save_1/RestoreV2_134/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_134Assign SecondAMIN/conv4/BatchNorm/gammasave_1/RestoreV2_134*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv4/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_135/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv4/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_135/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_135	RestoreV2save_1/Const!save_1/RestoreV2_135/tensor_names%save_1/RestoreV2_135/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_135Assign&SecondAMIN/conv4/BatchNorm/moving_meansave_1/RestoreV2_135*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv4/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_136/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv4/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_136/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_136	RestoreV2save_1/Const!save_1/RestoreV2_136/tensor_names%save_1/RestoreV2_136/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_136Assign*SecondAMIN/conv4/BatchNorm/moving_variancesave_1/RestoreV2_136*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv4/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_137/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv4/weights*
_output_shapes
:
n
%save_1/RestoreV2_137/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_137	RestoreV2save_1/Const!save_1/RestoreV2_137/tensor_names%save_1/RestoreV2_137/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_137AssignSecondAMIN/conv4/weightssave_1/RestoreV2_137*
validate_shape(*+
_class!
loc:@SecondAMIN/conv4/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_138/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv5/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_138/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_138	RestoreV2save_1/Const!save_1/RestoreV2_138/tensor_names%save_1/RestoreV2_138/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_138AssignSecondAMIN/conv5/BatchNorm/betasave_1/RestoreV2_138*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv5/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_139/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv5/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_139/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_139	RestoreV2save_1/Const!save_1/RestoreV2_139/tensor_names%save_1/RestoreV2_139/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_139Assign SecondAMIN/conv5/BatchNorm/gammasave_1/RestoreV2_139*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv5/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_140/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv5/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_140/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_140	RestoreV2save_1/Const!save_1/RestoreV2_140/tensor_names%save_1/RestoreV2_140/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_140Assign&SecondAMIN/conv5/BatchNorm/moving_meansave_1/RestoreV2_140*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv5/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_141/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv5/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_141/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_141	RestoreV2save_1/Const!save_1/RestoreV2_141/tensor_names%save_1/RestoreV2_141/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_141Assign*SecondAMIN/conv5/BatchNorm/moving_variancesave_1/RestoreV2_141*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv5/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_142/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv5/weights*
_output_shapes
:
n
%save_1/RestoreV2_142/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_142	RestoreV2save_1/Const!save_1/RestoreV2_142/tensor_names%save_1/RestoreV2_142/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_142AssignSecondAMIN/conv5/weightssave_1/RestoreV2_142*
validate_shape(*+
_class!
loc:@SecondAMIN/conv5/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_143/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv6/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_143/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_143	RestoreV2save_1/Const!save_1/RestoreV2_143/tensor_names%save_1/RestoreV2_143/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_143AssignSecondAMIN/conv6/BatchNorm/betasave_1/RestoreV2_143*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv6/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_144/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv6/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_144/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_144	RestoreV2save_1/Const!save_1/RestoreV2_144/tensor_names%save_1/RestoreV2_144/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_144Assign SecondAMIN/conv6/BatchNorm/gammasave_1/RestoreV2_144*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv6/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_145/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv6/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_145/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_145	RestoreV2save_1/Const!save_1/RestoreV2_145/tensor_names%save_1/RestoreV2_145/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_145Assign&SecondAMIN/conv6/BatchNorm/moving_meansave_1/RestoreV2_145*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv6/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_146/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv6/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_146/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_146	RestoreV2save_1/Const!save_1/RestoreV2_146/tensor_names%save_1/RestoreV2_146/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_146Assign*SecondAMIN/conv6/BatchNorm/moving_variancesave_1/RestoreV2_146*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv6/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_147/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv6/weights*
_output_shapes
:
n
%save_1/RestoreV2_147/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_147	RestoreV2save_1/Const!save_1/RestoreV2_147/tensor_names%save_1/RestoreV2_147/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_147AssignSecondAMIN/conv6/weightssave_1/RestoreV2_147*
validate_shape(*+
_class!
loc:@SecondAMIN/conv6/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_148/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv7/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_148/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_148	RestoreV2save_1/Const!save_1/RestoreV2_148/tensor_names%save_1/RestoreV2_148/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_148AssignSecondAMIN/conv7/BatchNorm/betasave_1/RestoreV2_148*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv7/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_149/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv7/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_149/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_149	RestoreV2save_1/Const!save_1/RestoreV2_149/tensor_names%save_1/RestoreV2_149/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_149Assign SecondAMIN/conv7/BatchNorm/gammasave_1/RestoreV2_149*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv7/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_150/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv7/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_150/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_150	RestoreV2save_1/Const!save_1/RestoreV2_150/tensor_names%save_1/RestoreV2_150/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_150Assign&SecondAMIN/conv7/BatchNorm/moving_meansave_1/RestoreV2_150*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv7/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_151/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv7/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_151/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_151	RestoreV2save_1/Const!save_1/RestoreV2_151/tensor_names%save_1/RestoreV2_151/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_151Assign*SecondAMIN/conv7/BatchNorm/moving_variancesave_1/RestoreV2_151*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv7/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_152/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv7/weights*
_output_shapes
:
n
%save_1/RestoreV2_152/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_152	RestoreV2save_1/Const!save_1/RestoreV2_152/tensor_names%save_1/RestoreV2_152/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_152AssignSecondAMIN/conv7/weightssave_1/RestoreV2_152*
validate_shape(*+
_class!
loc:@SecondAMIN/conv7/weights*
use_locking(*
T0*&
_output_shapes
:<
�
!save_1/RestoreV2_153/tensor_namesConst*
dtype0*4
value+B)BSecondAMIN/conv8/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_153/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_153	RestoreV2save_1/Const!save_1/RestoreV2_153/tensor_names%save_1/RestoreV2_153/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_153AssignSecondAMIN/conv8/BatchNorm/betasave_1/RestoreV2_153*
validate_shape(*2
_class(
&$loc:@SecondAMIN/conv8/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_154/tensor_namesConst*
dtype0*5
value,B*B SecondAMIN/conv8/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_154/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_154	RestoreV2save_1/Const!save_1/RestoreV2_154/tensor_names%save_1/RestoreV2_154/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_154Assign SecondAMIN/conv8/BatchNorm/gammasave_1/RestoreV2_154*
validate_shape(*3
_class)
'%loc:@SecondAMIN/conv8/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_155/tensor_namesConst*
dtype0*;
value2B0B&SecondAMIN/conv8/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_155/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_155	RestoreV2save_1/Const!save_1/RestoreV2_155/tensor_names%save_1/RestoreV2_155/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_155Assign&SecondAMIN/conv8/BatchNorm/moving_meansave_1/RestoreV2_155*
validate_shape(*9
_class/
-+loc:@SecondAMIN/conv8/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_156/tensor_namesConst*
dtype0*?
value6B4B*SecondAMIN/conv8/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_156/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_156	RestoreV2save_1/Const!save_1/RestoreV2_156/tensor_names%save_1/RestoreV2_156/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_156Assign*SecondAMIN/conv8/BatchNorm/moving_variancesave_1/RestoreV2_156*
validate_shape(*=
_class3
1/loc:@SecondAMIN/conv8/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_157/tensor_namesConst*
dtype0*-
value$B"BSecondAMIN/conv8/weights*
_output_shapes
:
n
%save_1/RestoreV2_157/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_157	RestoreV2save_1/Const!save_1/RestoreV2_157/tensor_names%save_1/RestoreV2_157/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_157AssignSecondAMIN/conv8/weightssave_1/RestoreV2_157*
validate_shape(*+
_class!
loc:@SecondAMIN/conv8/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_158/tensor_namesConst*
dtype0*1
value(B&BThirdAMIN/bconv10_sc/weights*
_output_shapes
:
n
%save_1/RestoreV2_158/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_158	RestoreV2save_1/Const!save_1/RestoreV2_158/tensor_names%save_1/RestoreV2_158/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_158AssignThirdAMIN/bconv10_sc/weightssave_1/RestoreV2_158*
validate_shape(*/
_class%
#!loc:@ThirdAMIN/bconv10_sc/weights*
use_locking(*
T0*
_output_shapes

:d
�
!save_1/RestoreV2_159/tensor_namesConst*
dtype0*7
value.B,B"ThirdAMIN/bconv15_sc333_dis/biases*
_output_shapes
:
n
%save_1/RestoreV2_159/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_159	RestoreV2save_1/Const!save_1/RestoreV2_159/tensor_names%save_1/RestoreV2_159/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_159Assign"ThirdAMIN/bconv15_sc333_dis/biasessave_1/RestoreV2_159*
validate_shape(*5
_class+
)'loc:@ThirdAMIN/bconv15_sc333_dis/biases*
use_locking(*
T0*
_output_shapes
:d
�
!save_1/RestoreV2_160/tensor_namesConst*
dtype0*8
value/B-B#ThirdAMIN/bconv15_sc333_dis/weights*
_output_shapes
:
n
%save_1/RestoreV2_160/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_160	RestoreV2save_1/Const!save_1/RestoreV2_160/tensor_names%save_1/RestoreV2_160/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_160Assign#ThirdAMIN/bconv15_sc333_dis/weightssave_1/RestoreV2_160*
validate_shape(*6
_class,
*(loc:@ThirdAMIN/bconv15_sc333_dis/weights*
use_locking(*
T0*
_output_shapes
:	�d
�
!save_1/RestoreV2_161/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv10/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_161/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_161	RestoreV2save_1/Const!save_1/RestoreV2_161/tensor_names%save_1/RestoreV2_161/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_161AssignThirdAMIN/conv10/BatchNorm/betasave_1/RestoreV2_161*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv10/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_162/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv10/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_162/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_162	RestoreV2save_1/Const!save_1/RestoreV2_162/tensor_names%save_1/RestoreV2_162/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_162Assign ThirdAMIN/conv10/BatchNorm/gammasave_1/RestoreV2_162*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv10/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_163/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv10/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_163/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_163	RestoreV2save_1/Const!save_1/RestoreV2_163/tensor_names%save_1/RestoreV2_163/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_163Assign&ThirdAMIN/conv10/BatchNorm/moving_meansave_1/RestoreV2_163*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv10/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_164/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv10/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_164/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_164	RestoreV2save_1/Const!save_1/RestoreV2_164/tensor_names%save_1/RestoreV2_164/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_164Assign*ThirdAMIN/conv10/BatchNorm/moving_variancesave_1/RestoreV2_164*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv10/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_165/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv10/weights*
_output_shapes
:
n
%save_1/RestoreV2_165/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_165	RestoreV2save_1/Const!save_1/RestoreV2_165/tensor_names%save_1/RestoreV2_165/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_165AssignThirdAMIN/conv10/weightssave_1/RestoreV2_165*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv10/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_166/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv12/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_166/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_166	RestoreV2save_1/Const!save_1/RestoreV2_166/tensor_names%save_1/RestoreV2_166/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_166AssignThirdAMIN/conv12/BatchNorm/betasave_1/RestoreV2_166*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv12/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_167/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv12/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_167/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_167	RestoreV2save_1/Const!save_1/RestoreV2_167/tensor_names%save_1/RestoreV2_167/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_167Assign ThirdAMIN/conv12/BatchNorm/gammasave_1/RestoreV2_167*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv12/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_168/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv12/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_168/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_168	RestoreV2save_1/Const!save_1/RestoreV2_168/tensor_names%save_1/RestoreV2_168/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_168Assign&ThirdAMIN/conv12/BatchNorm/moving_meansave_1/RestoreV2_168*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv12/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_169/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv12/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_169/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_169	RestoreV2save_1/Const!save_1/RestoreV2_169/tensor_names%save_1/RestoreV2_169/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_169Assign*ThirdAMIN/conv12/BatchNorm/moving_variancesave_1/RestoreV2_169*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv12/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_170/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv12/weights*
_output_shapes
:
n
%save_1/RestoreV2_170/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_170	RestoreV2save_1/Const!save_1/RestoreV2_170/tensor_names%save_1/RestoreV2_170/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_170AssignThirdAMIN/conv12/weightssave_1/RestoreV2_170*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv12/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_171/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv13/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_171/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_171	RestoreV2save_1/Const!save_1/RestoreV2_171/tensor_names%save_1/RestoreV2_171/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_171AssignThirdAMIN/conv13/BatchNorm/betasave_1/RestoreV2_171*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv13/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_172/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv13/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_172/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_172	RestoreV2save_1/Const!save_1/RestoreV2_172/tensor_names%save_1/RestoreV2_172/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_172Assign ThirdAMIN/conv13/BatchNorm/gammasave_1/RestoreV2_172*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv13/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_173/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv13/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_173/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_173	RestoreV2save_1/Const!save_1/RestoreV2_173/tensor_names%save_1/RestoreV2_173/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_173Assign&ThirdAMIN/conv13/BatchNorm/moving_meansave_1/RestoreV2_173*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv13/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_174/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv13/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_174/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_174	RestoreV2save_1/Const!save_1/RestoreV2_174/tensor_names%save_1/RestoreV2_174/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_174Assign*ThirdAMIN/conv13/BatchNorm/moving_variancesave_1/RestoreV2_174*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv13/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_175/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv13/weights*
_output_shapes
:
n
%save_1/RestoreV2_175/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_175	RestoreV2save_1/Const!save_1/RestoreV2_175/tensor_names%save_1/RestoreV2_175/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_175AssignThirdAMIN/conv13/weightssave_1/RestoreV2_175*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv13/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_176/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv14/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_176/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_176	RestoreV2save_1/Const!save_1/RestoreV2_176/tensor_names%save_1/RestoreV2_176/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_176AssignThirdAMIN/conv14/BatchNorm/betasave_1/RestoreV2_176*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv14/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_177/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv14/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_177/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_177	RestoreV2save_1/Const!save_1/RestoreV2_177/tensor_names%save_1/RestoreV2_177/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_177Assign ThirdAMIN/conv14/BatchNorm/gammasave_1/RestoreV2_177*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv14/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_178/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv14/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_178/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_178	RestoreV2save_1/Const!save_1/RestoreV2_178/tensor_names%save_1/RestoreV2_178/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_178Assign&ThirdAMIN/conv14/BatchNorm/moving_meansave_1/RestoreV2_178*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv14/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_179/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv14/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_179/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_179	RestoreV2save_1/Const!save_1/RestoreV2_179/tensor_names%save_1/RestoreV2_179/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_179Assign*ThirdAMIN/conv14/BatchNorm/moving_variancesave_1/RestoreV2_179*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv14/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_180/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv14/weights*
_output_shapes
:
n
%save_1/RestoreV2_180/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_180	RestoreV2save_1/Const!save_1/RestoreV2_180/tensor_names%save_1/RestoreV2_180/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_180AssignThirdAMIN/conv14/weightssave_1/RestoreV2_180*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv14/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_181/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv15/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_181/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_181	RestoreV2save_1/Const!save_1/RestoreV2_181/tensor_names%save_1/RestoreV2_181/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_181AssignThirdAMIN/conv15/BatchNorm/betasave_1/RestoreV2_181*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv15/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_182/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv15/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_182/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_182	RestoreV2save_1/Const!save_1/RestoreV2_182/tensor_names%save_1/RestoreV2_182/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_182Assign ThirdAMIN/conv15/BatchNorm/gammasave_1/RestoreV2_182*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv15/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_183/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv15/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_183/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_183	RestoreV2save_1/Const!save_1/RestoreV2_183/tensor_names%save_1/RestoreV2_183/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_183Assign&ThirdAMIN/conv15/BatchNorm/moving_meansave_1/RestoreV2_183*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv15/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_184/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv15/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_184/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_184	RestoreV2save_1/Const!save_1/RestoreV2_184/tensor_names%save_1/RestoreV2_184/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_184Assign*ThirdAMIN/conv15/BatchNorm/moving_variancesave_1/RestoreV2_184*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv15/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_185/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv15/weights*
_output_shapes
:
n
%save_1/RestoreV2_185/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_185	RestoreV2save_1/Const!save_1/RestoreV2_185/tensor_names%save_1/RestoreV2_185/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_185AssignThirdAMIN/conv15/weightssave_1/RestoreV2_185*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv15/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_186/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv16/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_186/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_186	RestoreV2save_1/Const!save_1/RestoreV2_186/tensor_names%save_1/RestoreV2_186/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_186AssignThirdAMIN/conv16/BatchNorm/betasave_1/RestoreV2_186*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv16/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_187/tensor_namesConst*
dtype0*5
value,B*B ThirdAMIN/conv16/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_187/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_187	RestoreV2save_1/Const!save_1/RestoreV2_187/tensor_names%save_1/RestoreV2_187/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_187Assign ThirdAMIN/conv16/BatchNorm/gammasave_1/RestoreV2_187*
validate_shape(*3
_class)
'%loc:@ThirdAMIN/conv16/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_188/tensor_namesConst*
dtype0*;
value2B0B&ThirdAMIN/conv16/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_188/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_188	RestoreV2save_1/Const!save_1/RestoreV2_188/tensor_names%save_1/RestoreV2_188/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_188Assign&ThirdAMIN/conv16/BatchNorm/moving_meansave_1/RestoreV2_188*
validate_shape(*9
_class/
-+loc:@ThirdAMIN/conv16/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_189/tensor_namesConst*
dtype0*?
value6B4B*ThirdAMIN/conv16/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_189/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_189	RestoreV2save_1/Const!save_1/RestoreV2_189/tensor_names%save_1/RestoreV2_189/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_189Assign*ThirdAMIN/conv16/BatchNorm/moving_variancesave_1/RestoreV2_189*
validate_shape(*=
_class3
1/loc:@ThirdAMIN/conv16/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_190/tensor_namesConst*
dtype0*-
value$B"BThirdAMIN/conv16/weights*
_output_shapes
:
n
%save_1/RestoreV2_190/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_190	RestoreV2save_1/Const!save_1/RestoreV2_190/tensor_names%save_1/RestoreV2_190/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_190AssignThirdAMIN/conv16/weightssave_1/RestoreV2_190*
validate_shape(*+
_class!
loc:@ThirdAMIN/conv16/weights*
use_locking(*
T0*&
_output_shapes
:
�
!save_1/RestoreV2_191/tensor_namesConst*
dtype0*3
value*B(BThirdAMIN/conv9/BatchNorm/beta*
_output_shapes
:
n
%save_1/RestoreV2_191/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_191	RestoreV2save_1/Const!save_1/RestoreV2_191/tensor_names%save_1/RestoreV2_191/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_191AssignThirdAMIN/conv9/BatchNorm/betasave_1/RestoreV2_191*
validate_shape(*1
_class'
%#loc:@ThirdAMIN/conv9/BatchNorm/beta*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_192/tensor_namesConst*
dtype0*4
value+B)BThirdAMIN/conv9/BatchNorm/gamma*
_output_shapes
:
n
%save_1/RestoreV2_192/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_192	RestoreV2save_1/Const!save_1/RestoreV2_192/tensor_names%save_1/RestoreV2_192/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_192AssignThirdAMIN/conv9/BatchNorm/gammasave_1/RestoreV2_192*
validate_shape(*2
_class(
&$loc:@ThirdAMIN/conv9/BatchNorm/gamma*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_193/tensor_namesConst*
dtype0*:
value1B/B%ThirdAMIN/conv9/BatchNorm/moving_mean*
_output_shapes
:
n
%save_1/RestoreV2_193/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_193	RestoreV2save_1/Const!save_1/RestoreV2_193/tensor_names%save_1/RestoreV2_193/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_193Assign%ThirdAMIN/conv9/BatchNorm/moving_meansave_1/RestoreV2_193*
validate_shape(*8
_class.
,*loc:@ThirdAMIN/conv9/BatchNorm/moving_mean*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_194/tensor_namesConst*
dtype0*>
value5B3B)ThirdAMIN/conv9/BatchNorm/moving_variance*
_output_shapes
:
n
%save_1/RestoreV2_194/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_194	RestoreV2save_1/Const!save_1/RestoreV2_194/tensor_names%save_1/RestoreV2_194/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_194Assign)ThirdAMIN/conv9/BatchNorm/moving_variancesave_1/RestoreV2_194*
validate_shape(*<
_class2
0.loc:@ThirdAMIN/conv9/BatchNorm/moving_variance*
use_locking(*
T0*
_output_shapes
:
�
!save_1/RestoreV2_195/tensor_namesConst*
dtype0*,
value#B!BThirdAMIN/conv9/weights*
_output_shapes
:
n
%save_1/RestoreV2_195/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2_195	RestoreV2save_1/Const!save_1/RestoreV2_195/tensor_names%save_1/RestoreV2_195/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_195AssignThirdAMIN/conv9/weightssave_1/RestoreV2_195*
validate_shape(**
_class 
loc:@ThirdAMIN/conv9/weights*
use_locking(*
T0*&
_output_shapes
:
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_157^save_1/Assign_158^save_1/Assign_159^save_1/Assign_160^save_1/Assign_161^save_1/Assign_162^save_1/Assign_163^save_1/Assign_164^save_1/Assign_165^save_1/Assign_166^save_1/Assign_167^save_1/Assign_168^save_1/Assign_169^save_1/Assign_170^save_1/Assign_171^save_1/Assign_172^save_1/Assign_173^save_1/Assign_174^save_1/Assign_175^save_1/Assign_176^save_1/Assign_177^save_1/Assign_178^save_1/Assign_179^save_1/Assign_180^save_1/Assign_181^save_1/Assign_182^save_1/Assign_183^save_1/Assign_184^save_1/Assign_185^save_1/Assign_186^save_1/Assign_187^save_1/Assign_188^save_1/Assign_189^save_1/Assign_190^save_1/Assign_191^save_1/Assign_192^save_1/Assign_193^save_1/Assign_194^save_1/Assign_195
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"��
	variables����
^
SecondAMIN/conv0/weights:0SecondAMIN/conv0/weights/AssignSecondAMIN/conv0/weights/read:0
s
!SecondAMIN/conv0/BatchNorm/beta:0&SecondAMIN/conv0/BatchNorm/beta/Assign&SecondAMIN/conv0/BatchNorm/beta/read:0
v
"SecondAMIN/conv0/BatchNorm/gamma:0'SecondAMIN/conv0/BatchNorm/gamma/Assign'SecondAMIN/conv0/BatchNorm/gamma/read:0
�
(SecondAMIN/conv0/BatchNorm/moving_mean:0-SecondAMIN/conv0/BatchNorm/moving_mean/Assign-SecondAMIN/conv0/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv0/BatchNorm/moving_variance:01SecondAMIN/conv0/BatchNorm/moving_variance/Assign1SecondAMIN/conv0/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv1/weights:0SecondAMIN/conv1/weights/AssignSecondAMIN/conv1/weights/read:0
s
!SecondAMIN/conv1/BatchNorm/beta:0&SecondAMIN/conv1/BatchNorm/beta/Assign&SecondAMIN/conv1/BatchNorm/beta/read:0
v
"SecondAMIN/conv1/BatchNorm/gamma:0'SecondAMIN/conv1/BatchNorm/gamma/Assign'SecondAMIN/conv1/BatchNorm/gamma/read:0
�
(SecondAMIN/conv1/BatchNorm/moving_mean:0-SecondAMIN/conv1/BatchNorm/moving_mean/Assign-SecondAMIN/conv1/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv1/BatchNorm/moving_variance:01SecondAMIN/conv1/BatchNorm/moving_variance/Assign1SecondAMIN/conv1/BatchNorm/moving_variance/read:0
a
SecondAMIN/bconv1/weights:0 SecondAMIN/bconv1/weights/Assign SecondAMIN/bconv1/weights/read:0
v
"SecondAMIN/bconv1/BatchNorm/beta:0'SecondAMIN/bconv1/BatchNorm/beta/Assign'SecondAMIN/bconv1/BatchNorm/beta/read:0
y
#SecondAMIN/bconv1/BatchNorm/gamma:0(SecondAMIN/bconv1/BatchNorm/gamma/Assign(SecondAMIN/bconv1/BatchNorm/gamma/read:0
�
)SecondAMIN/bconv1/BatchNorm/moving_mean:0.SecondAMIN/bconv1/BatchNorm/moving_mean/Assign.SecondAMIN/bconv1/BatchNorm/moving_mean/read:0
�
-SecondAMIN/bconv1/BatchNorm/moving_variance:02SecondAMIN/bconv1/BatchNorm/moving_variance/Assign2SecondAMIN/bconv1/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv2/weights:0SecondAMIN/conv2/weights/AssignSecondAMIN/conv2/weights/read:0
s
!SecondAMIN/conv2/BatchNorm/beta:0&SecondAMIN/conv2/BatchNorm/beta/Assign&SecondAMIN/conv2/BatchNorm/beta/read:0
v
"SecondAMIN/conv2/BatchNorm/gamma:0'SecondAMIN/conv2/BatchNorm/gamma/Assign'SecondAMIN/conv2/BatchNorm/gamma/read:0
�
(SecondAMIN/conv2/BatchNorm/moving_mean:0-SecondAMIN/conv2/BatchNorm/moving_mean/Assign-SecondAMIN/conv2/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv2/BatchNorm/moving_variance:01SecondAMIN/conv2/BatchNorm/moving_variance/Assign1SecondAMIN/conv2/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv3/weights:0SecondAMIN/conv3/weights/AssignSecondAMIN/conv3/weights/read:0
s
!SecondAMIN/conv3/BatchNorm/beta:0&SecondAMIN/conv3/BatchNorm/beta/Assign&SecondAMIN/conv3/BatchNorm/beta/read:0
v
"SecondAMIN/conv3/BatchNorm/gamma:0'SecondAMIN/conv3/BatchNorm/gamma/Assign'SecondAMIN/conv3/BatchNorm/gamma/read:0
�
(SecondAMIN/conv3/BatchNorm/moving_mean:0-SecondAMIN/conv3/BatchNorm/moving_mean/Assign-SecondAMIN/conv3/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv3/BatchNorm/moving_variance:01SecondAMIN/conv3/BatchNorm/moving_variance/Assign1SecondAMIN/conv3/BatchNorm/moving_variance/read:0
a
SecondAMIN/bconv2/weights:0 SecondAMIN/bconv2/weights/Assign SecondAMIN/bconv2/weights/read:0
v
"SecondAMIN/bconv2/BatchNorm/beta:0'SecondAMIN/bconv2/BatchNorm/beta/Assign'SecondAMIN/bconv2/BatchNorm/beta/read:0
y
#SecondAMIN/bconv2/BatchNorm/gamma:0(SecondAMIN/bconv2/BatchNorm/gamma/Assign(SecondAMIN/bconv2/BatchNorm/gamma/read:0
�
)SecondAMIN/bconv2/BatchNorm/moving_mean:0.SecondAMIN/bconv2/BatchNorm/moving_mean/Assign.SecondAMIN/bconv2/BatchNorm/moving_mean/read:0
�
-SecondAMIN/bconv2/BatchNorm/moving_variance:02SecondAMIN/bconv2/BatchNorm/moving_variance/Assign2SecondAMIN/bconv2/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv4/weights:0SecondAMIN/conv4/weights/AssignSecondAMIN/conv4/weights/read:0
s
!SecondAMIN/conv4/BatchNorm/beta:0&SecondAMIN/conv4/BatchNorm/beta/Assign&SecondAMIN/conv4/BatchNorm/beta/read:0
v
"SecondAMIN/conv4/BatchNorm/gamma:0'SecondAMIN/conv4/BatchNorm/gamma/Assign'SecondAMIN/conv4/BatchNorm/gamma/read:0
�
(SecondAMIN/conv4/BatchNorm/moving_mean:0-SecondAMIN/conv4/BatchNorm/moving_mean/Assign-SecondAMIN/conv4/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv4/BatchNorm/moving_variance:01SecondAMIN/conv4/BatchNorm/moving_variance/Assign1SecondAMIN/conv4/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv5/weights:0SecondAMIN/conv5/weights/AssignSecondAMIN/conv5/weights/read:0
s
!SecondAMIN/conv5/BatchNorm/beta:0&SecondAMIN/conv5/BatchNorm/beta/Assign&SecondAMIN/conv5/BatchNorm/beta/read:0
v
"SecondAMIN/conv5/BatchNorm/gamma:0'SecondAMIN/conv5/BatchNorm/gamma/Assign'SecondAMIN/conv5/BatchNorm/gamma/read:0
�
(SecondAMIN/conv5/BatchNorm/moving_mean:0-SecondAMIN/conv5/BatchNorm/moving_mean/Assign-SecondAMIN/conv5/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv5/BatchNorm/moving_variance:01SecondAMIN/conv5/BatchNorm/moving_variance/Assign1SecondAMIN/conv5/BatchNorm/moving_variance/read:0
a
SecondAMIN/bconv3/weights:0 SecondAMIN/bconv3/weights/Assign SecondAMIN/bconv3/weights/read:0
v
"SecondAMIN/bconv3/BatchNorm/beta:0'SecondAMIN/bconv3/BatchNorm/beta/Assign'SecondAMIN/bconv3/BatchNorm/beta/read:0
y
#SecondAMIN/bconv3/BatchNorm/gamma:0(SecondAMIN/bconv3/BatchNorm/gamma/Assign(SecondAMIN/bconv3/BatchNorm/gamma/read:0
�
)SecondAMIN/bconv3/BatchNorm/moving_mean:0.SecondAMIN/bconv3/BatchNorm/moving_mean/Assign.SecondAMIN/bconv3/BatchNorm/moving_mean/read:0
�
-SecondAMIN/bconv3/BatchNorm/moving_variance:02SecondAMIN/bconv3/BatchNorm/moving_variance/Assign2SecondAMIN/bconv3/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv6/weights:0SecondAMIN/conv6/weights/AssignSecondAMIN/conv6/weights/read:0
s
!SecondAMIN/conv6/BatchNorm/beta:0&SecondAMIN/conv6/BatchNorm/beta/Assign&SecondAMIN/conv6/BatchNorm/beta/read:0
v
"SecondAMIN/conv6/BatchNorm/gamma:0'SecondAMIN/conv6/BatchNorm/gamma/Assign'SecondAMIN/conv6/BatchNorm/gamma/read:0
�
(SecondAMIN/conv6/BatchNorm/moving_mean:0-SecondAMIN/conv6/BatchNorm/moving_mean/Assign-SecondAMIN/conv6/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv6/BatchNorm/moving_variance:01SecondAMIN/conv6/BatchNorm/moving_variance/Assign1SecondAMIN/conv6/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv7/weights:0SecondAMIN/conv7/weights/AssignSecondAMIN/conv7/weights/read:0
s
!SecondAMIN/conv7/BatchNorm/beta:0&SecondAMIN/conv7/BatchNorm/beta/Assign&SecondAMIN/conv7/BatchNorm/beta/read:0
v
"SecondAMIN/conv7/BatchNorm/gamma:0'SecondAMIN/conv7/BatchNorm/gamma/Assign'SecondAMIN/conv7/BatchNorm/gamma/read:0
�
(SecondAMIN/conv7/BatchNorm/moving_mean:0-SecondAMIN/conv7/BatchNorm/moving_mean/Assign-SecondAMIN/conv7/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv7/BatchNorm/moving_variance:01SecondAMIN/conv7/BatchNorm/moving_variance/Assign1SecondAMIN/conv7/BatchNorm/moving_variance/read:0
^
SecondAMIN/conv8/weights:0SecondAMIN/conv8/weights/AssignSecondAMIN/conv8/weights/read:0
s
!SecondAMIN/conv8/BatchNorm/beta:0&SecondAMIN/conv8/BatchNorm/beta/Assign&SecondAMIN/conv8/BatchNorm/beta/read:0
v
"SecondAMIN/conv8/BatchNorm/gamma:0'SecondAMIN/conv8/BatchNorm/gamma/Assign'SecondAMIN/conv8/BatchNorm/gamma/read:0
�
(SecondAMIN/conv8/BatchNorm/moving_mean:0-SecondAMIN/conv8/BatchNorm/moving_mean/Assign-SecondAMIN/conv8/BatchNorm/moving_mean/read:0
�
,SecondAMIN/conv8/BatchNorm/moving_variance:01SecondAMIN/conv8/BatchNorm/moving_variance/Assign1SecondAMIN/conv8/BatchNorm/moving_variance/read:0
a
SecondAMIN/conv11/weights:0 SecondAMIN/conv11/weights/Assign SecondAMIN/conv11/weights/read:0
[
FirstAMIN/conv0/weights:0FirstAMIN/conv0/weights/AssignFirstAMIN/conv0/weights/read:0
p
 FirstAMIN/conv0/BatchNorm/beta:0%FirstAMIN/conv0/BatchNorm/beta/Assign%FirstAMIN/conv0/BatchNorm/beta/read:0
s
!FirstAMIN/conv0/BatchNorm/gamma:0&FirstAMIN/conv0/BatchNorm/gamma/Assign&FirstAMIN/conv0/BatchNorm/gamma/read:0
�
'FirstAMIN/conv0/BatchNorm/moving_mean:0,FirstAMIN/conv0/BatchNorm/moving_mean/Assign,FirstAMIN/conv0/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv0/BatchNorm/moving_variance:00FirstAMIN/conv0/BatchNorm/moving_variance/Assign0FirstAMIN/conv0/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv1/weights:0FirstAMIN/conv1/weights/AssignFirstAMIN/conv1/weights/read:0
p
 FirstAMIN/conv1/BatchNorm/beta:0%FirstAMIN/conv1/BatchNorm/beta/Assign%FirstAMIN/conv1/BatchNorm/beta/read:0
s
!FirstAMIN/conv1/BatchNorm/gamma:0&FirstAMIN/conv1/BatchNorm/gamma/Assign&FirstAMIN/conv1/BatchNorm/gamma/read:0
�
'FirstAMIN/conv1/BatchNorm/moving_mean:0,FirstAMIN/conv1/BatchNorm/moving_mean/Assign,FirstAMIN/conv1/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv1/BatchNorm/moving_variance:00FirstAMIN/conv1/BatchNorm/moving_variance/Assign0FirstAMIN/conv1/BatchNorm/moving_variance/read:0
^
FirstAMIN/bconv1/weights:0FirstAMIN/bconv1/weights/AssignFirstAMIN/bconv1/weights/read:0
s
!FirstAMIN/bconv1/BatchNorm/beta:0&FirstAMIN/bconv1/BatchNorm/beta/Assign&FirstAMIN/bconv1/BatchNorm/beta/read:0
v
"FirstAMIN/bconv1/BatchNorm/gamma:0'FirstAMIN/bconv1/BatchNorm/gamma/Assign'FirstAMIN/bconv1/BatchNorm/gamma/read:0
�
(FirstAMIN/bconv1/BatchNorm/moving_mean:0-FirstAMIN/bconv1/BatchNorm/moving_mean/Assign-FirstAMIN/bconv1/BatchNorm/moving_mean/read:0
�
,FirstAMIN/bconv1/BatchNorm/moving_variance:01FirstAMIN/bconv1/BatchNorm/moving_variance/Assign1FirstAMIN/bconv1/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv2/weights:0FirstAMIN/conv2/weights/AssignFirstAMIN/conv2/weights/read:0
p
 FirstAMIN/conv2/BatchNorm/beta:0%FirstAMIN/conv2/BatchNorm/beta/Assign%FirstAMIN/conv2/BatchNorm/beta/read:0
s
!FirstAMIN/conv2/BatchNorm/gamma:0&FirstAMIN/conv2/BatchNorm/gamma/Assign&FirstAMIN/conv2/BatchNorm/gamma/read:0
�
'FirstAMIN/conv2/BatchNorm/moving_mean:0,FirstAMIN/conv2/BatchNorm/moving_mean/Assign,FirstAMIN/conv2/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv2/BatchNorm/moving_variance:00FirstAMIN/conv2/BatchNorm/moving_variance/Assign0FirstAMIN/conv2/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv3/weights:0FirstAMIN/conv3/weights/AssignFirstAMIN/conv3/weights/read:0
p
 FirstAMIN/conv3/BatchNorm/beta:0%FirstAMIN/conv3/BatchNorm/beta/Assign%FirstAMIN/conv3/BatchNorm/beta/read:0
s
!FirstAMIN/conv3/BatchNorm/gamma:0&FirstAMIN/conv3/BatchNorm/gamma/Assign&FirstAMIN/conv3/BatchNorm/gamma/read:0
�
'FirstAMIN/conv3/BatchNorm/moving_mean:0,FirstAMIN/conv3/BatchNorm/moving_mean/Assign,FirstAMIN/conv3/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv3/BatchNorm/moving_variance:00FirstAMIN/conv3/BatchNorm/moving_variance/Assign0FirstAMIN/conv3/BatchNorm/moving_variance/read:0
^
FirstAMIN/bconv2/weights:0FirstAMIN/bconv2/weights/AssignFirstAMIN/bconv2/weights/read:0
s
!FirstAMIN/bconv2/BatchNorm/beta:0&FirstAMIN/bconv2/BatchNorm/beta/Assign&FirstAMIN/bconv2/BatchNorm/beta/read:0
v
"FirstAMIN/bconv2/BatchNorm/gamma:0'FirstAMIN/bconv2/BatchNorm/gamma/Assign'FirstAMIN/bconv2/BatchNorm/gamma/read:0
�
(FirstAMIN/bconv2/BatchNorm/moving_mean:0-FirstAMIN/bconv2/BatchNorm/moving_mean/Assign-FirstAMIN/bconv2/BatchNorm/moving_mean/read:0
�
,FirstAMIN/bconv2/BatchNorm/moving_variance:01FirstAMIN/bconv2/BatchNorm/moving_variance/Assign1FirstAMIN/bconv2/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv4/weights:0FirstAMIN/conv4/weights/AssignFirstAMIN/conv4/weights/read:0
p
 FirstAMIN/conv4/BatchNorm/beta:0%FirstAMIN/conv4/BatchNorm/beta/Assign%FirstAMIN/conv4/BatchNorm/beta/read:0
s
!FirstAMIN/conv4/BatchNorm/gamma:0&FirstAMIN/conv4/BatchNorm/gamma/Assign&FirstAMIN/conv4/BatchNorm/gamma/read:0
�
'FirstAMIN/conv4/BatchNorm/moving_mean:0,FirstAMIN/conv4/BatchNorm/moving_mean/Assign,FirstAMIN/conv4/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv4/BatchNorm/moving_variance:00FirstAMIN/conv4/BatchNorm/moving_variance/Assign0FirstAMIN/conv4/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv5/weights:0FirstAMIN/conv5/weights/AssignFirstAMIN/conv5/weights/read:0
p
 FirstAMIN/conv5/BatchNorm/beta:0%FirstAMIN/conv5/BatchNorm/beta/Assign%FirstAMIN/conv5/BatchNorm/beta/read:0
s
!FirstAMIN/conv5/BatchNorm/gamma:0&FirstAMIN/conv5/BatchNorm/gamma/Assign&FirstAMIN/conv5/BatchNorm/gamma/read:0
�
'FirstAMIN/conv5/BatchNorm/moving_mean:0,FirstAMIN/conv5/BatchNorm/moving_mean/Assign,FirstAMIN/conv5/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv5/BatchNorm/moving_variance:00FirstAMIN/conv5/BatchNorm/moving_variance/Assign0FirstAMIN/conv5/BatchNorm/moving_variance/read:0
^
FirstAMIN/bconv3/weights:0FirstAMIN/bconv3/weights/AssignFirstAMIN/bconv3/weights/read:0
s
!FirstAMIN/bconv3/BatchNorm/beta:0&FirstAMIN/bconv3/BatchNorm/beta/Assign&FirstAMIN/bconv3/BatchNorm/beta/read:0
v
"FirstAMIN/bconv3/BatchNorm/gamma:0'FirstAMIN/bconv3/BatchNorm/gamma/Assign'FirstAMIN/bconv3/BatchNorm/gamma/read:0
�
(FirstAMIN/bconv3/BatchNorm/moving_mean:0-FirstAMIN/bconv3/BatchNorm/moving_mean/Assign-FirstAMIN/bconv3/BatchNorm/moving_mean/read:0
�
,FirstAMIN/bconv3/BatchNorm/moving_variance:01FirstAMIN/bconv3/BatchNorm/moving_variance/Assign1FirstAMIN/bconv3/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv6/weights:0FirstAMIN/conv6/weights/AssignFirstAMIN/conv6/weights/read:0
p
 FirstAMIN/conv6/BatchNorm/beta:0%FirstAMIN/conv6/BatchNorm/beta/Assign%FirstAMIN/conv6/BatchNorm/beta/read:0
s
!FirstAMIN/conv6/BatchNorm/gamma:0&FirstAMIN/conv6/BatchNorm/gamma/Assign&FirstAMIN/conv6/BatchNorm/gamma/read:0
�
'FirstAMIN/conv6/BatchNorm/moving_mean:0,FirstAMIN/conv6/BatchNorm/moving_mean/Assign,FirstAMIN/conv6/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv6/BatchNorm/moving_variance:00FirstAMIN/conv6/BatchNorm/moving_variance/Assign0FirstAMIN/conv6/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv7/weights:0FirstAMIN/conv7/weights/AssignFirstAMIN/conv7/weights/read:0
p
 FirstAMIN/conv7/BatchNorm/beta:0%FirstAMIN/conv7/BatchNorm/beta/Assign%FirstAMIN/conv7/BatchNorm/beta/read:0
s
!FirstAMIN/conv7/BatchNorm/gamma:0&FirstAMIN/conv7/BatchNorm/gamma/Assign&FirstAMIN/conv7/BatchNorm/gamma/read:0
�
'FirstAMIN/conv7/BatchNorm/moving_mean:0,FirstAMIN/conv7/BatchNorm/moving_mean/Assign,FirstAMIN/conv7/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv7/BatchNorm/moving_variance:00FirstAMIN/conv7/BatchNorm/moving_variance/Assign0FirstAMIN/conv7/BatchNorm/moving_variance/read:0
[
FirstAMIN/conv8/weights:0FirstAMIN/conv8/weights/AssignFirstAMIN/conv8/weights/read:0
p
 FirstAMIN/conv8/BatchNorm/beta:0%FirstAMIN/conv8/BatchNorm/beta/Assign%FirstAMIN/conv8/BatchNorm/beta/read:0
s
!FirstAMIN/conv8/BatchNorm/gamma:0&FirstAMIN/conv8/BatchNorm/gamma/Assign&FirstAMIN/conv8/BatchNorm/gamma/read:0
�
'FirstAMIN/conv8/BatchNorm/moving_mean:0,FirstAMIN/conv8/BatchNorm/moving_mean/Assign,FirstAMIN/conv8/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv8/BatchNorm/moving_variance:00FirstAMIN/conv8/BatchNorm/moving_variance/Assign0FirstAMIN/conv8/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv11/weights:0FirstAMIN/conv11/weights/AssignFirstAMIN/conv11/weights/read:0
[
FirstAMIN/conv9/weights:0FirstAMIN/conv9/weights/AssignFirstAMIN/conv9/weights/read:0
p
 FirstAMIN/conv9/BatchNorm/beta:0%FirstAMIN/conv9/BatchNorm/beta/Assign%FirstAMIN/conv9/BatchNorm/beta/read:0
s
!FirstAMIN/conv9/BatchNorm/gamma:0&FirstAMIN/conv9/BatchNorm/gamma/Assign&FirstAMIN/conv9/BatchNorm/gamma/read:0
�
'FirstAMIN/conv9/BatchNorm/moving_mean:0,FirstAMIN/conv9/BatchNorm/moving_mean/Assign,FirstAMIN/conv9/BatchNorm/moving_mean/read:0
�
+FirstAMIN/conv9/BatchNorm/moving_variance:00FirstAMIN/conv9/BatchNorm/moving_variance/Assign0FirstAMIN/conv9/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv10/weights:0FirstAMIN/conv10/weights/AssignFirstAMIN/conv10/weights/read:0
s
!FirstAMIN/conv10/BatchNorm/beta:0&FirstAMIN/conv10/BatchNorm/beta/Assign&FirstAMIN/conv10/BatchNorm/beta/read:0
v
"FirstAMIN/conv10/BatchNorm/gamma:0'FirstAMIN/conv10/BatchNorm/gamma/Assign'FirstAMIN/conv10/BatchNorm/gamma/read:0
�
(FirstAMIN/conv10/BatchNorm/moving_mean:0-FirstAMIN/conv10/BatchNorm/moving_mean/Assign-FirstAMIN/conv10/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv10/BatchNorm/moving_variance:01FirstAMIN/conv10/BatchNorm/moving_variance/Assign1FirstAMIN/conv10/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv12/weights:0FirstAMIN/conv12/weights/AssignFirstAMIN/conv12/weights/read:0
s
!FirstAMIN/conv12/BatchNorm/beta:0&FirstAMIN/conv12/BatchNorm/beta/Assign&FirstAMIN/conv12/BatchNorm/beta/read:0
v
"FirstAMIN/conv12/BatchNorm/gamma:0'FirstAMIN/conv12/BatchNorm/gamma/Assign'FirstAMIN/conv12/BatchNorm/gamma/read:0
�
(FirstAMIN/conv12/BatchNorm/moving_mean:0-FirstAMIN/conv12/BatchNorm/moving_mean/Assign-FirstAMIN/conv12/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv12/BatchNorm/moving_variance:01FirstAMIN/conv12/BatchNorm/moving_variance/Assign1FirstAMIN/conv12/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv13/weights:0FirstAMIN/conv13/weights/AssignFirstAMIN/conv13/weights/read:0
s
!FirstAMIN/conv13/BatchNorm/beta:0&FirstAMIN/conv13/BatchNorm/beta/Assign&FirstAMIN/conv13/BatchNorm/beta/read:0
v
"FirstAMIN/conv13/BatchNorm/gamma:0'FirstAMIN/conv13/BatchNorm/gamma/Assign'FirstAMIN/conv13/BatchNorm/gamma/read:0
�
(FirstAMIN/conv13/BatchNorm/moving_mean:0-FirstAMIN/conv13/BatchNorm/moving_mean/Assign-FirstAMIN/conv13/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv13/BatchNorm/moving_variance:01FirstAMIN/conv13/BatchNorm/moving_variance/Assign1FirstAMIN/conv13/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv14/weights:0FirstAMIN/conv14/weights/AssignFirstAMIN/conv14/weights/read:0
s
!FirstAMIN/conv14/BatchNorm/beta:0&FirstAMIN/conv14/BatchNorm/beta/Assign&FirstAMIN/conv14/BatchNorm/beta/read:0
v
"FirstAMIN/conv14/BatchNorm/gamma:0'FirstAMIN/conv14/BatchNorm/gamma/Assign'FirstAMIN/conv14/BatchNorm/gamma/read:0
�
(FirstAMIN/conv14/BatchNorm/moving_mean:0-FirstAMIN/conv14/BatchNorm/moving_mean/Assign-FirstAMIN/conv14/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv14/BatchNorm/moving_variance:01FirstAMIN/conv14/BatchNorm/moving_variance/Assign1FirstAMIN/conv14/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv15/weights:0FirstAMIN/conv15/weights/AssignFirstAMIN/conv15/weights/read:0
s
!FirstAMIN/conv15/BatchNorm/beta:0&FirstAMIN/conv15/BatchNorm/beta/Assign&FirstAMIN/conv15/BatchNorm/beta/read:0
v
"FirstAMIN/conv15/BatchNorm/gamma:0'FirstAMIN/conv15/BatchNorm/gamma/Assign'FirstAMIN/conv15/BatchNorm/gamma/read:0
�
(FirstAMIN/conv15/BatchNorm/moving_mean:0-FirstAMIN/conv15/BatchNorm/moving_mean/Assign-FirstAMIN/conv15/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv15/BatchNorm/moving_variance:01FirstAMIN/conv15/BatchNorm/moving_variance/Assign1FirstAMIN/conv15/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv16/weights:0FirstAMIN/conv16/weights/AssignFirstAMIN/conv16/weights/read:0
s
!FirstAMIN/conv16/BatchNorm/beta:0&FirstAMIN/conv16/BatchNorm/beta/Assign&FirstAMIN/conv16/BatchNorm/beta/read:0
v
"FirstAMIN/conv16/BatchNorm/gamma:0'FirstAMIN/conv16/BatchNorm/gamma/Assign'FirstAMIN/conv16/BatchNorm/gamma/read:0
�
(FirstAMIN/conv16/BatchNorm/moving_mean:0-FirstAMIN/conv16/BatchNorm/moving_mean/Assign-FirstAMIN/conv16/BatchNorm/moving_mean/read:0
�
,FirstAMIN/conv16/BatchNorm/moving_variance:01FirstAMIN/conv16/BatchNorm/moving_variance/Assign1FirstAMIN/conv16/BatchNorm/moving_variance/read:0
^
FirstAMIN/conv17/weights:0FirstAMIN/conv17/weights/AssignFirstAMIN/conv17/weights/read:0
[
ThirdAMIN/conv9/weights:0ThirdAMIN/conv9/weights/AssignThirdAMIN/conv9/weights/read:0
p
 ThirdAMIN/conv9/BatchNorm/beta:0%ThirdAMIN/conv9/BatchNorm/beta/Assign%ThirdAMIN/conv9/BatchNorm/beta/read:0
s
!ThirdAMIN/conv9/BatchNorm/gamma:0&ThirdAMIN/conv9/BatchNorm/gamma/Assign&ThirdAMIN/conv9/BatchNorm/gamma/read:0
�
'ThirdAMIN/conv9/BatchNorm/moving_mean:0,ThirdAMIN/conv9/BatchNorm/moving_mean/Assign,ThirdAMIN/conv9/BatchNorm/moving_mean/read:0
�
+ThirdAMIN/conv9/BatchNorm/moving_variance:00ThirdAMIN/conv9/BatchNorm/moving_variance/Assign0ThirdAMIN/conv9/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv10/weights:0ThirdAMIN/conv10/weights/AssignThirdAMIN/conv10/weights/read:0
s
!ThirdAMIN/conv10/BatchNorm/beta:0&ThirdAMIN/conv10/BatchNorm/beta/Assign&ThirdAMIN/conv10/BatchNorm/beta/read:0
v
"ThirdAMIN/conv10/BatchNorm/gamma:0'ThirdAMIN/conv10/BatchNorm/gamma/Assign'ThirdAMIN/conv10/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv10/BatchNorm/moving_mean:0-ThirdAMIN/conv10/BatchNorm/moving_mean/Assign-ThirdAMIN/conv10/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv10/BatchNorm/moving_variance:01ThirdAMIN/conv10/BatchNorm/moving_variance/Assign1ThirdAMIN/conv10/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv12/weights:0ThirdAMIN/conv12/weights/AssignThirdAMIN/conv12/weights/read:0
s
!ThirdAMIN/conv12/BatchNorm/beta:0&ThirdAMIN/conv12/BatchNorm/beta/Assign&ThirdAMIN/conv12/BatchNorm/beta/read:0
v
"ThirdAMIN/conv12/BatchNorm/gamma:0'ThirdAMIN/conv12/BatchNorm/gamma/Assign'ThirdAMIN/conv12/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv12/BatchNorm/moving_mean:0-ThirdAMIN/conv12/BatchNorm/moving_mean/Assign-ThirdAMIN/conv12/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv12/BatchNorm/moving_variance:01ThirdAMIN/conv12/BatchNorm/moving_variance/Assign1ThirdAMIN/conv12/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv13/weights:0ThirdAMIN/conv13/weights/AssignThirdAMIN/conv13/weights/read:0
s
!ThirdAMIN/conv13/BatchNorm/beta:0&ThirdAMIN/conv13/BatchNorm/beta/Assign&ThirdAMIN/conv13/BatchNorm/beta/read:0
v
"ThirdAMIN/conv13/BatchNorm/gamma:0'ThirdAMIN/conv13/BatchNorm/gamma/Assign'ThirdAMIN/conv13/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv13/BatchNorm/moving_mean:0-ThirdAMIN/conv13/BatchNorm/moving_mean/Assign-ThirdAMIN/conv13/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv13/BatchNorm/moving_variance:01ThirdAMIN/conv13/BatchNorm/moving_variance/Assign1ThirdAMIN/conv13/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv14/weights:0ThirdAMIN/conv14/weights/AssignThirdAMIN/conv14/weights/read:0
s
!ThirdAMIN/conv14/BatchNorm/beta:0&ThirdAMIN/conv14/BatchNorm/beta/Assign&ThirdAMIN/conv14/BatchNorm/beta/read:0
v
"ThirdAMIN/conv14/BatchNorm/gamma:0'ThirdAMIN/conv14/BatchNorm/gamma/Assign'ThirdAMIN/conv14/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv14/BatchNorm/moving_mean:0-ThirdAMIN/conv14/BatchNorm/moving_mean/Assign-ThirdAMIN/conv14/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv14/BatchNorm/moving_variance:01ThirdAMIN/conv14/BatchNorm/moving_variance/Assign1ThirdAMIN/conv14/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv15/weights:0ThirdAMIN/conv15/weights/AssignThirdAMIN/conv15/weights/read:0
s
!ThirdAMIN/conv15/BatchNorm/beta:0&ThirdAMIN/conv15/BatchNorm/beta/Assign&ThirdAMIN/conv15/BatchNorm/beta/read:0
v
"ThirdAMIN/conv15/BatchNorm/gamma:0'ThirdAMIN/conv15/BatchNorm/gamma/Assign'ThirdAMIN/conv15/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv15/BatchNorm/moving_mean:0-ThirdAMIN/conv15/BatchNorm/moving_mean/Assign-ThirdAMIN/conv15/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv15/BatchNorm/moving_variance:01ThirdAMIN/conv15/BatchNorm/moving_variance/Assign1ThirdAMIN/conv15/BatchNorm/moving_variance/read:0
^
ThirdAMIN/conv16/weights:0ThirdAMIN/conv16/weights/AssignThirdAMIN/conv16/weights/read:0
s
!ThirdAMIN/conv16/BatchNorm/beta:0&ThirdAMIN/conv16/BatchNorm/beta/Assign&ThirdAMIN/conv16/BatchNorm/beta/read:0
v
"ThirdAMIN/conv16/BatchNorm/gamma:0'ThirdAMIN/conv16/BatchNorm/gamma/Assign'ThirdAMIN/conv16/BatchNorm/gamma/read:0
�
(ThirdAMIN/conv16/BatchNorm/moving_mean:0-ThirdAMIN/conv16/BatchNorm/moving_mean/Assign-ThirdAMIN/conv16/BatchNorm/moving_mean/read:0
�
,ThirdAMIN/conv16/BatchNorm/moving_variance:01ThirdAMIN/conv16/BatchNorm/moving_variance/Assign1ThirdAMIN/conv16/BatchNorm/moving_variance/read:0

%ThirdAMIN/bconv15_sc333_dis/weights:0*ThirdAMIN/bconv15_sc333_dis/weights/Assign*ThirdAMIN/bconv15_sc333_dis/weights/read:0
|
$ThirdAMIN/bconv15_sc333_dis/biases:0)ThirdAMIN/bconv15_sc333_dis/biases/Assign)ThirdAMIN/bconv15_sc333_dis/biases/read:0
j
ThirdAMIN/bconv10_sc/weights:0#ThirdAMIN/bconv10_sc/weights/Assign#ThirdAMIN/bconv10_sc/weights/read:0"$
legacy_init_op

legacy_init_op"�
	summaries�
�
:convBlock-1/convBlock-1/SecondAMIN/conv1/Elu/activations:0
;convBlock-1/convBlock-1/SecondAMIN/bconv1/Elu/activations:0
:convBlock-1/convBlock-1/SecondAMIN/conv2/Elu/activations:0
:convBlock-2/convBlock-2/SecondAMIN/conv3/Elu/activations:0
;convBlock-2/convBlock-2/SecondAMIN/bconv2/Elu/activations:0
:convBlock-2/convBlock-2/SecondAMIN/conv4/Elu/activations:0
:convBlock-3/convBlock-3/SecondAMIN/conv5/Elu/activations:0
;convBlock-3/convBlock-3/SecondAMIN/bconv3/Elu/activations:0
:convBlock-3/convBlock-3/SecondAMIN/conv6/Elu/activations:0
BDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv7/Elu/activations:0
BDepth-Map-Block/Depth-Map-Block/SecondAMIN/conv8/Elu/activations:0
+SecondAMIN/conv11/convolution/activations:0

depthMap:0
ZeroOneMap:0
GT2:0
SC:0
	Live_SC:0
Live:0
inputImage:0
GT3_Artifact:0

Artifact:0"�8
model_variables�8
�8
SecondAMIN/conv0/weights:0
!SecondAMIN/conv0/BatchNorm/beta:0
"SecondAMIN/conv0/BatchNorm/gamma:0
(SecondAMIN/conv0/BatchNorm/moving_mean:0
,SecondAMIN/conv0/BatchNorm/moving_variance:0
SecondAMIN/conv1/weights:0
!SecondAMIN/conv1/BatchNorm/beta:0
"SecondAMIN/conv1/BatchNorm/gamma:0
(SecondAMIN/conv1/BatchNorm/moving_mean:0
,SecondAMIN/conv1/BatchNorm/moving_variance:0
SecondAMIN/bconv1/weights:0
"SecondAMIN/bconv1/BatchNorm/beta:0
#SecondAMIN/bconv1/BatchNorm/gamma:0
)SecondAMIN/bconv1/BatchNorm/moving_mean:0
-SecondAMIN/bconv1/BatchNorm/moving_variance:0
SecondAMIN/conv2/weights:0
!SecondAMIN/conv2/BatchNorm/beta:0
"SecondAMIN/conv2/BatchNorm/gamma:0
(SecondAMIN/conv2/BatchNorm/moving_mean:0
,SecondAMIN/conv2/BatchNorm/moving_variance:0
SecondAMIN/conv3/weights:0
!SecondAMIN/conv3/BatchNorm/beta:0
"SecondAMIN/conv3/BatchNorm/gamma:0
(SecondAMIN/conv3/BatchNorm/moving_mean:0
,SecondAMIN/conv3/BatchNorm/moving_variance:0
SecondAMIN/bconv2/weights:0
"SecondAMIN/bconv2/BatchNorm/beta:0
#SecondAMIN/bconv2/BatchNorm/gamma:0
)SecondAMIN/bconv2/BatchNorm/moving_mean:0
-SecondAMIN/bconv2/BatchNorm/moving_variance:0
SecondAMIN/conv4/weights:0
!SecondAMIN/conv4/BatchNorm/beta:0
"SecondAMIN/conv4/BatchNorm/gamma:0
(SecondAMIN/conv4/BatchNorm/moving_mean:0
,SecondAMIN/conv4/BatchNorm/moving_variance:0
SecondAMIN/conv5/weights:0
!SecondAMIN/conv5/BatchNorm/beta:0
"SecondAMIN/conv5/BatchNorm/gamma:0
(SecondAMIN/conv5/BatchNorm/moving_mean:0
,SecondAMIN/conv5/BatchNorm/moving_variance:0
SecondAMIN/bconv3/weights:0
"SecondAMIN/bconv3/BatchNorm/beta:0
#SecondAMIN/bconv3/BatchNorm/gamma:0
)SecondAMIN/bconv3/BatchNorm/moving_mean:0
-SecondAMIN/bconv3/BatchNorm/moving_variance:0
SecondAMIN/conv6/weights:0
!SecondAMIN/conv6/BatchNorm/beta:0
"SecondAMIN/conv6/BatchNorm/gamma:0
(SecondAMIN/conv6/BatchNorm/moving_mean:0
,SecondAMIN/conv6/BatchNorm/moving_variance:0
SecondAMIN/conv7/weights:0
!SecondAMIN/conv7/BatchNorm/beta:0
"SecondAMIN/conv7/BatchNorm/gamma:0
(SecondAMIN/conv7/BatchNorm/moving_mean:0
,SecondAMIN/conv7/BatchNorm/moving_variance:0
SecondAMIN/conv8/weights:0
!SecondAMIN/conv8/BatchNorm/beta:0
"SecondAMIN/conv8/BatchNorm/gamma:0
(SecondAMIN/conv8/BatchNorm/moving_mean:0
,SecondAMIN/conv8/BatchNorm/moving_variance:0
SecondAMIN/conv11/weights:0
FirstAMIN/conv0/weights:0
 FirstAMIN/conv0/BatchNorm/beta:0
!FirstAMIN/conv0/BatchNorm/gamma:0
'FirstAMIN/conv0/BatchNorm/moving_mean:0
+FirstAMIN/conv0/BatchNorm/moving_variance:0
FirstAMIN/conv1/weights:0
 FirstAMIN/conv1/BatchNorm/beta:0
!FirstAMIN/conv1/BatchNorm/gamma:0
'FirstAMIN/conv1/BatchNorm/moving_mean:0
+FirstAMIN/conv1/BatchNorm/moving_variance:0
FirstAMIN/bconv1/weights:0
!FirstAMIN/bconv1/BatchNorm/beta:0
"FirstAMIN/bconv1/BatchNorm/gamma:0
(FirstAMIN/bconv1/BatchNorm/moving_mean:0
,FirstAMIN/bconv1/BatchNorm/moving_variance:0
FirstAMIN/conv2/weights:0
 FirstAMIN/conv2/BatchNorm/beta:0
!FirstAMIN/conv2/BatchNorm/gamma:0
'FirstAMIN/conv2/BatchNorm/moving_mean:0
+FirstAMIN/conv2/BatchNorm/moving_variance:0
FirstAMIN/conv3/weights:0
 FirstAMIN/conv3/BatchNorm/beta:0
!FirstAMIN/conv3/BatchNorm/gamma:0
'FirstAMIN/conv3/BatchNorm/moving_mean:0
+FirstAMIN/conv3/BatchNorm/moving_variance:0
FirstAMIN/bconv2/weights:0
!FirstAMIN/bconv2/BatchNorm/beta:0
"FirstAMIN/bconv2/BatchNorm/gamma:0
(FirstAMIN/bconv2/BatchNorm/moving_mean:0
,FirstAMIN/bconv2/BatchNorm/moving_variance:0
FirstAMIN/conv4/weights:0
 FirstAMIN/conv4/BatchNorm/beta:0
!FirstAMIN/conv4/BatchNorm/gamma:0
'FirstAMIN/conv4/BatchNorm/moving_mean:0
+FirstAMIN/conv4/BatchNorm/moving_variance:0
FirstAMIN/conv5/weights:0
 FirstAMIN/conv5/BatchNorm/beta:0
!FirstAMIN/conv5/BatchNorm/gamma:0
'FirstAMIN/conv5/BatchNorm/moving_mean:0
+FirstAMIN/conv5/BatchNorm/moving_variance:0
FirstAMIN/bconv3/weights:0
!FirstAMIN/bconv3/BatchNorm/beta:0
"FirstAMIN/bconv3/BatchNorm/gamma:0
(FirstAMIN/bconv3/BatchNorm/moving_mean:0
,FirstAMIN/bconv3/BatchNorm/moving_variance:0
FirstAMIN/conv6/weights:0
 FirstAMIN/conv6/BatchNorm/beta:0
!FirstAMIN/conv6/BatchNorm/gamma:0
'FirstAMIN/conv6/BatchNorm/moving_mean:0
+FirstAMIN/conv6/BatchNorm/moving_variance:0
FirstAMIN/conv7/weights:0
 FirstAMIN/conv7/BatchNorm/beta:0
!FirstAMIN/conv7/BatchNorm/gamma:0
'FirstAMIN/conv7/BatchNorm/moving_mean:0
+FirstAMIN/conv7/BatchNorm/moving_variance:0
FirstAMIN/conv8/weights:0
 FirstAMIN/conv8/BatchNorm/beta:0
!FirstAMIN/conv8/BatchNorm/gamma:0
'FirstAMIN/conv8/BatchNorm/moving_mean:0
+FirstAMIN/conv8/BatchNorm/moving_variance:0
FirstAMIN/conv11/weights:0
FirstAMIN/conv9/weights:0
 FirstAMIN/conv9/BatchNorm/beta:0
!FirstAMIN/conv9/BatchNorm/gamma:0
'FirstAMIN/conv9/BatchNorm/moving_mean:0
+FirstAMIN/conv9/BatchNorm/moving_variance:0
FirstAMIN/conv10/weights:0
!FirstAMIN/conv10/BatchNorm/beta:0
"FirstAMIN/conv10/BatchNorm/gamma:0
(FirstAMIN/conv10/BatchNorm/moving_mean:0
,FirstAMIN/conv10/BatchNorm/moving_variance:0
FirstAMIN/conv12/weights:0
!FirstAMIN/conv12/BatchNorm/beta:0
"FirstAMIN/conv12/BatchNorm/gamma:0
(FirstAMIN/conv12/BatchNorm/moving_mean:0
,FirstAMIN/conv12/BatchNorm/moving_variance:0
FirstAMIN/conv13/weights:0
!FirstAMIN/conv13/BatchNorm/beta:0
"FirstAMIN/conv13/BatchNorm/gamma:0
(FirstAMIN/conv13/BatchNorm/moving_mean:0
,FirstAMIN/conv13/BatchNorm/moving_variance:0
FirstAMIN/conv14/weights:0
!FirstAMIN/conv14/BatchNorm/beta:0
"FirstAMIN/conv14/BatchNorm/gamma:0
(FirstAMIN/conv14/BatchNorm/moving_mean:0
,FirstAMIN/conv14/BatchNorm/moving_variance:0
FirstAMIN/conv15/weights:0
!FirstAMIN/conv15/BatchNorm/beta:0
"FirstAMIN/conv15/BatchNorm/gamma:0
(FirstAMIN/conv15/BatchNorm/moving_mean:0
,FirstAMIN/conv15/BatchNorm/moving_variance:0
FirstAMIN/conv16/weights:0
!FirstAMIN/conv16/BatchNorm/beta:0
"FirstAMIN/conv16/BatchNorm/gamma:0
(FirstAMIN/conv16/BatchNorm/moving_mean:0
,FirstAMIN/conv16/BatchNorm/moving_variance:0
FirstAMIN/conv17/weights:0
ThirdAMIN/conv9/weights:0
 ThirdAMIN/conv9/BatchNorm/beta:0
!ThirdAMIN/conv9/BatchNorm/gamma:0
'ThirdAMIN/conv9/BatchNorm/moving_mean:0
+ThirdAMIN/conv9/BatchNorm/moving_variance:0
ThirdAMIN/conv10/weights:0
!ThirdAMIN/conv10/BatchNorm/beta:0
"ThirdAMIN/conv10/BatchNorm/gamma:0
(ThirdAMIN/conv10/BatchNorm/moving_mean:0
,ThirdAMIN/conv10/BatchNorm/moving_variance:0
ThirdAMIN/conv12/weights:0
!ThirdAMIN/conv12/BatchNorm/beta:0
"ThirdAMIN/conv12/BatchNorm/gamma:0
(ThirdAMIN/conv12/BatchNorm/moving_mean:0
,ThirdAMIN/conv12/BatchNorm/moving_variance:0
ThirdAMIN/conv13/weights:0
!ThirdAMIN/conv13/BatchNorm/beta:0
"ThirdAMIN/conv13/BatchNorm/gamma:0
(ThirdAMIN/conv13/BatchNorm/moving_mean:0
,ThirdAMIN/conv13/BatchNorm/moving_variance:0
ThirdAMIN/conv14/weights:0
!ThirdAMIN/conv14/BatchNorm/beta:0
"ThirdAMIN/conv14/BatchNorm/gamma:0
(ThirdAMIN/conv14/BatchNorm/moving_mean:0
,ThirdAMIN/conv14/BatchNorm/moving_variance:0
ThirdAMIN/conv15/weights:0
!ThirdAMIN/conv15/BatchNorm/beta:0
"ThirdAMIN/conv15/BatchNorm/gamma:0
(ThirdAMIN/conv15/BatchNorm/moving_mean:0
,ThirdAMIN/conv15/BatchNorm/moving_variance:0
ThirdAMIN/conv16/weights:0
!ThirdAMIN/conv16/BatchNorm/beta:0
"ThirdAMIN/conv16/BatchNorm/gamma:0
(ThirdAMIN/conv16/BatchNorm/moving_mean:0
,ThirdAMIN/conv16/BatchNorm/moving_variance:0
%ThirdAMIN/bconv15_sc333_dis/weights:0
$ThirdAMIN/bconv15_sc333_dis/biases:0
ThirdAMIN/bconv10_sc/weights:0"�g
trainable_variables�g�g
^
SecondAMIN/conv0/weights:0SecondAMIN/conv0/weights/AssignSecondAMIN/conv0/weights/read:0
s
!SecondAMIN/conv0/BatchNorm/beta:0&SecondAMIN/conv0/BatchNorm/beta/Assign&SecondAMIN/conv0/BatchNorm/beta/read:0
v
"SecondAMIN/conv0/BatchNorm/gamma:0'SecondAMIN/conv0/BatchNorm/gamma/Assign'SecondAMIN/conv0/BatchNorm/gamma/read:0
^
SecondAMIN/conv1/weights:0SecondAMIN/conv1/weights/AssignSecondAMIN/conv1/weights/read:0
s
!SecondAMIN/conv1/BatchNorm/beta:0&SecondAMIN/conv1/BatchNorm/beta/Assign&SecondAMIN/conv1/BatchNorm/beta/read:0
v
"SecondAMIN/conv1/BatchNorm/gamma:0'SecondAMIN/conv1/BatchNorm/gamma/Assign'SecondAMIN/conv1/BatchNorm/gamma/read:0
a
SecondAMIN/bconv1/weights:0 SecondAMIN/bconv1/weights/Assign SecondAMIN/bconv1/weights/read:0
v
"SecondAMIN/bconv1/BatchNorm/beta:0'SecondAMIN/bconv1/BatchNorm/beta/Assign'SecondAMIN/bconv1/BatchNorm/beta/read:0
y
#SecondAMIN/bconv1/BatchNorm/gamma:0(SecondAMIN/bconv1/BatchNorm/gamma/Assign(SecondAMIN/bconv1/BatchNorm/gamma/read:0
^
SecondAMIN/conv2/weights:0SecondAMIN/conv2/weights/AssignSecondAMIN/conv2/weights/read:0
s
!SecondAMIN/conv2/BatchNorm/beta:0&SecondAMIN/conv2/BatchNorm/beta/Assign&SecondAMIN/conv2/BatchNorm/beta/read:0
v
"SecondAMIN/conv2/BatchNorm/gamma:0'SecondAMIN/conv2/BatchNorm/gamma/Assign'SecondAMIN/conv2/BatchNorm/gamma/read:0
^
SecondAMIN/conv3/weights:0SecondAMIN/conv3/weights/AssignSecondAMIN/conv3/weights/read:0
s
!SecondAMIN/conv3/BatchNorm/beta:0&SecondAMIN/conv3/BatchNorm/beta/Assign&SecondAMIN/conv3/BatchNorm/beta/read:0
v
"SecondAMIN/conv3/BatchNorm/gamma:0'SecondAMIN/conv3/BatchNorm/gamma/Assign'SecondAMIN/conv3/BatchNorm/gamma/read:0
a
SecondAMIN/bconv2/weights:0 SecondAMIN/bconv2/weights/Assign SecondAMIN/bconv2/weights/read:0
v
"SecondAMIN/bconv2/BatchNorm/beta:0'SecondAMIN/bconv2/BatchNorm/beta/Assign'SecondAMIN/bconv2/BatchNorm/beta/read:0
y
#SecondAMIN/bconv2/BatchNorm/gamma:0(SecondAMIN/bconv2/BatchNorm/gamma/Assign(SecondAMIN/bconv2/BatchNorm/gamma/read:0
^
SecondAMIN/conv4/weights:0SecondAMIN/conv4/weights/AssignSecondAMIN/conv4/weights/read:0
s
!SecondAMIN/conv4/BatchNorm/beta:0&SecondAMIN/conv4/BatchNorm/beta/Assign&SecondAMIN/conv4/BatchNorm/beta/read:0
v
"SecondAMIN/conv4/BatchNorm/gamma:0'SecondAMIN/conv4/BatchNorm/gamma/Assign'SecondAMIN/conv4/BatchNorm/gamma/read:0
^
SecondAMIN/conv5/weights:0SecondAMIN/conv5/weights/AssignSecondAMIN/conv5/weights/read:0
s
!SecondAMIN/conv5/BatchNorm/beta:0&SecondAMIN/conv5/BatchNorm/beta/Assign&SecondAMIN/conv5/BatchNorm/beta/read:0
v
"SecondAMIN/conv5/BatchNorm/gamma:0'SecondAMIN/conv5/BatchNorm/gamma/Assign'SecondAMIN/conv5/BatchNorm/gamma/read:0
a
SecondAMIN/bconv3/weights:0 SecondAMIN/bconv3/weights/Assign SecondAMIN/bconv3/weights/read:0
v
"SecondAMIN/bconv3/BatchNorm/beta:0'SecondAMIN/bconv3/BatchNorm/beta/Assign'SecondAMIN/bconv3/BatchNorm/beta/read:0
y
#SecondAMIN/bconv3/BatchNorm/gamma:0(SecondAMIN/bconv3/BatchNorm/gamma/Assign(SecondAMIN/bconv3/BatchNorm/gamma/read:0
^
SecondAMIN/conv6/weights:0SecondAMIN/conv6/weights/AssignSecondAMIN/conv6/weights/read:0
s
!SecondAMIN/conv6/BatchNorm/beta:0&SecondAMIN/conv6/BatchNorm/beta/Assign&SecondAMIN/conv6/BatchNorm/beta/read:0
v
"SecondAMIN/conv6/BatchNorm/gamma:0'SecondAMIN/conv6/BatchNorm/gamma/Assign'SecondAMIN/conv6/BatchNorm/gamma/read:0
^
SecondAMIN/conv7/weights:0SecondAMIN/conv7/weights/AssignSecondAMIN/conv7/weights/read:0
s
!SecondAMIN/conv7/BatchNorm/beta:0&SecondAMIN/conv7/BatchNorm/beta/Assign&SecondAMIN/conv7/BatchNorm/beta/read:0
v
"SecondAMIN/conv7/BatchNorm/gamma:0'SecondAMIN/conv7/BatchNorm/gamma/Assign'SecondAMIN/conv7/BatchNorm/gamma/read:0
^
SecondAMIN/conv8/weights:0SecondAMIN/conv8/weights/AssignSecondAMIN/conv8/weights/read:0
s
!SecondAMIN/conv8/BatchNorm/beta:0&SecondAMIN/conv8/BatchNorm/beta/Assign&SecondAMIN/conv8/BatchNorm/beta/read:0
v
"SecondAMIN/conv8/BatchNorm/gamma:0'SecondAMIN/conv8/BatchNorm/gamma/Assign'SecondAMIN/conv8/BatchNorm/gamma/read:0
a
SecondAMIN/conv11/weights:0 SecondAMIN/conv11/weights/Assign SecondAMIN/conv11/weights/read:0
[
FirstAMIN/conv0/weights:0FirstAMIN/conv0/weights/AssignFirstAMIN/conv0/weights/read:0
p
 FirstAMIN/conv0/BatchNorm/beta:0%FirstAMIN/conv0/BatchNorm/beta/Assign%FirstAMIN/conv0/BatchNorm/beta/read:0
s
!FirstAMIN/conv0/BatchNorm/gamma:0&FirstAMIN/conv0/BatchNorm/gamma/Assign&FirstAMIN/conv0/BatchNorm/gamma/read:0
[
FirstAMIN/conv1/weights:0FirstAMIN/conv1/weights/AssignFirstAMIN/conv1/weights/read:0
p
 FirstAMIN/conv1/BatchNorm/beta:0%FirstAMIN/conv1/BatchNorm/beta/Assign%FirstAMIN/conv1/BatchNorm/beta/read:0
s
!FirstAMIN/conv1/BatchNorm/gamma:0&FirstAMIN/conv1/BatchNorm/gamma/Assign&FirstAMIN/conv1/BatchNorm/gamma/read:0
^
FirstAMIN/bconv1/weights:0FirstAMIN/bconv1/weights/AssignFirstAMIN/bconv1/weights/read:0
s
!FirstAMIN/bconv1/BatchNorm/beta:0&FirstAMIN/bconv1/BatchNorm/beta/Assign&FirstAMIN/bconv1/BatchNorm/beta/read:0
v
"FirstAMIN/bconv1/BatchNorm/gamma:0'FirstAMIN/bconv1/BatchNorm/gamma/Assign'FirstAMIN/bconv1/BatchNorm/gamma/read:0
[
FirstAMIN/conv2/weights:0FirstAMIN/conv2/weights/AssignFirstAMIN/conv2/weights/read:0
p
 FirstAMIN/conv2/BatchNorm/beta:0%FirstAMIN/conv2/BatchNorm/beta/Assign%FirstAMIN/conv2/BatchNorm/beta/read:0
s
!FirstAMIN/conv2/BatchNorm/gamma:0&FirstAMIN/conv2/BatchNorm/gamma/Assign&FirstAMIN/conv2/BatchNorm/gamma/read:0
[
FirstAMIN/conv3/weights:0FirstAMIN/conv3/weights/AssignFirstAMIN/conv3/weights/read:0
p
 FirstAMIN/conv3/BatchNorm/beta:0%FirstAMIN/conv3/BatchNorm/beta/Assign%FirstAMIN/conv3/BatchNorm/beta/read:0
s
!FirstAMIN/conv3/BatchNorm/gamma:0&FirstAMIN/conv3/BatchNorm/gamma/Assign&FirstAMIN/conv3/BatchNorm/gamma/read:0
^
FirstAMIN/bconv2/weights:0FirstAMIN/bconv2/weights/AssignFirstAMIN/bconv2/weights/read:0
s
!FirstAMIN/bconv2/BatchNorm/beta:0&FirstAMIN/bconv2/BatchNorm/beta/Assign&FirstAMIN/bconv2/BatchNorm/beta/read:0
v
"FirstAMIN/bconv2/BatchNorm/gamma:0'FirstAMIN/bconv2/BatchNorm/gamma/Assign'FirstAMIN/bconv2/BatchNorm/gamma/read:0
[
FirstAMIN/conv4/weights:0FirstAMIN/conv4/weights/AssignFirstAMIN/conv4/weights/read:0
p
 FirstAMIN/conv4/BatchNorm/beta:0%FirstAMIN/conv4/BatchNorm/beta/Assign%FirstAMIN/conv4/BatchNorm/beta/read:0
s
!FirstAMIN/conv4/BatchNorm/gamma:0&FirstAMIN/conv4/BatchNorm/gamma/Assign&FirstAMIN/conv4/BatchNorm/gamma/read:0
[
FirstAMIN/conv5/weights:0FirstAMIN/conv5/weights/AssignFirstAMIN/conv5/weights/read:0
p
 FirstAMIN/conv5/BatchNorm/beta:0%FirstAMIN/conv5/BatchNorm/beta/Assign%FirstAMIN/conv5/BatchNorm/beta/read:0
s
!FirstAMIN/conv5/BatchNorm/gamma:0&FirstAMIN/conv5/BatchNorm/gamma/Assign&FirstAMIN/conv5/BatchNorm/gamma/read:0
^
FirstAMIN/bconv3/weights:0FirstAMIN/bconv3/weights/AssignFirstAMIN/bconv3/weights/read:0
s
!FirstAMIN/bconv3/BatchNorm/beta:0&FirstAMIN/bconv3/BatchNorm/beta/Assign&FirstAMIN/bconv3/BatchNorm/beta/read:0
v
"FirstAMIN/bconv3/BatchNorm/gamma:0'FirstAMIN/bconv3/BatchNorm/gamma/Assign'FirstAMIN/bconv3/BatchNorm/gamma/read:0
[
FirstAMIN/conv6/weights:0FirstAMIN/conv6/weights/AssignFirstAMIN/conv6/weights/read:0
p
 FirstAMIN/conv6/BatchNorm/beta:0%FirstAMIN/conv6/BatchNorm/beta/Assign%FirstAMIN/conv6/BatchNorm/beta/read:0
s
!FirstAMIN/conv6/BatchNorm/gamma:0&FirstAMIN/conv6/BatchNorm/gamma/Assign&FirstAMIN/conv6/BatchNorm/gamma/read:0
[
FirstAMIN/conv7/weights:0FirstAMIN/conv7/weights/AssignFirstAMIN/conv7/weights/read:0
p
 FirstAMIN/conv7/BatchNorm/beta:0%FirstAMIN/conv7/BatchNorm/beta/Assign%FirstAMIN/conv7/BatchNorm/beta/read:0
s
!FirstAMIN/conv7/BatchNorm/gamma:0&FirstAMIN/conv7/BatchNorm/gamma/Assign&FirstAMIN/conv7/BatchNorm/gamma/read:0
[
FirstAMIN/conv8/weights:0FirstAMIN/conv8/weights/AssignFirstAMIN/conv8/weights/read:0
p
 FirstAMIN/conv8/BatchNorm/beta:0%FirstAMIN/conv8/BatchNorm/beta/Assign%FirstAMIN/conv8/BatchNorm/beta/read:0
s
!FirstAMIN/conv8/BatchNorm/gamma:0&FirstAMIN/conv8/BatchNorm/gamma/Assign&FirstAMIN/conv8/BatchNorm/gamma/read:0
^
FirstAMIN/conv11/weights:0FirstAMIN/conv11/weights/AssignFirstAMIN/conv11/weights/read:0
[
FirstAMIN/conv9/weights:0FirstAMIN/conv9/weights/AssignFirstAMIN/conv9/weights/read:0
p
 FirstAMIN/conv9/BatchNorm/beta:0%FirstAMIN/conv9/BatchNorm/beta/Assign%FirstAMIN/conv9/BatchNorm/beta/read:0
s
!FirstAMIN/conv9/BatchNorm/gamma:0&FirstAMIN/conv9/BatchNorm/gamma/Assign&FirstAMIN/conv9/BatchNorm/gamma/read:0
^
FirstAMIN/conv10/weights:0FirstAMIN/conv10/weights/AssignFirstAMIN/conv10/weights/read:0
s
!FirstAMIN/conv10/BatchNorm/beta:0&FirstAMIN/conv10/BatchNorm/beta/Assign&FirstAMIN/conv10/BatchNorm/beta/read:0
v
"FirstAMIN/conv10/BatchNorm/gamma:0'FirstAMIN/conv10/BatchNorm/gamma/Assign'FirstAMIN/conv10/BatchNorm/gamma/read:0
^
FirstAMIN/conv12/weights:0FirstAMIN/conv12/weights/AssignFirstAMIN/conv12/weights/read:0
s
!FirstAMIN/conv12/BatchNorm/beta:0&FirstAMIN/conv12/BatchNorm/beta/Assign&FirstAMIN/conv12/BatchNorm/beta/read:0
v
"FirstAMIN/conv12/BatchNorm/gamma:0'FirstAMIN/conv12/BatchNorm/gamma/Assign'FirstAMIN/conv12/BatchNorm/gamma/read:0
^
FirstAMIN/conv13/weights:0FirstAMIN/conv13/weights/AssignFirstAMIN/conv13/weights/read:0
s
!FirstAMIN/conv13/BatchNorm/beta:0&FirstAMIN/conv13/BatchNorm/beta/Assign&FirstAMIN/conv13/BatchNorm/beta/read:0
v
"FirstAMIN/conv13/BatchNorm/gamma:0'FirstAMIN/conv13/BatchNorm/gamma/Assign'FirstAMIN/conv13/BatchNorm/gamma/read:0
^
FirstAMIN/conv14/weights:0FirstAMIN/conv14/weights/AssignFirstAMIN/conv14/weights/read:0
s
!FirstAMIN/conv14/BatchNorm/beta:0&FirstAMIN/conv14/BatchNorm/beta/Assign&FirstAMIN/conv14/BatchNorm/beta/read:0
v
"FirstAMIN/conv14/BatchNorm/gamma:0'FirstAMIN/conv14/BatchNorm/gamma/Assign'FirstAMIN/conv14/BatchNorm/gamma/read:0
^
FirstAMIN/conv15/weights:0FirstAMIN/conv15/weights/AssignFirstAMIN/conv15/weights/read:0
s
!FirstAMIN/conv15/BatchNorm/beta:0&FirstAMIN/conv15/BatchNorm/beta/Assign&FirstAMIN/conv15/BatchNorm/beta/read:0
v
"FirstAMIN/conv15/BatchNorm/gamma:0'FirstAMIN/conv15/BatchNorm/gamma/Assign'FirstAMIN/conv15/BatchNorm/gamma/read:0
^
FirstAMIN/conv16/weights:0FirstAMIN/conv16/weights/AssignFirstAMIN/conv16/weights/read:0
s
!FirstAMIN/conv16/BatchNorm/beta:0&FirstAMIN/conv16/BatchNorm/beta/Assign&FirstAMIN/conv16/BatchNorm/beta/read:0
v
"FirstAMIN/conv16/BatchNorm/gamma:0'FirstAMIN/conv16/BatchNorm/gamma/Assign'FirstAMIN/conv16/BatchNorm/gamma/read:0
^
FirstAMIN/conv17/weights:0FirstAMIN/conv17/weights/AssignFirstAMIN/conv17/weights/read:0
[
ThirdAMIN/conv9/weights:0ThirdAMIN/conv9/weights/AssignThirdAMIN/conv9/weights/read:0
p
 ThirdAMIN/conv9/BatchNorm/beta:0%ThirdAMIN/conv9/BatchNorm/beta/Assign%ThirdAMIN/conv9/BatchNorm/beta/read:0
s
!ThirdAMIN/conv9/BatchNorm/gamma:0&ThirdAMIN/conv9/BatchNorm/gamma/Assign&ThirdAMIN/conv9/BatchNorm/gamma/read:0
^
ThirdAMIN/conv10/weights:0ThirdAMIN/conv10/weights/AssignThirdAMIN/conv10/weights/read:0
s
!ThirdAMIN/conv10/BatchNorm/beta:0&ThirdAMIN/conv10/BatchNorm/beta/Assign&ThirdAMIN/conv10/BatchNorm/beta/read:0
v
"ThirdAMIN/conv10/BatchNorm/gamma:0'ThirdAMIN/conv10/BatchNorm/gamma/Assign'ThirdAMIN/conv10/BatchNorm/gamma/read:0
^
ThirdAMIN/conv12/weights:0ThirdAMIN/conv12/weights/AssignThirdAMIN/conv12/weights/read:0
s
!ThirdAMIN/conv12/BatchNorm/beta:0&ThirdAMIN/conv12/BatchNorm/beta/Assign&ThirdAMIN/conv12/BatchNorm/beta/read:0
v
"ThirdAMIN/conv12/BatchNorm/gamma:0'ThirdAMIN/conv12/BatchNorm/gamma/Assign'ThirdAMIN/conv12/BatchNorm/gamma/read:0
^
ThirdAMIN/conv13/weights:0ThirdAMIN/conv13/weights/AssignThirdAMIN/conv13/weights/read:0
s
!ThirdAMIN/conv13/BatchNorm/beta:0&ThirdAMIN/conv13/BatchNorm/beta/Assign&ThirdAMIN/conv13/BatchNorm/beta/read:0
v
"ThirdAMIN/conv13/BatchNorm/gamma:0'ThirdAMIN/conv13/BatchNorm/gamma/Assign'ThirdAMIN/conv13/BatchNorm/gamma/read:0
^
ThirdAMIN/conv14/weights:0ThirdAMIN/conv14/weights/AssignThirdAMIN/conv14/weights/read:0
s
!ThirdAMIN/conv14/BatchNorm/beta:0&ThirdAMIN/conv14/BatchNorm/beta/Assign&ThirdAMIN/conv14/BatchNorm/beta/read:0
v
"ThirdAMIN/conv14/BatchNorm/gamma:0'ThirdAMIN/conv14/BatchNorm/gamma/Assign'ThirdAMIN/conv14/BatchNorm/gamma/read:0
^
ThirdAMIN/conv15/weights:0ThirdAMIN/conv15/weights/AssignThirdAMIN/conv15/weights/read:0
s
!ThirdAMIN/conv15/BatchNorm/beta:0&ThirdAMIN/conv15/BatchNorm/beta/Assign&ThirdAMIN/conv15/BatchNorm/beta/read:0
v
"ThirdAMIN/conv15/BatchNorm/gamma:0'ThirdAMIN/conv15/BatchNorm/gamma/Assign'ThirdAMIN/conv15/BatchNorm/gamma/read:0
^
ThirdAMIN/conv16/weights:0ThirdAMIN/conv16/weights/AssignThirdAMIN/conv16/weights/read:0
s
!ThirdAMIN/conv16/BatchNorm/beta:0&ThirdAMIN/conv16/BatchNorm/beta/Assign&ThirdAMIN/conv16/BatchNorm/beta/read:0
v
"ThirdAMIN/conv16/BatchNorm/gamma:0'ThirdAMIN/conv16/BatchNorm/gamma/Assign'ThirdAMIN/conv16/BatchNorm/gamma/read:0

%ThirdAMIN/bconv15_sc333_dis/weights:0*ThirdAMIN/bconv15_sc333_dis/weights/Assign*ThirdAMIN/bconv15_sc333_dis/weights/read:0
|
$ThirdAMIN/bconv15_sc333_dis/biases:0)ThirdAMIN/bconv15_sc333_dis/biases/Assign)ThirdAMIN/bconv15_sc333_dis/biases/read:0
j
ThirdAMIN/bconv10_sc/weights:0#ThirdAMIN/bconv10_sc/weights/Assign#ThirdAMIN/bconv10_sc/weights/read:0*�
predict_images�
&
images
concat:0��@
depths6
FirstAMIN/conv17/convolution:0��
scores
Mean_2:0 tensorflow/serving/regress