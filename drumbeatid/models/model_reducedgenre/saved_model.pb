µ
ñÇ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758?

conv2d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_34/kernel
}
$conv2d_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_34/kernel*&
_output_shapes
: *
dtype0
t
conv2d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_34/bias
m
"conv2d_34/bias/Read/ReadVariableOpReadVariableOpconv2d_34/bias*
_output_shapes
: *
dtype0

conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_38/kernel
}
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*&
_output_shapes
: *
dtype0
t
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_38/bias
m
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes
: *
dtype0

conv2d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_35/kernel
}
$conv2d_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_35/kernel*&
_output_shapes
: *
dtype0
t
conv2d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_35/bias
m
"conv2d_35/bias/Read/ReadVariableOpReadVariableOpconv2d_35/bias*
_output_shapes
:*
dtype0

conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_39/kernel
}
$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*&
_output_shapes
: *
dtype0
t
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_39/bias
m
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes
:*
dtype0

conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:*
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:*
dtype0

conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
:*
dtype0
t
conv2d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
:*
dtype0

conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
:*
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:*
dtype0

conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:*
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:*
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä * 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	Ä *
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
: *
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 * 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:0 *
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
: *
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

: *
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
dtype0
z
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_29/kernel
s
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes

: *
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:*
dtype0
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

: *
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:*
dtype0
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:*
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_34/kernel/m

+Adam/conv2d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_34/bias/m
{
)Adam/conv2d_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_38/kernel/m

+Adam/conv2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_38/bias/m
{
)Adam/conv2d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_35/kernel/m

+Adam/conv2d_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_35/bias/m
{
)Adam/conv2d_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_39/kernel/m

+Adam/conv2d_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_39/bias/m
{
)Adam/conv2d_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/m

+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/m
{
)Adam/conv2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_40/kernel/m

+Adam/conv2d_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_40/bias/m
{
)Adam/conv2d_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/m

+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/m
{
)Adam/conv2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_41/kernel/m

+Adam/conv2d_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_41/bias/m
{
)Adam/conv2d_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/m*
_output_shapes
:*
dtype0

Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä *'
shared_nameAdam/dense_26/kernel/m

*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes
:	Ä *
dtype0

Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
: *
dtype0

Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 *'
shared_nameAdam/dense_28/kernel/m

*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes

:0 *
dtype0

Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
: *
dtype0

Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/m

*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0

Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_29/kernel/m

*Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_29/bias/m
y
(Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/m*
_output_shapes
:*
dtype0

Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_36/kernel/m

*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/m
y
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes
:*
dtype0

Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_37/kernel/m

*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_34/kernel/v

+Adam/conv2d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_34/bias/v
{
)Adam/conv2d_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_38/kernel/v

+Adam/conv2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_38/bias/v
{
)Adam/conv2d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_35/kernel/v

+Adam/conv2d_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_35/bias/v
{
)Adam/conv2d_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_39/kernel/v

+Adam/conv2d_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_39/bias/v
{
)Adam/conv2d_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/v

+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/v
{
)Adam/conv2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_40/kernel/v

+Adam/conv2d_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_40/bias/v
{
)Adam/conv2d_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_37/kernel/v

+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_37/bias/v
{
)Adam/conv2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_41/kernel/v

+Adam/conv2d_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_41/bias/v
{
)Adam/conv2d_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/v*
_output_shapes
:*
dtype0

Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä *'
shared_nameAdam/dense_26/kernel/v

*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes
:	Ä *
dtype0

Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
: *
dtype0

Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0 *'
shared_nameAdam/dense_28/kernel/v

*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes

:0 *
dtype0

Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
: *
dtype0

Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/v

*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0

Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_29/kernel/v

*Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_29/bias/v
y
(Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/v*
_output_shapes
:*
dtype0

Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_36/kernel/v

*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_36/bias/v
y
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes
:*
dtype0

Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_37/kernel/v

*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ġç
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ç
valueçBç Bĝĉ

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer-22
layer-23
layer_with_weights-10
layer-24
layer_with_weights-11
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-12
layer-30
 layer-31
!layer_with_weights-13
!layer-32
"	optimizer
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_default_save_signature
*
signatures*
* 
* 
Ĥ

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
Ĥ

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*

;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
Ĥ

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
Ĥ

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*

W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 

]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
Ĥ

ckernel
dbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses*
Ĥ

kkernel
lbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses*

s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses* 

y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses* 
­

kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
?
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses* 

Ħ	variables
˘trainable_variables
£regularization_losses
¤	keras_api
?__call__
+Ĥ&call_and_return_all_conditional_losses* 
?
§kernel
	¨bias
İ	variables
Ştrainable_variables
Ğregularization_losses
Ĵ	keras_api
­__call__
+?&call_and_return_all_conditional_losses*
?
Żkernel
	°bias
ħ	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+ĥ&call_and_return_all_conditional_losses*
Ĵ
·	variables
¸trainable_variables
ıregularization_losses
ş	keras_api
ğ_random_generator
ĵ__call__
+½&call_and_return_all_conditional_losses* 
Ĵ
?	variables
żtrainable_variables
Àregularization_losses
Á	keras_api
Â_random_generator
?__call__
+Ä&call_and_return_all_conditional_losses* 
?
Ċkernel
	Ĉbias
Ç	variables
Ètrainable_variables
Éregularization_losses
Ê	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses*
?
Íkernel
	Îbias
Ï	variables
?trainable_variables
Ñregularization_losses
Ò	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses*
Ĵ
Ġ	variables
Ötrainable_variables
×regularization_losses
Ĝ	keras_api
Ù_random_generator
Ú__call__
+Û&call_and_return_all_conditional_losses* 
Ĵ
Ü	variables
Ŭtrainable_variables
Ŝregularization_losses
ß	keras_api
à_random_generator
á__call__
+â&call_and_return_all_conditional_losses* 

?	variables
ätrainable_variables
ċregularization_losses
ĉ	keras_api
ç__call__
+è&call_and_return_all_conditional_losses* 
Ĵ
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í_random_generator
î__call__
+ï&call_and_return_all_conditional_losses* 
?
?kernel
	ñbias
ò	variables
ótrainable_variables
ôregularization_losses
ġ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses*
Ĵ
ĝ	variables
ùtrainable_variables
úregularization_losses
û	keras_api
ü_random_generator
ŭ__call__
+ŝ&call_and_return_all_conditional_losses* 
?
˙kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	iter
beta_1
beta_2

decay
learning_rate+m¸,mı3mş4mğGmĵHm½Om?PmżcmÀdmÁkmÂlm?mÄ	mĊ	mĈ	mÇ	§mÈ	¨mÉ	ŻmÊ	°mË	ĊmÌ	ĈmÍ	ÍmÎ	ÎmÏ	?m?	ñmÑ	˙mÒ	mÓ+vÔ,vĠ3vÖ4v×GvĜHvÙOvÚPvÛcvÜdvŬkvŜlvßvà	vá	vâ	v?	§vä	¨vċ	Żvĉ	°vç	Ċvè	Ĉvé	Ívê	Îvë	?vì	ñví	˙vî	vï*
é
+0
,1
32
43
G4
H5
O6
P7
c8
d9
k10
l11
12
13
14
15
§16
¨17
Ż18
°19
Ċ20
Ĉ21
Í22
Î23
?24
ñ25
˙26
27*
é
+0
,1
32
43
G4
H5
O6
P7
c8
d9
k10
l11
12
13
14
15
§16
¨17
Ż18
°19
Ċ20
Ĉ21
Í22
Î23
?24
ñ25
˙26
27*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
)_default_save_signature
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
`Z
VARIABLE_VALUEconv2d_34/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_34/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

30
41*

30
41*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ħnon_trainable_variables
˘layers
£metrics
 ¤layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_35/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_35/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 

Ĥnon_trainable_variables
§layers
¨metrics
 İlayer_regularization_losses
Şlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 

Ğnon_trainable_variables
Ĵlayers
­metrics
 ?layer_regularization_losses
Żlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

°non_trainable_variables
ħlayers
²metrics
 ³layer_regularization_losses
´layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

µnon_trainable_variables
ĥlayers
·metrics
 ¸layer_regularization_losses
ılayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

c0
d1*

c0
d1*
* 

şnon_trainable_variables
ğlayers
ĵmetrics
 ½layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_40/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_40/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

k0
l1*

k0
l1*
* 

żnon_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Änon_trainable_variables
Ċlayers
Ĉmetrics
 Çlayer_regularization_losses
Èlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Înon_trainable_variables
Ïlayers
?metrics
 Ñlayer_regularization_losses
Òlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Ónon_trainable_variables
Ôlayers
Ġmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ĝnon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ŭnon_trainable_variables
Ŝlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

ânon_trainable_variables
?layers
ämetrics
 ċlayer_regularization_losses
ĉlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
Ħ	variables
˘trainable_variables
£regularization_losses
?__call__
+Ĥ&call_and_return_all_conditional_losses
'Ĥ"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

§0
¨1*

§0
¨1*
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
?layer_metrics
İ	variables
Ştrainable_variables
Ğregularization_losses
­__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_28/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ż0
°1*

Ż0
°1*
* 

ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
ġlayer_metrics
ħ	variables
²trainable_variables
³regularization_losses
µ__call__
+ĥ&call_and_return_all_conditional_losses
'ĥ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

önon_trainable_variables
÷layers
ĝmetrics
 ùlayer_regularization_losses
úlayer_metrics
·	variables
¸trainable_variables
ıregularization_losses
ĵ__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ûnon_trainable_variables
ülayers
ŭmetrics
 ŝlayer_regularization_losses
˙layer_metrics
?	variables
żtrainable_variables
Àregularization_losses
?__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_27/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_27/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ċ0
Ĉ1*

Ċ0
Ĉ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ç	variables
Ètrainable_variables
Éregularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_29/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_29/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

Í0
Î1*

Í0
Î1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ï	variables
?trainable_variables
Ñregularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ġ	variables
Ötrainable_variables
×regularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ü	variables
Ŭtrainable_variables
Ŝregularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
ätrainable_variables
ċregularization_losses
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_36/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_36/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
ñ1*

?0
ñ1*
* 

non_trainable_variables
layers
 metrics
 Ħlayer_regularization_losses
˘layer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

£non_trainable_variables
¤layers
?metrics
 Ĥlayer_regularization_losses
§layer_metrics
ĝ	variables
ùtrainable_variables
úregularization_losses
ŭ__call__
+ŝ&call_and_return_all_conditional_losses
'ŝ"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_37/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_37/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

˙0
1*

˙0
1*
* 

¨non_trainable_variables
İlayers
Şmetrics
 Ğlayer_regularization_losses
Ĵlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32*

­0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Żtotal

°count
ħ	variables
²	keras_api*
M

³total

´count
µ
_fn_kwargs
ĥ	variables
·	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ż0
°1*

ħ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

³0
´1*

ĥ	variables*
}
VARIABLE_VALUEAdam/conv2d_34/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_34/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_38/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_35/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_35/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_39/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_39/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_36/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_40/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_37/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_41/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_27/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_27/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_29/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_29/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_36/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_36/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_37/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_37/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_34/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_34/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_38/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_35/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_35/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_39/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_39/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_36/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_40/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_37/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_41/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_27/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_27/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_29/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_29/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_36/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_36/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_37/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_37/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_34_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙

serving_default_conv2d_38_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙
ç
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_34_inputserving_default_conv2d_38_inputconv2d_38/kernelconv2d_38/biasconv2d_34/kernelconv2d_34/biasconv2d_39/kernelconv2d_39/biasconv2d_35/kernelconv2d_35/biasconv2d_40/kernelconv2d_40/biasconv2d_36/kernelconv2d_36/biasconv2d_41/kernelconv2d_41/biasconv2d_37/kernelconv2d_37/biasdense_28/kerneldense_28/biasdense_26/kerneldense_26/biasdense_29/kerneldense_29/biasdense_27/kerneldense_27/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/bias*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_103765
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_34/kernel/Read/ReadVariableOp"conv2d_34/bias/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp"conv2d_38/bias/Read/ReadVariableOp$conv2d_35/kernel/Read/ReadVariableOp"conv2d_35/bias/Read/ReadVariableOp$conv2d_39/kernel/Read/ReadVariableOp"conv2d_39/bias/Read/ReadVariableOp$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_40/kernel/Read/ReadVariableOp"conv2d_40/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_34/kernel/m/Read/ReadVariableOp)Adam/conv2d_34/bias/m/Read/ReadVariableOp+Adam/conv2d_38/kernel/m/Read/ReadVariableOp)Adam/conv2d_38/bias/m/Read/ReadVariableOp+Adam/conv2d_35/kernel/m/Read/ReadVariableOp)Adam/conv2d_35/bias/m/Read/ReadVariableOp+Adam/conv2d_39/kernel/m/Read/ReadVariableOp)Adam/conv2d_39/bias/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp)Adam/conv2d_36/bias/m/Read/ReadVariableOp+Adam/conv2d_40/kernel/m/Read/ReadVariableOp)Adam/conv2d_40/bias/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp)Adam/conv2d_37/bias/m/Read/ReadVariableOp+Adam/conv2d_41/kernel/m/Read/ReadVariableOp)Adam/conv2d_41/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp*Adam/dense_29/kernel/m/Read/ReadVariableOp(Adam/dense_29/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp+Adam/conv2d_34/kernel/v/Read/ReadVariableOp)Adam/conv2d_34/bias/v/Read/ReadVariableOp+Adam/conv2d_38/kernel/v/Read/ReadVariableOp)Adam/conv2d_38/bias/v/Read/ReadVariableOp+Adam/conv2d_35/kernel/v/Read/ReadVariableOp)Adam/conv2d_35/bias/v/Read/ReadVariableOp+Adam/conv2d_39/kernel/v/Read/ReadVariableOp)Adam/conv2d_39/bias/v/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp)Adam/conv2d_36/bias/v/Read/ReadVariableOp+Adam/conv2d_40/kernel/v/Read/ReadVariableOp)Adam/conv2d_40/bias/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp)Adam/conv2d_37/bias/v/Read/ReadVariableOp+Adam/conv2d_41/kernel/v/Read/ReadVariableOp)Adam/conv2d_41/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOp*Adam/dense_29/kernel/v/Read/ReadVariableOp(Adam/dense_29/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOpConst*j
Tinc
a2_	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_104625
Ó
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_34/kernelconv2d_34/biasconv2d_38/kernelconv2d_38/biasconv2d_35/kernelconv2d_35/biasconv2d_39/kernelconv2d_39/biasconv2d_36/kernelconv2d_36/biasconv2d_40/kernelconv2d_40/biasconv2d_37/kernelconv2d_37/biasconv2d_41/kernelconv2d_41/biasdense_26/kerneldense_26/biasdense_28/kerneldense_28/biasdense_27/kerneldense_27/biasdense_29/kerneldense_29/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_34/kernel/mAdam/conv2d_34/bias/mAdam/conv2d_38/kernel/mAdam/conv2d_38/bias/mAdam/conv2d_35/kernel/mAdam/conv2d_35/bias/mAdam/conv2d_39/kernel/mAdam/conv2d_39/bias/mAdam/conv2d_36/kernel/mAdam/conv2d_36/bias/mAdam/conv2d_40/kernel/mAdam/conv2d_40/bias/mAdam/conv2d_37/kernel/mAdam/conv2d_37/bias/mAdam/conv2d_41/kernel/mAdam/conv2d_41/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_28/kernel/mAdam/dense_28/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/dense_29/kernel/mAdam/dense_29/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/conv2d_34/kernel/vAdam/conv2d_34/bias/vAdam/conv2d_38/kernel/vAdam/conv2d_38/bias/vAdam/conv2d_35/kernel/vAdam/conv2d_35/bias/vAdam/conv2d_39/kernel/vAdam/conv2d_39/bias/vAdam/conv2d_36/kernel/vAdam/conv2d_36/bias/vAdam/conv2d_40/kernel/vAdam/conv2d_40/bias/vAdam/conv2d_37/kernel/vAdam/conv2d_37/bias/vAdam/conv2d_41/kernel/vAdam/conv2d_41/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_28/kernel/vAdam/dense_28/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/vAdam/dense_29/kernel/vAdam/dense_29/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/v*i
Tinb
`2^*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_104914ğ


ö
D__inference_dense_26_layer_call_and_return_conditional_losses_104047

inputs1
matmul_readvariableop_resource:	Ä -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ä *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs
Ċ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_104027

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż
Z
.__inference_concatenate_8_layer_call_fn_104221
inputs_0
inputs_1
identityÄ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1

µ
(__inference_model_8_layer_call_fn_103413
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5: 
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:0 

unknown_16: 

unknown_17:	Ä 

unknown_18: 

unknown_19: 

unknown_20:

unknown_21: 

unknown_22:

unknown_23: 

unknown_24:

unknown_25:

unknown_26:
identity˘StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_102978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
ĥñ
­:
"__inference__traced_restore_104914
file_prefix;
!assignvariableop_conv2d_34_kernel: /
!assignvariableop_1_conv2d_34_bias: =
#assignvariableop_2_conv2d_38_kernel: /
!assignvariableop_3_conv2d_38_bias: =
#assignvariableop_4_conv2d_35_kernel: /
!assignvariableop_5_conv2d_35_bias:=
#assignvariableop_6_conv2d_39_kernel: /
!assignvariableop_7_conv2d_39_bias:=
#assignvariableop_8_conv2d_36_kernel:/
!assignvariableop_9_conv2d_36_bias:>
$assignvariableop_10_conv2d_40_kernel:0
"assignvariableop_11_conv2d_40_bias:>
$assignvariableop_12_conv2d_37_kernel:0
"assignvariableop_13_conv2d_37_bias:>
$assignvariableop_14_conv2d_41_kernel:0
"assignvariableop_15_conv2d_41_bias:6
#assignvariableop_16_dense_26_kernel:	Ä /
!assignvariableop_17_dense_26_bias: 5
#assignvariableop_18_dense_28_kernel:0 /
!assignvariableop_19_dense_28_bias: 5
#assignvariableop_20_dense_27_kernel: /
!assignvariableop_21_dense_27_bias:5
#assignvariableop_22_dense_29_kernel: /
!assignvariableop_23_dense_29_bias:5
#assignvariableop_24_dense_36_kernel: /
!assignvariableop_25_dense_36_bias:5
#assignvariableop_26_dense_37_kernel:/
!assignvariableop_27_dense_37_bias:'
assignvariableop_28_adam_iter:	 )
assignvariableop_29_adam_beta_1: )
assignvariableop_30_adam_beta_2: (
assignvariableop_31_adam_decay: 0
&assignvariableop_32_adam_learning_rate: #
assignvariableop_33_total: #
assignvariableop_34_count: %
assignvariableop_35_total_1: %
assignvariableop_36_count_1: E
+assignvariableop_37_adam_conv2d_34_kernel_m: 7
)assignvariableop_38_adam_conv2d_34_bias_m: E
+assignvariableop_39_adam_conv2d_38_kernel_m: 7
)assignvariableop_40_adam_conv2d_38_bias_m: E
+assignvariableop_41_adam_conv2d_35_kernel_m: 7
)assignvariableop_42_adam_conv2d_35_bias_m:E
+assignvariableop_43_adam_conv2d_39_kernel_m: 7
)assignvariableop_44_adam_conv2d_39_bias_m:E
+assignvariableop_45_adam_conv2d_36_kernel_m:7
)assignvariableop_46_adam_conv2d_36_bias_m:E
+assignvariableop_47_adam_conv2d_40_kernel_m:7
)assignvariableop_48_adam_conv2d_40_bias_m:E
+assignvariableop_49_adam_conv2d_37_kernel_m:7
)assignvariableop_50_adam_conv2d_37_bias_m:E
+assignvariableop_51_adam_conv2d_41_kernel_m:7
)assignvariableop_52_adam_conv2d_41_bias_m:=
*assignvariableop_53_adam_dense_26_kernel_m:	Ä 6
(assignvariableop_54_adam_dense_26_bias_m: <
*assignvariableop_55_adam_dense_28_kernel_m:0 6
(assignvariableop_56_adam_dense_28_bias_m: <
*assignvariableop_57_adam_dense_27_kernel_m: 6
(assignvariableop_58_adam_dense_27_bias_m:<
*assignvariableop_59_adam_dense_29_kernel_m: 6
(assignvariableop_60_adam_dense_29_bias_m:<
*assignvariableop_61_adam_dense_36_kernel_m: 6
(assignvariableop_62_adam_dense_36_bias_m:<
*assignvariableop_63_adam_dense_37_kernel_m:6
(assignvariableop_64_adam_dense_37_bias_m:E
+assignvariableop_65_adam_conv2d_34_kernel_v: 7
)assignvariableop_66_adam_conv2d_34_bias_v: E
+assignvariableop_67_adam_conv2d_38_kernel_v: 7
)assignvariableop_68_adam_conv2d_38_bias_v: E
+assignvariableop_69_adam_conv2d_35_kernel_v: 7
)assignvariableop_70_adam_conv2d_35_bias_v:E
+assignvariableop_71_adam_conv2d_39_kernel_v: 7
)assignvariableop_72_adam_conv2d_39_bias_v:E
+assignvariableop_73_adam_conv2d_36_kernel_v:7
)assignvariableop_74_adam_conv2d_36_bias_v:E
+assignvariableop_75_adam_conv2d_40_kernel_v:7
)assignvariableop_76_adam_conv2d_40_bias_v:E
+assignvariableop_77_adam_conv2d_37_kernel_v:7
)assignvariableop_78_adam_conv2d_37_bias_v:E
+assignvariableop_79_adam_conv2d_41_kernel_v:7
)assignvariableop_80_adam_conv2d_41_bias_v:=
*assignvariableop_81_adam_dense_26_kernel_v:	Ä 6
(assignvariableop_82_adam_dense_26_bias_v: <
*assignvariableop_83_adam_dense_28_kernel_v:0 6
(assignvariableop_84_adam_dense_28_bias_v: <
*assignvariableop_85_adam_dense_27_kernel_v: 6
(assignvariableop_86_adam_dense_27_bias_v:<
*assignvariableop_87_adam_dense_29_kernel_v: 6
(assignvariableop_88_adam_dense_29_bias_v:<
*assignvariableop_89_adam_dense_36_kernel_v: 6
(assignvariableop_90_adam_dense_36_bias_v:<
*assignvariableop_91_adam_dense_37_kernel_v:6
(assignvariableop_92_adam_dense_37_bias_v:
identity_94˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_43˘AssignVariableOp_44˘AssignVariableOp_45˘AssignVariableOp_46˘AssignVariableOp_47˘AssignVariableOp_48˘AssignVariableOp_49˘AssignVariableOp_5˘AssignVariableOp_50˘AssignVariableOp_51˘AssignVariableOp_52˘AssignVariableOp_53˘AssignVariableOp_54˘AssignVariableOp_55˘AssignVariableOp_56˘AssignVariableOp_57˘AssignVariableOp_58˘AssignVariableOp_59˘AssignVariableOp_6˘AssignVariableOp_60˘AssignVariableOp_61˘AssignVariableOp_62˘AssignVariableOp_63˘AssignVariableOp_64˘AssignVariableOp_65˘AssignVariableOp_66˘AssignVariableOp_67˘AssignVariableOp_68˘AssignVariableOp_69˘AssignVariableOp_7˘AssignVariableOp_70˘AssignVariableOp_71˘AssignVariableOp_72˘AssignVariableOp_73˘AssignVariableOp_74˘AssignVariableOp_75˘AssignVariableOp_76˘AssignVariableOp_77˘AssignVariableOp_78˘AssignVariableOp_79˘AssignVariableOp_8˘AssignVariableOp_80˘AssignVariableOp_81˘AssignVariableOp_82˘AssignVariableOp_83˘AssignVariableOp_84˘AssignVariableOp_85˘AssignVariableOp_86˘AssignVariableOp_87˘AssignVariableOp_88˘AssignVariableOp_89˘AssignVariableOp_9˘AssignVariableOp_90˘AssignVariableOp_91˘AssignVariableOp_925
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*´4
valueŞ4B§4^B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŻ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*Ñ
valueÇBÄ^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ÷
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesû
ĝ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*l
dtypesb
`2^	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_34_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_34_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_38_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_38_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_35_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_35_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_39_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_39_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_36_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_36_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_40_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_40_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_37_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_37_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_41_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_41_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_26_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_26_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_28_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_28_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_27_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp!assignvariableop_21_dense_27_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_29_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_29_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_36_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_36_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_37_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_37_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_34_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_34_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_38_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_38_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_35_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_35_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_39_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_39_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_36_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_36_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_40_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_40_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_37_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_37_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_41_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_41_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_26_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_26_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_28_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_28_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_27_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_27_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_29_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_29_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_36_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_36_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_dense_37_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_dense_37_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_34_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_34_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_38_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_38_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_35_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_35_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_39_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_39_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_36_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_36_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_40_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_40_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_37_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_37_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_41_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_41_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_26_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_26_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_28_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_28_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_dense_27_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_dense_27_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_29_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_29_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_dense_36_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_dense_36_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_dense_37_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_92AssignVariableOp(assignvariableop_92_adam_dense_37_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Í
Identity_93Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_94IdentityIdentity_93:output:0^NoOp_1*
T0*
_output_shapes
: ş
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92*"
_acd_function_control_output(*
_output_shapes
 "#
identity_94Identity_94:output:0*Ñ
_input_shapesż
ĵ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_92:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ù
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_102398

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_103815

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_33_layer_call_fn_103870

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_41_layer_call_and_return_conditional_losses_103985

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ċ

)__inference_dense_28_layer_call_fn_104056

inputs
unknown:0 
	unknown_0: 
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_102322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs
ó

*__inference_conv2d_35_layer_call_fn_103834

inputs!
unknown: 
	unknown_0:
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙ŭ> : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> 
 
_user_specified_nameinputs
ħ
&
__inference__traced_save_104625
file_prefix/
+savev2_conv2d_34_kernel_read_readvariableop-
)savev2_conv2d_34_bias_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop-
)savev2_conv2d_38_bias_read_readvariableop/
+savev2_conv2d_35_kernel_read_readvariableop-
)savev2_conv2d_35_bias_read_readvariableop/
+savev2_conv2d_39_kernel_read_readvariableop-
)savev2_conv2d_39_bias_read_readvariableop/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_40_kernel_read_readvariableop-
)savev2_conv2d_40_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_34_kernel_m_read_readvariableop4
0savev2_adam_conv2d_34_bias_m_read_readvariableop6
2savev2_adam_conv2d_38_kernel_m_read_readvariableop4
0savev2_adam_conv2d_38_bias_m_read_readvariableop6
2savev2_adam_conv2d_35_kernel_m_read_readvariableop4
0savev2_adam_conv2d_35_bias_m_read_readvariableop6
2savev2_adam_conv2d_39_kernel_m_read_readvariableop4
0savev2_adam_conv2d_39_bias_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop4
0savev2_adam_conv2d_36_bias_m_read_readvariableop6
2savev2_adam_conv2d_40_kernel_m_read_readvariableop4
0savev2_adam_conv2d_40_bias_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop4
0savev2_adam_conv2d_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_41_kernel_m_read_readvariableop4
0savev2_adam_conv2d_41_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop5
1savev2_adam_dense_29_kernel_m_read_readvariableop3
/savev2_adam_dense_29_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_34_kernel_v_read_readvariableop4
0savev2_adam_conv2d_34_bias_v_read_readvariableop6
2savev2_adam_conv2d_38_kernel_v_read_readvariableop4
0savev2_adam_conv2d_38_bias_v_read_readvariableop6
2savev2_adam_conv2d_35_kernel_v_read_readvariableop4
0savev2_adam_conv2d_35_bias_v_read_readvariableop6
2savev2_adam_conv2d_39_kernel_v_read_readvariableop4
0savev2_adam_conv2d_39_bias_v_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop4
0savev2_adam_conv2d_36_bias_v_read_readvariableop6
2savev2_adam_conv2d_40_kernel_v_read_readvariableop4
0savev2_adam_conv2d_40_bias_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop4
0savev2_adam_conv2d_37_bias_v_read_readvariableop6
2savev2_adam_conv2d_41_kernel_v_read_readvariableop4
0savev2_adam_conv2d_41_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop5
1savev2_adam_dense_29_kernel_v_read_readvariableop3
/savev2_adam_dense_29_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 5
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*´4
valueŞ4B§4^B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĴ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*Ñ
valueÇBÄ^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ı$
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_34_kernel_read_readvariableop)savev2_conv2d_34_bias_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop)savev2_conv2d_38_bias_read_readvariableop+savev2_conv2d_35_kernel_read_readvariableop)savev2_conv2d_35_bias_read_readvariableop+savev2_conv2d_39_kernel_read_readvariableop)savev2_conv2d_39_bias_read_readvariableop+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_40_kernel_read_readvariableop)savev2_conv2d_40_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_34_kernel_m_read_readvariableop0savev2_adam_conv2d_34_bias_m_read_readvariableop2savev2_adam_conv2d_38_kernel_m_read_readvariableop0savev2_adam_conv2d_38_bias_m_read_readvariableop2savev2_adam_conv2d_35_kernel_m_read_readvariableop0savev2_adam_conv2d_35_bias_m_read_readvariableop2savev2_adam_conv2d_39_kernel_m_read_readvariableop0savev2_adam_conv2d_39_bias_m_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop0savev2_adam_conv2d_36_bias_m_read_readvariableop2savev2_adam_conv2d_40_kernel_m_read_readvariableop0savev2_adam_conv2d_40_bias_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop0savev2_adam_conv2d_37_bias_m_read_readvariableop2savev2_adam_conv2d_41_kernel_m_read_readvariableop0savev2_adam_conv2d_41_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop1savev2_adam_dense_29_kernel_m_read_readvariableop/savev2_adam_dense_29_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop2savev2_adam_conv2d_34_kernel_v_read_readvariableop0savev2_adam_conv2d_34_bias_v_read_readvariableop2savev2_adam_conv2d_38_kernel_v_read_readvariableop0savev2_adam_conv2d_38_bias_v_read_readvariableop2savev2_adam_conv2d_35_kernel_v_read_readvariableop0savev2_adam_conv2d_35_bias_v_read_readvariableop2savev2_adam_conv2d_39_kernel_v_read_readvariableop0savev2_adam_conv2d_39_bias_v_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop0savev2_adam_conv2d_36_bias_v_read_readvariableop2savev2_adam_conv2d_40_kernel_v_read_readvariableop0savev2_adam_conv2d_40_bias_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop0savev2_adam_conv2d_37_bias_v_read_readvariableop2savev2_adam_conv2d_41_kernel_v_read_readvariableop0savev2_adam_conv2d_41_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop1savev2_adam_dense_29_kernel_v_read_readvariableop/savev2_adam_dense_29_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *l
dtypesb
`2^	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesü
ù: : : : : : :: ::::::::::	Ä : :0 : : :: :: :::: : : : : : : : : : : : : : :: ::::::::::	Ä : :0 : : :: :: :::: : : : : :: ::::::::::	Ä : :0 : : :: :: :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	Ä : 

_output_shapes
: :$ 

_output_shapes

:0 : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :,&(
&
_output_shapes
: : '

_output_shapes
: :,((
&
_output_shapes
: : )

_output_shapes
: :,*(
&
_output_shapes
: : +

_output_shapes
::,,(
&
_output_shapes
: : -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::%6!

_output_shapes
:	Ä : 7

_output_shapes
: :$8 

_output_shapes

:0 : 9

_output_shapes
: :$: 

_output_shapes

: : ;

_output_shapes
::$< 

_output_shapes

: : =

_output_shapes
::$> 

_output_shapes

: : ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
::,B(
&
_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
: : E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::,H(
&
_output_shapes
: : I

_output_shapes
::,J(
&
_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
::,N(
&
_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::%R!

_output_shapes
:	Ä : S

_output_shapes
: :$T 

_output_shapes

:0 : U

_output_shapes
: :$V 

_output_shapes

: : W

_output_shapes
::$X 

_output_shapes

: : Y

_output_shapes
::$Z 

_output_shapes

: : [

_output_shapes
::$\ 

_output_shapes

:: ]

_output_shapes
::^

_output_shapes
: 
ìŞ
ó
!__inference__wrapped_model_102046
conv2d_34_input
conv2d_38_inputJ
0model_8_conv2d_38_conv2d_readvariableop_resource: ?
1model_8_conv2d_38_biasadd_readvariableop_resource: J
0model_8_conv2d_34_conv2d_readvariableop_resource: ?
1model_8_conv2d_34_biasadd_readvariableop_resource: J
0model_8_conv2d_39_conv2d_readvariableop_resource: ?
1model_8_conv2d_39_biasadd_readvariableop_resource:J
0model_8_conv2d_35_conv2d_readvariableop_resource: ?
1model_8_conv2d_35_biasadd_readvariableop_resource:J
0model_8_conv2d_40_conv2d_readvariableop_resource:?
1model_8_conv2d_40_biasadd_readvariableop_resource:J
0model_8_conv2d_36_conv2d_readvariableop_resource:?
1model_8_conv2d_36_biasadd_readvariableop_resource:J
0model_8_conv2d_41_conv2d_readvariableop_resource:?
1model_8_conv2d_41_biasadd_readvariableop_resource:J
0model_8_conv2d_37_conv2d_readvariableop_resource:?
1model_8_conv2d_37_biasadd_readvariableop_resource:A
/model_8_dense_28_matmul_readvariableop_resource:0 >
0model_8_dense_28_biasadd_readvariableop_resource: B
/model_8_dense_26_matmul_readvariableop_resource:	Ä >
0model_8_dense_26_biasadd_readvariableop_resource: A
/model_8_dense_29_matmul_readvariableop_resource: >
0model_8_dense_29_biasadd_readvariableop_resource:A
/model_8_dense_27_matmul_readvariableop_resource: >
0model_8_dense_27_biasadd_readvariableop_resource:A
/model_8_dense_36_matmul_readvariableop_resource: >
0model_8_dense_36_biasadd_readvariableop_resource:A
/model_8_dense_37_matmul_readvariableop_resource:>
0model_8_dense_37_biasadd_readvariableop_resource:
identity˘(model_8/conv2d_34/BiasAdd/ReadVariableOp˘'model_8/conv2d_34/Conv2D/ReadVariableOp˘(model_8/conv2d_35/BiasAdd/ReadVariableOp˘'model_8/conv2d_35/Conv2D/ReadVariableOp˘(model_8/conv2d_36/BiasAdd/ReadVariableOp˘'model_8/conv2d_36/Conv2D/ReadVariableOp˘(model_8/conv2d_37/BiasAdd/ReadVariableOp˘'model_8/conv2d_37/Conv2D/ReadVariableOp˘(model_8/conv2d_38/BiasAdd/ReadVariableOp˘'model_8/conv2d_38/Conv2D/ReadVariableOp˘(model_8/conv2d_39/BiasAdd/ReadVariableOp˘'model_8/conv2d_39/Conv2D/ReadVariableOp˘(model_8/conv2d_40/BiasAdd/ReadVariableOp˘'model_8/conv2d_40/Conv2D/ReadVariableOp˘(model_8/conv2d_41/BiasAdd/ReadVariableOp˘'model_8/conv2d_41/Conv2D/ReadVariableOp˘'model_8/dense_26/BiasAdd/ReadVariableOp˘&model_8/dense_26/MatMul/ReadVariableOp˘'model_8/dense_27/BiasAdd/ReadVariableOp˘&model_8/dense_27/MatMul/ReadVariableOp˘'model_8/dense_28/BiasAdd/ReadVariableOp˘&model_8/dense_28/MatMul/ReadVariableOp˘'model_8/dense_29/BiasAdd/ReadVariableOp˘&model_8/dense_29/MatMul/ReadVariableOp˘'model_8/dense_36/BiasAdd/ReadVariableOp˘&model_8/dense_36/MatMul/ReadVariableOp˘'model_8/dense_37/BiasAdd/ReadVariableOp˘&model_8/dense_37/MatMul/ReadVariableOp 
'model_8/conv2d_38/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0È
model_8/conv2d_38/Conv2DConv2Dconv2d_38_input/model_8/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *
paddingVALID*
strides

(model_8/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_38_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0´
model_8/conv2d_38/BiasAddBiasAdd!model_8/conv2d_38/Conv2D:output:00model_8/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ }
model_8/conv2d_38/ReluRelu"model_8/conv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~  
'model_8/conv2d_34/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0É
model_8/conv2d_34/Conv2DConv2Dconv2d_34_input/model_8/conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *
paddingVALID*
strides

(model_8/conv2d_34/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
model_8/conv2d_34/BiasAddBiasAdd!model_8/conv2d_34/Conv2D:output:00model_8/conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù ~
model_8/conv2d_34/ReluRelu"model_8/conv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù ?
 model_8/max_pooling2d_36/MaxPoolMaxPool$model_8/conv2d_38/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ *
ksize
*
paddingVALID*
strides
ż
 model_8/max_pooling2d_32/MaxPoolMaxPool$model_8/conv2d_34/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> *
ksize
*
paddingVALID*
strides
 
'model_8/conv2d_39/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0á
model_8/conv2d_39/Conv2DConv2D)model_8/max_pooling2d_36/MaxPool:output:0/model_8/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>*
paddingVALID*
strides

(model_8/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0³
model_8/conv2d_39/BiasAddBiasAdd!model_8/conv2d_39/Conv2D:output:00model_8/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>|
model_8/conv2d_39/ReluRelu"model_8/conv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙> 
'model_8/conv2d_35/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0â
model_8/conv2d_35/Conv2DConv2D)model_8/max_pooling2d_32/MaxPool:output:0/model_8/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*
paddingVALID*
strides

(model_8/conv2d_35/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0´
model_8/conv2d_35/BiasAddBiasAdd!model_8/conv2d_35/Conv2D:output:00model_8/conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8}
model_8/conv2d_35/ReluRelu"model_8/conv2d_35/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8?
 model_8/max_pooling2d_37/MaxPoolMaxPool$model_8/conv2d_39/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
 model_8/max_pooling2d_33/MaxPoolMaxPool$model_8/conv2d_35/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙{*
ksize
*
paddingVALID*
strides
 
'model_8/conv2d_40/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
model_8/conv2d_40/Conv2DConv2D)model_8/max_pooling2d_37/MaxPool:output:0/model_8/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

(model_8/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0³
model_8/conv2d_40/BiasAddBiasAdd!model_8/conv2d_40/Conv2D:output:00model_8/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙|
model_8/conv2d_40/ReluRelu"model_8/conv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
'model_8/conv2d_36/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
model_8/conv2d_36/Conv2DConv2D)model_8/max_pooling2d_33/MaxPool:output:0/model_8/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y*
paddingVALID*
strides

(model_8/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0³
model_8/conv2d_36/BiasAddBiasAdd!model_8/conv2d_36/Conv2D:output:00model_8/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y|
model_8/conv2d_36/ReluRelu"model_8/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y?
 model_8/max_pooling2d_38/MaxPoolMaxPool$model_8/conv2d_40/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
 model_8/max_pooling2d_34/MaxPoolMaxPool$model_8/conv2d_36/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙<*
ksize
*
paddingVALID*
strides
 
'model_8/conv2d_41/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
model_8/conv2d_41/Conv2DConv2D)model_8/max_pooling2d_38/MaxPool:output:0/model_8/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

(model_8/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0³
model_8/conv2d_41/BiasAddBiasAdd!model_8/conv2d_41/Conv2D:output:00model_8/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙|
model_8/conv2d_41/ReluRelu"model_8/conv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
'model_8/conv2d_37/Conv2D/ReadVariableOpReadVariableOp0model_8_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0á
model_8/conv2d_37/Conv2DConv2D)model_8/max_pooling2d_34/MaxPool:output:0/model_8/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:*
paddingVALID*
strides

(model_8/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0³
model_8/conv2d_37/BiasAddBiasAdd!model_8/conv2d_37/Conv2D:output:00model_8/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:|
model_8/conv2d_37/ReluRelu"model_8/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:?
 model_8/max_pooling2d_39/MaxPoolMaxPool$model_8/conv2d_41/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
 model_8/max_pooling2d_35/MaxPoolMaxPool$model_8/conv2d_37/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
h
model_8/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   £
model_8/flatten_9/ReshapeReshape)model_8/max_pooling2d_39/MaxPool:output:0 model_8/flatten_9/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0h
model_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D  ¤
model_8/flatten_8/ReshapeReshape)model_8/max_pooling2d_35/MaxPool:output:0 model_8/flatten_8/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
&model_8/dense_28/MatMul/ReadVariableOpReadVariableOp/model_8_dense_28_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0§
model_8/dense_28/MatMulMatMul"model_8/flatten_9/Reshape:output:0.model_8/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
'model_8/dense_28/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0İ
model_8/dense_28/BiasAddBiasAdd!model_8/dense_28/MatMul:product:0/model_8/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
model_8/dense_28/ReluRelu!model_8/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
&model_8/dense_26/MatMul/ReadVariableOpReadVariableOp/model_8_dense_26_matmul_readvariableop_resource*
_output_shapes
:	Ä *
dtype0§
model_8/dense_26/MatMulMatMul"model_8/flatten_8/Reshape:output:0.model_8/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
'model_8/dense_26/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0İ
model_8/dense_26/BiasAddBiasAdd!model_8/dense_26/MatMul:product:0/model_8/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
model_8/dense_26/ReluRelu!model_8/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ ~
model_8/dropout_28/IdentityIdentity#model_8/dense_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ ~
model_8/dropout_26/IdentityIdentity#model_8/dense_26/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
&model_8/dense_29/MatMul/ReadVariableOpReadVariableOp/model_8_dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0İ
model_8/dense_29/MatMulMatMul$model_8/dropout_28/Identity:output:0.model_8/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'model_8/dense_29/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0İ
model_8/dense_29/BiasAddBiasAdd!model_8/dense_29/MatMul:product:0/model_8/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
model_8/dense_29/ReluRelu!model_8/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_8/dense_27/MatMul/ReadVariableOpReadVariableOp/model_8_dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype0İ
model_8/dense_27/MatMulMatMul$model_8/dropout_26/Identity:output:0.model_8/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'model_8/dense_27/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0İ
model_8/dense_27/BiasAddBiasAdd!model_8/dense_27/MatMul:product:0/model_8/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
model_8/dense_27/ReluRelu!model_8/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
model_8/dropout_27/IdentityIdentity#model_8/dense_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
model_8/dropout_29/IdentityIdentity#model_8/dense_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c
!model_8/concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Û
model_8/concatenate_8/concatConcatV2$model_8/dropout_27/Identity:output:0$model_8/dropout_29/Identity:output:0*model_8/concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
model_8/dropout_36/IdentityIdentity%model_8/concatenate_8/concat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
&model_8/dense_36/MatMul/ReadVariableOpReadVariableOp/model_8_dense_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype0İ
model_8/dense_36/MatMulMatMul$model_8/dropout_36/Identity:output:0.model_8/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'model_8/dense_36/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0İ
model_8/dense_36/BiasAddBiasAdd!model_8/dense_36/MatMul:product:0/model_8/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
model_8/dense_36/ReluRelu!model_8/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
model_8/dropout_37/IdentityIdentity#model_8/dense_36/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_8/dense_37/MatMul/ReadVariableOpReadVariableOp/model_8_dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype0İ
model_8/dense_37/MatMulMatMul$model_8/dropout_37/Identity:output:0.model_8/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'model_8/dense_37/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0İ
model_8/dense_37/BiasAddBiasAdd!model_8/dense_37/MatMul:product:0/model_8/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
model_8/dense_37/SoftmaxSoftmax!model_8/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙q
IdentityIdentity"model_8/dense_37/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙à	
NoOpNoOp)^model_8/conv2d_34/BiasAdd/ReadVariableOp(^model_8/conv2d_34/Conv2D/ReadVariableOp)^model_8/conv2d_35/BiasAdd/ReadVariableOp(^model_8/conv2d_35/Conv2D/ReadVariableOp)^model_8/conv2d_36/BiasAdd/ReadVariableOp(^model_8/conv2d_36/Conv2D/ReadVariableOp)^model_8/conv2d_37/BiasAdd/ReadVariableOp(^model_8/conv2d_37/Conv2D/ReadVariableOp)^model_8/conv2d_38/BiasAdd/ReadVariableOp(^model_8/conv2d_38/Conv2D/ReadVariableOp)^model_8/conv2d_39/BiasAdd/ReadVariableOp(^model_8/conv2d_39/Conv2D/ReadVariableOp)^model_8/conv2d_40/BiasAdd/ReadVariableOp(^model_8/conv2d_40/Conv2D/ReadVariableOp)^model_8/conv2d_41/BiasAdd/ReadVariableOp(^model_8/conv2d_41/Conv2D/ReadVariableOp(^model_8/dense_26/BiasAdd/ReadVariableOp'^model_8/dense_26/MatMul/ReadVariableOp(^model_8/dense_27/BiasAdd/ReadVariableOp'^model_8/dense_27/MatMul/ReadVariableOp(^model_8/dense_28/BiasAdd/ReadVariableOp'^model_8/dense_28/MatMul/ReadVariableOp(^model_8/dense_29/BiasAdd/ReadVariableOp'^model_8/dense_29/MatMul/ReadVariableOp(^model_8/dense_36/BiasAdd/ReadVariableOp'^model_8/dense_36/MatMul/ReadVariableOp(^model_8/dense_37/BiasAdd/ReadVariableOp'^model_8/dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(model_8/conv2d_34/BiasAdd/ReadVariableOp(model_8/conv2d_34/BiasAdd/ReadVariableOp2R
'model_8/conv2d_34/Conv2D/ReadVariableOp'model_8/conv2d_34/Conv2D/ReadVariableOp2T
(model_8/conv2d_35/BiasAdd/ReadVariableOp(model_8/conv2d_35/BiasAdd/ReadVariableOp2R
'model_8/conv2d_35/Conv2D/ReadVariableOp'model_8/conv2d_35/Conv2D/ReadVariableOp2T
(model_8/conv2d_36/BiasAdd/ReadVariableOp(model_8/conv2d_36/BiasAdd/ReadVariableOp2R
'model_8/conv2d_36/Conv2D/ReadVariableOp'model_8/conv2d_36/Conv2D/ReadVariableOp2T
(model_8/conv2d_37/BiasAdd/ReadVariableOp(model_8/conv2d_37/BiasAdd/ReadVariableOp2R
'model_8/conv2d_37/Conv2D/ReadVariableOp'model_8/conv2d_37/Conv2D/ReadVariableOp2T
(model_8/conv2d_38/BiasAdd/ReadVariableOp(model_8/conv2d_38/BiasAdd/ReadVariableOp2R
'model_8/conv2d_38/Conv2D/ReadVariableOp'model_8/conv2d_38/Conv2D/ReadVariableOp2T
(model_8/conv2d_39/BiasAdd/ReadVariableOp(model_8/conv2d_39/BiasAdd/ReadVariableOp2R
'model_8/conv2d_39/Conv2D/ReadVariableOp'model_8/conv2d_39/Conv2D/ReadVariableOp2T
(model_8/conv2d_40/BiasAdd/ReadVariableOp(model_8/conv2d_40/BiasAdd/ReadVariableOp2R
'model_8/conv2d_40/Conv2D/ReadVariableOp'model_8/conv2d_40/Conv2D/ReadVariableOp2T
(model_8/conv2d_41/BiasAdd/ReadVariableOp(model_8/conv2d_41/BiasAdd/ReadVariableOp2R
'model_8/conv2d_41/Conv2D/ReadVariableOp'model_8/conv2d_41/Conv2D/ReadVariableOp2R
'model_8/dense_26/BiasAdd/ReadVariableOp'model_8/dense_26/BiasAdd/ReadVariableOp2P
&model_8/dense_26/MatMul/ReadVariableOp&model_8/dense_26/MatMul/ReadVariableOp2R
'model_8/dense_27/BiasAdd/ReadVariableOp'model_8/dense_27/BiasAdd/ReadVariableOp2P
&model_8/dense_27/MatMul/ReadVariableOp&model_8/dense_27/MatMul/ReadVariableOp2R
'model_8/dense_28/BiasAdd/ReadVariableOp'model_8/dense_28/BiasAdd/ReadVariableOp2P
&model_8/dense_28/MatMul/ReadVariableOp&model_8/dense_28/MatMul/ReadVariableOp2R
'model_8/dense_29/BiasAdd/ReadVariableOp'model_8/dense_29/BiasAdd/ReadVariableOp2P
&model_8/dense_29/MatMul/ReadVariableOp&model_8/dense_29/MatMul/ReadVariableOp2R
'model_8/dense_36/BiasAdd/ReadVariableOp'model_8/dense_36/BiasAdd/ReadVariableOp2P
&model_8/dense_36/MatMul/ReadVariableOp&model_8/dense_36/MatMul/ReadVariableOp2R
'model_8/dense_37/BiasAdd/ReadVariableOp'model_8/dense_37/BiasAdd/ReadVariableOp2P
&model_8/dense_37/MatMul/ReadVariableOp&model_8/dense_37/MatMul/ReadVariableOp:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input

ŝ
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙<
 
_user_specified_nameinputs
ö
d
+__inference_dropout_27_layer_call_fn_104171

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
È

)__inference_dense_26_layer_call_fn_104036

inputs
unknown:	Ä 
	unknown_0: 
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_102339o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_104082

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ç
C__inference_model_8_layer_call_and_return_conditional_losses_103536
inputs_0
inputs_1B
(conv2d_38_conv2d_readvariableop_resource: 7
)conv2d_38_biasadd_readvariableop_resource: B
(conv2d_34_conv2d_readvariableop_resource: 7
)conv2d_34_biasadd_readvariableop_resource: B
(conv2d_39_conv2d_readvariableop_resource: 7
)conv2d_39_biasadd_readvariableop_resource:B
(conv2d_35_conv2d_readvariableop_resource: 7
)conv2d_35_biasadd_readvariableop_resource:B
(conv2d_40_conv2d_readvariableop_resource:7
)conv2d_40_biasadd_readvariableop_resource:B
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:9
'dense_28_matmul_readvariableop_resource:0 6
(dense_28_biasadd_readvariableop_resource: :
'dense_26_matmul_readvariableop_resource:	Ä 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_29_matmul_readvariableop_resource: 6
(dense_29_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource: 6
(dense_27_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource: 6
(dense_36_biasadd_readvariableop_resource:9
'dense_37_matmul_readvariableop_resource:6
(dense_37_biasadd_readvariableop_resource:
identity˘ conv2d_34/BiasAdd/ReadVariableOp˘conv2d_34/Conv2D/ReadVariableOp˘ conv2d_35/BiasAdd/ReadVariableOp˘conv2d_35/Conv2D/ReadVariableOp˘ conv2d_36/BiasAdd/ReadVariableOp˘conv2d_36/Conv2D/ReadVariableOp˘ conv2d_37/BiasAdd/ReadVariableOp˘conv2d_37/Conv2D/ReadVariableOp˘ conv2d_38/BiasAdd/ReadVariableOp˘conv2d_38/Conv2D/ReadVariableOp˘ conv2d_39/BiasAdd/ReadVariableOp˘conv2d_39/Conv2D/ReadVariableOp˘ conv2d_40/BiasAdd/ReadVariableOp˘conv2d_40/Conv2D/ReadVariableOp˘ conv2d_41/BiasAdd/ReadVariableOp˘conv2d_41/Conv2D/ReadVariableOp˘dense_26/BiasAdd/ReadVariableOp˘dense_26/MatMul/ReadVariableOp˘dense_27/BiasAdd/ReadVariableOp˘dense_27/MatMul/ReadVariableOp˘dense_28/BiasAdd/ReadVariableOp˘dense_28/MatMul/ReadVariableOp˘dense_29/BiasAdd/ReadVariableOp˘dense_29/MatMul/ReadVariableOp˘dense_36/BiasAdd/ReadVariableOp˘dense_36/MatMul/ReadVariableOp˘dense_37/BiasAdd/ReadVariableOp˘dense_37/MatMul/ReadVariableOp
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ħ
conv2d_38/Conv2DConv2Dinputs_1'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *
paddingVALID*
strides

 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ m
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ 
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0²
conv2d_34/Conv2DConv2Dinputs_0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *
paddingVALID*
strides

 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù n
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù ?
max_pooling2d_36/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ *
ksize
*
paddingVALID*
strides
Ż
max_pooling2d_32/MaxPoolMaxPoolconv2d_34/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> *
ksize
*
paddingVALID*
strides

conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0É
conv2d_39/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>*
paddingVALID*
strides

 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ê
conv2d_35/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*
paddingVALID*
strides

 conv2d_35/BiasAdd/ReadVariableOpReadVariableOp)conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_35/BiasAddBiasAddconv2d_35/Conv2D:output:0(conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8m
conv2d_35/ReluReluconv2d_35/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8?
max_pooling2d_37/MaxPoolMaxPoolconv2d_39/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_33/MaxPoolMaxPoolconv2d_35/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙{*
ksize
*
paddingVALID*
strides

conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_40/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_36/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y*
paddingVALID*
strides

 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yl
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y?
max_pooling2d_38/MaxPoolMaxPoolconv2d_40/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_34/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙<*
ksize
*
paddingVALID*
strides

conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_41/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_37/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:*
paddingVALID*
strides

 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:?
max_pooling2d_39/MaxPoolMaxPoolconv2d_41/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_35/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   
flatten_9/ReshapeReshape!max_pooling2d_39/MaxPool:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D  
flatten_8/ReshapeReshape!max_pooling2d_35/MaxPool:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0
dense_28/MatMulMatMulflatten_9/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ b
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	Ä *
dtype0
dense_26/MatMulMatMulflatten_8/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ n
dropout_28/IdentityIdentitydense_28/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ n
dropout_26/IdentityIdentitydense_26/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_29/MatMulMatMuldropout_28/Identity:output:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_27/MatMulMatMuldropout_26/Identity:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
dropout_27/IdentityIdentitydense_27/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
dropout_29/IdentityIdentitydense_29/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ğ
concatenate_8/concatConcatV2dropout_27/Identity:output:0dropout_29/Identity:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ p
dropout_36/IdentityIdentityconcatenate_8/concat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_36/MatMulMatMuldropout_36/Identity:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n
dropout_37/IdentityIdentitydense_36/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_37/MatMulMatMuldropout_37/Identity:output:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_37/SoftmaxSoftmaxdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_37/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp!^conv2d_35/BiasAdd/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2D
 conv2d_35/BiasAdd/ReadVariableOp conv2d_35/BiasAdd/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
Ċ
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_36_layer_call_fn_103820

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş
s
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ċ

)__inference_dense_27_layer_call_fn_104130

inputs
unknown: 
	unknown_0:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_102387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_103885

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
´
F
*__inference_flatten_8_layer_call_fn_104010

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_34_layer_call_fn_103930

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

µ
(__inference_model_8_layer_call_fn_103351
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5: 
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:0 

unknown_16: 

unknown_17:	Ä 

unknown_18: 

unknown_19: 

unknown_20:

unknown_21: 

unknown_22:

unknown_23: 

unknown_24:

unknown_25:

unknown_26:
identity˘StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_102465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
úz
ß
C__inference_model_8_layer_call_and_return_conditional_losses_103191
conv2d_34_input
conv2d_38_input*
conv2d_38_103103: 
conv2d_38_103105: *
conv2d_34_103108: 
conv2d_34_103110: *
conv2d_39_103115: 
conv2d_39_103117:*
conv2d_35_103120: 
conv2d_35_103122:*
conv2d_40_103127:
conv2d_40_103129:*
conv2d_36_103132:
conv2d_36_103134:*
conv2d_41_103139:
conv2d_41_103141:*
conv2d_37_103144:
conv2d_37_103146:!
dense_28_103153:0 
dense_28_103155: "
dense_26_103158:	Ä 
dense_26_103160: !
dense_29_103165: 
dense_29_103167:!
dense_27_103170: 
dense_27_103172:!
dense_36_103179: 
dense_36_103181:!
dense_37_103185:
dense_37_103187:
identity˘!conv2d_34/StatefulPartitionedCall˘!conv2d_35/StatefulPartitionedCall˘!conv2d_36/StatefulPartitionedCall˘!conv2d_37/StatefulPartitionedCall˘!conv2d_38/StatefulPartitionedCall˘!conv2d_39/StatefulPartitionedCall˘!conv2d_40/StatefulPartitionedCall˘!conv2d_41/StatefulPartitionedCall˘ dense_26/StatefulPartitionedCall˘ dense_27/StatefulPartitionedCall˘ dense_28/StatefulPartitionedCall˘ dense_29/StatefulPartitionedCall˘ dense_36/StatefulPartitionedCall˘ dense_37/StatefulPartitionedCall
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCallconv2d_38_inputconv2d_38_103103conv2d_38_103105*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCallconv2d_34_inputconv2d_34_103108conv2d_34_103110*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179÷
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067ĝ
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055˘
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_39_103115conv2d_39_103117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198£
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_35_103120conv2d_35_103122*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215÷
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091÷
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙{* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079˘
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_40_103127conv2d_40_103129*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234˘
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_36_103132conv2d_36_103134*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙y*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251÷
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115÷
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103˘
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_41_103139conv2d_41_103141*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270˘
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_37_103144conv2d_37_103146*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287÷
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139÷
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127à
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301á
flatten_8/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309
 dense_28/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_28_103153dense_28_103155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_102322
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_26_103158dense_26_103160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_102339â
dropout_28/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102350â
dropout_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102357
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_29_103165dense_29_103167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_102370
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_27_103170dense_27_103172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_102387â
dropout_27/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102398â
dropout_29/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102405
concatenate_8/PartitionedCallPartitionedCall#dropout_27/PartitionedCall:output:0#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414ß
dropout_36/PartitionedCallPartitionedCall&concatenate_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102421
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_36_103179dense_36_103181*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_102434â
dropout_37/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102445
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_37_103185dense_37_103187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_102458x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
NoOpNoOp"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input


ġ
D__inference_dense_27_layer_call_and_return_conditional_losses_102387

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_37_layer_call_fn_103880

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


ġ
D__inference_dense_29_layer_call_and_return_conditional_losses_102370

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_104005

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
²
F
*__inference_flatten_9_layer_call_fn_104021

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â
?
(__inference_model_8_layer_call_fn_103099
conv2d_34_input
conv2d_38_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5: 
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:0 

unknown_16: 

unknown_17:	Ä 

unknown_18: 

unknown_19: 

unknown_20:

unknown_21: 

unknown_22:

unknown_23: 

unknown_24:

unknown_25:

unknown_26:
identity˘StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_34_inputconv2d_38_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_102978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input
ô	
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_104094

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_104243

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_36_layer_call_and_return_conditional_losses_103905

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙{: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙{
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_38_layer_call_and_return_conditional_losses_103805

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ğ
½
C__inference_model_8_layer_call_and_return_conditional_losses_103283
conv2d_34_input
conv2d_38_input*
conv2d_38_103195: 
conv2d_38_103197: *
conv2d_34_103200: 
conv2d_34_103202: *
conv2d_39_103207: 
conv2d_39_103209:*
conv2d_35_103212: 
conv2d_35_103214:*
conv2d_40_103219:
conv2d_40_103221:*
conv2d_36_103224:
conv2d_36_103226:*
conv2d_41_103231:
conv2d_41_103233:*
conv2d_37_103236:
conv2d_37_103238:!
dense_28_103245:0 
dense_28_103247: "
dense_26_103250:	Ä 
dense_26_103252: !
dense_29_103257: 
dense_29_103259:!
dense_27_103262: 
dense_27_103264:!
dense_36_103271: 
dense_36_103273:!
dense_37_103277:
dense_37_103279:
identity˘!conv2d_34/StatefulPartitionedCall˘!conv2d_35/StatefulPartitionedCall˘!conv2d_36/StatefulPartitionedCall˘!conv2d_37/StatefulPartitionedCall˘!conv2d_38/StatefulPartitionedCall˘!conv2d_39/StatefulPartitionedCall˘!conv2d_40/StatefulPartitionedCall˘!conv2d_41/StatefulPartitionedCall˘ dense_26/StatefulPartitionedCall˘ dense_27/StatefulPartitionedCall˘ dense_28/StatefulPartitionedCall˘ dense_29/StatefulPartitionedCall˘ dense_36/StatefulPartitionedCall˘ dense_37/StatefulPartitionedCall˘"dropout_26/StatefulPartitionedCall˘"dropout_27/StatefulPartitionedCall˘"dropout_28/StatefulPartitionedCall˘"dropout_29/StatefulPartitionedCall˘"dropout_36/StatefulPartitionedCall˘"dropout_37/StatefulPartitionedCall
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCallconv2d_38_inputconv2d_38_103195conv2d_38_103197*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCallconv2d_34_inputconv2d_34_103200conv2d_34_103202*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179÷
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067ĝ
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055˘
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_39_103207conv2d_39_103209*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198£
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_35_103212conv2d_35_103214*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215÷
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091÷
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙{* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079˘
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_40_103219conv2d_40_103221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234˘
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_36_103224conv2d_36_103226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙y*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251÷
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115÷
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103˘
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_41_103231conv2d_41_103233*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270˘
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_37_103236conv2d_37_103238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287÷
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139÷
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127à
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301á
flatten_8/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309
 dense_28/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_28_103245dense_28_103247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_102322
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_26_103250dense_26_103252*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_102339ò
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102706
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102683
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_29_103257dense_29_103259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_102370
 dense_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_27_103262dense_27_103264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_102387
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102640
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102617
concatenate_8/PartitionedCallPartitionedCall+dropout_27/StatefulPartitionedCall:output:0+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102587
 dense_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_36_103271dense_36_103273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_102434
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102554
 dense_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_37_103277dense_37_103279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_102458x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input
ö
d
+__inference_dropout_26_layer_call_fn_104077

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_104203

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_103945

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


ġ
D__inference_dense_28_layer_call_and_return_conditional_losses_102322

inputs0
matmul_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs
Èz
Ï
C__inference_model_8_layer_call_and_return_conditional_losses_102465

inputs
inputs_1*
conv2d_38_102163: 
conv2d_38_102165: *
conv2d_34_102180: 
conv2d_34_102182: *
conv2d_39_102199: 
conv2d_39_102201:*
conv2d_35_102216: 
conv2d_35_102218:*
conv2d_40_102235:
conv2d_40_102237:*
conv2d_36_102252:
conv2d_36_102254:*
conv2d_41_102271:
conv2d_41_102273:*
conv2d_37_102288:
conv2d_37_102290:!
dense_28_102323:0 
dense_28_102325: "
dense_26_102340:	Ä 
dense_26_102342: !
dense_29_102371: 
dense_29_102373:!
dense_27_102388: 
dense_27_102390:!
dense_36_102435: 
dense_36_102437:!
dense_37_102459:
dense_37_102461:
identity˘!conv2d_34/StatefulPartitionedCall˘!conv2d_35/StatefulPartitionedCall˘!conv2d_36/StatefulPartitionedCall˘!conv2d_37/StatefulPartitionedCall˘!conv2d_38/StatefulPartitionedCall˘!conv2d_39/StatefulPartitionedCall˘!conv2d_40/StatefulPartitionedCall˘!conv2d_41/StatefulPartitionedCall˘ dense_26/StatefulPartitionedCall˘ dense_27/StatefulPartitionedCall˘ dense_28/StatefulPartitionedCall˘ dense_29/StatefulPartitionedCall˘ dense_36/StatefulPartitionedCall˘ dense_37/StatefulPartitionedCall
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_38_102163conv2d_38_102165*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_34_102180conv2d_34_102182*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179÷
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067ĝ
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055˘
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_39_102199conv2d_39_102201*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198£
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_35_102216conv2d_35_102218*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215÷
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091÷
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙{* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079˘
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_40_102235conv2d_40_102237*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234˘
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_36_102252conv2d_36_102254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙y*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251÷
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115÷
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103˘
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_41_102271conv2d_41_102273*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270˘
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_37_102288conv2d_37_102290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287÷
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139÷
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127à
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301á
flatten_8/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309
 dense_28/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_28_102323dense_28_102325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_102322
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_26_102340dense_26_102342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_102339â
dropout_28/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102350â
dropout_26/PartitionedCallPartitionedCall)dense_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102357
 dense_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_29_102371dense_29_102373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_102370
 dense_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_27_102388dense_27_102390*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_102387â
dropout_27/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102398â
dropout_29/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102405
concatenate_8/PartitionedCallPartitionedCall#dropout_27/PartitionedCall:output:0#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414ß
dropout_36/PartitionedCallPartitionedCall&concatenate_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102421
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_36_102435dense_36_102437*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_102434â
dropout_37/PartitionedCallPartitionedCall)dense_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102445
 dense_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_37_102459dense_37_102461*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_102458x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
NoOpNoOp"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:YU
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
G
+__inference_dropout_36_layer_call_fn_104233

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102421`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_39_layer_call_and_return_conditional_losses_103865

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_104109

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ï

*__inference_conv2d_40_layer_call_fn_103914

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallċ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_102405

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_102587

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ġ

*__inference_conv2d_38_layer_call_fn_103794

inputs!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallĉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_32_layer_call_fn_103810

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_102421

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ñÂ
Ç
C__inference_model_8_layer_call_and_return_conditional_losses_103701
inputs_0
inputs_1B
(conv2d_38_conv2d_readvariableop_resource: 7
)conv2d_38_biasadd_readvariableop_resource: B
(conv2d_34_conv2d_readvariableop_resource: 7
)conv2d_34_biasadd_readvariableop_resource: B
(conv2d_39_conv2d_readvariableop_resource: 7
)conv2d_39_biasadd_readvariableop_resource:B
(conv2d_35_conv2d_readvariableop_resource: 7
)conv2d_35_biasadd_readvariableop_resource:B
(conv2d_40_conv2d_readvariableop_resource:7
)conv2d_40_biasadd_readvariableop_resource:B
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource:7
)conv2d_37_biasadd_readvariableop_resource:9
'dense_28_matmul_readvariableop_resource:0 6
(dense_28_biasadd_readvariableop_resource: :
'dense_26_matmul_readvariableop_resource:	Ä 6
(dense_26_biasadd_readvariableop_resource: 9
'dense_29_matmul_readvariableop_resource: 6
(dense_29_biasadd_readvariableop_resource:9
'dense_27_matmul_readvariableop_resource: 6
(dense_27_biasadd_readvariableop_resource:9
'dense_36_matmul_readvariableop_resource: 6
(dense_36_biasadd_readvariableop_resource:9
'dense_37_matmul_readvariableop_resource:6
(dense_37_biasadd_readvariableop_resource:
identity˘ conv2d_34/BiasAdd/ReadVariableOp˘conv2d_34/Conv2D/ReadVariableOp˘ conv2d_35/BiasAdd/ReadVariableOp˘conv2d_35/Conv2D/ReadVariableOp˘ conv2d_36/BiasAdd/ReadVariableOp˘conv2d_36/Conv2D/ReadVariableOp˘ conv2d_37/BiasAdd/ReadVariableOp˘conv2d_37/Conv2D/ReadVariableOp˘ conv2d_38/BiasAdd/ReadVariableOp˘conv2d_38/Conv2D/ReadVariableOp˘ conv2d_39/BiasAdd/ReadVariableOp˘conv2d_39/Conv2D/ReadVariableOp˘ conv2d_40/BiasAdd/ReadVariableOp˘conv2d_40/Conv2D/ReadVariableOp˘ conv2d_41/BiasAdd/ReadVariableOp˘conv2d_41/Conv2D/ReadVariableOp˘dense_26/BiasAdd/ReadVariableOp˘dense_26/MatMul/ReadVariableOp˘dense_27/BiasAdd/ReadVariableOp˘dense_27/MatMul/ReadVariableOp˘dense_28/BiasAdd/ReadVariableOp˘dense_28/MatMul/ReadVariableOp˘dense_29/BiasAdd/ReadVariableOp˘dense_29/MatMul/ReadVariableOp˘dense_36/BiasAdd/ReadVariableOp˘dense_36/MatMul/ReadVariableOp˘dense_37/BiasAdd/ReadVariableOp˘dense_37/MatMul/ReadVariableOp
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ħ
conv2d_38/Conv2DConv2Dinputs_1'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *
paddingVALID*
strides

 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ m
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ 
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0²
conv2d_34/Conv2DConv2Dinputs_0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *
paddingVALID*
strides

 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù n
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù ?
max_pooling2d_36/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ *
ksize
*
paddingVALID*
strides
Ż
max_pooling2d_32/MaxPoolMaxPoolconv2d_34/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> *
ksize
*
paddingVALID*
strides

conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0É
conv2d_39/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>*
paddingVALID*
strides

 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ê
conv2d_35/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*
paddingVALID*
strides

 conv2d_35/BiasAdd/ReadVariableOpReadVariableOp)conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_35/BiasAddBiasAddconv2d_35/Conv2D:output:0(conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8m
conv2d_35/ReluReluconv2d_35/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8?
max_pooling2d_37/MaxPoolMaxPoolconv2d_39/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_33/MaxPoolMaxPoolconv2d_35/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙{*
ksize
*
paddingVALID*
strides

conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_40/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_36/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y*
paddingVALID*
strides

 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yl
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y?
max_pooling2d_38/MaxPoolMaxPoolconv2d_40/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_34/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙<*
ksize
*
paddingVALID*
strides

conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_41/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides

 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0É
conv2d_37/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:*
paddingVALID*
strides

 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:?
max_pooling2d_39/MaxPoolMaxPoolconv2d_41/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
?
max_pooling2d_35/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   
flatten_9/ReshapeReshape!max_pooling2d_39/MaxPool:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D  
flatten_8/ReshapeReshape!max_pooling2d_35/MaxPool:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:0 *
dtype0
dense_28/MatMulMatMulflatten_9/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ b
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	Ä *
dtype0
dense_26/MatMulMatMulflatten_8/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ ]
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_28/dropout/MulMuldense_28/Relu:activations:0!dropout_28/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ c
dropout_28/dropout/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0f
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ ]
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_26/dropout/MulMuldense_26/Relu:activations:0!dropout_26/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ c
dropout_26/dropout/ShapeShapedense_26/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0f
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_29/MatMulMatMuldropout_28/dropout/Mul_1:z:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_27/MatMulMatMuldropout_26/dropout/Mul_1:z:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_27/dropout/MulMuldense_27/Relu:activations:0!dropout_27/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dropout_27/dropout/ShapeShapedense_27/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_29/dropout/MulMuldense_29/Relu:activations:0!dropout_29/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dropout_29/dropout/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0f
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ğ
concatenate_8/concatConcatV2dropout_27/dropout/Mul_1:z:0dropout_29/dropout/Mul_1:z:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ ]
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_36/dropout/MulMulconcatenate_8/concat:output:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ e
dropout_36/dropout/ShapeShapeconcatenate_8/concat:output:0*
T0*
_output_shapes
:˘
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0f
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_36/MatMulMatMuldropout_36/dropout/Mul_1:z:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_37/dropout/MulMuldense_36/Relu:activations:0!dropout_37/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dropout_37/dropout/ShapeShapedense_36/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_37/MatMulMatMuldropout_37/dropout/Mul_1:z:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_37/SoftmaxSoftmaxdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_37/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp!^conv2d_35/BiasAdd/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2D
 conv2d_35/BiasAdd/ReadVariableOp conv2d_35/BiasAdd/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1
ô	
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_104188

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
d
+__inference_dropout_28_layer_call_fn_104104

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102706o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_102445

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
G
+__inference_dropout_37_layer_call_fn_104280

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102445`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
G
+__inference_dropout_27_layer_call_fn_104166

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102398`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ 
 
_user_specified_nameinputs


ġ
D__inference_dense_36_layer_call_and_return_conditional_losses_102434

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ï

*__inference_conv2d_41_layer_call_fn_103974

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallċ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ċ

)__inference_dense_36_layer_call_fn_104264

inputs
unknown: 
	unknown_0:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_102434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs


ġ
D__inference_dense_29_layer_call_and_return_conditional_losses_104161

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙yw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙{: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙{
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_104016

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÄY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_104176

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
G
+__inference_dropout_29_layer_call_fn_104193

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102405`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ż
$__inference_signature_wrapper_103765
conv2d_34_input
conv2d_38_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5: 
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:0 

unknown_16: 

unknown_17:	Ä 

unknown_18: 

unknown_19: 

unknown_20:

unknown_21: 

unknown_22:

unknown_23: 

unknown_24:

unknown_25:

unknown_26:
identity˘StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallconv2d_34_inputconv2d_38_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_102046o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input


ö
D__inference_dense_26_layer_call_and_return_conditional_losses_102339

inputs1
matmul_readvariableop_resource:	Ä -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ä *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_104215

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_28_layer_call_and_return_conditional_losses_104121

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
÷

*__inference_conv2d_34_layer_call_fn_103774

inputs!
unknown: 
	unknown_0: 
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_103995

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙ŭ> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> 
 
_user_specified_nameinputs

­
C__inference_model_8_layer_call_and_return_conditional_losses_102978

inputs
inputs_1*
conv2d_38_102890: 
conv2d_38_102892: *
conv2d_34_102895: 
conv2d_34_102897: *
conv2d_39_102902: 
conv2d_39_102904:*
conv2d_35_102907: 
conv2d_35_102909:*
conv2d_40_102914:
conv2d_40_102916:*
conv2d_36_102919:
conv2d_36_102921:*
conv2d_41_102926:
conv2d_41_102928:*
conv2d_37_102931:
conv2d_37_102933:!
dense_28_102940:0 
dense_28_102942: "
dense_26_102945:	Ä 
dense_26_102947: !
dense_29_102952: 
dense_29_102954:!
dense_27_102957: 
dense_27_102959:!
dense_36_102966: 
dense_36_102968:!
dense_37_102972:
dense_37_102974:
identity˘!conv2d_34/StatefulPartitionedCall˘!conv2d_35/StatefulPartitionedCall˘!conv2d_36/StatefulPartitionedCall˘!conv2d_37/StatefulPartitionedCall˘!conv2d_38/StatefulPartitionedCall˘!conv2d_39/StatefulPartitionedCall˘!conv2d_40/StatefulPartitionedCall˘!conv2d_41/StatefulPartitionedCall˘ dense_26/StatefulPartitionedCall˘ dense_27/StatefulPartitionedCall˘ dense_28/StatefulPartitionedCall˘ dense_29/StatefulPartitionedCall˘ dense_36/StatefulPartitionedCall˘ dense_37/StatefulPartitionedCall˘"dropout_26/StatefulPartitionedCall˘"dropout_27/StatefulPartitionedCall˘"dropout_28/StatefulPartitionedCall˘"dropout_29/StatefulPartitionedCall˘"dropout_36/StatefulPartitionedCall˘"dropout_37/StatefulPartitionedCall
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCallinputs_1conv2d_38_102890conv2d_38_102892*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_34_102895conv2d_34_102897*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179÷
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067ĝ
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055˘
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_39_102902conv2d_39_102904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198£
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_35_102907conv2d_35_102909*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_35_layer_call_and_return_conditional_losses_102215÷
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091÷
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙{* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_102079˘
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_40_102914conv2d_40_102916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234˘
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_36_102919conv2d_36_102921*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙y*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251÷
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115÷
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103˘
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_41_102926conv2d_41_102928*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_102270˘
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_37_102931conv2d_37_102933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287÷
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139÷
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127à
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_102301á
flatten_8/PartitionedCallPartitionedCall)max_pooling2d_35/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309
 dense_28/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_28_102940dense_28_102942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_102322
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_26_102945dense_26_102947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_102339ò
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102706
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102683
 dense_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_29_102952dense_29_102954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_102370
 dense_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_27_102957dense_27_102959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_102387
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_102640
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102617
concatenate_8/PartitionedCallPartitionedCall+dropout_27/StatefulPartitionedCall:output:0+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_102414
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102587
 dense_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_36_102966dense_36_102968*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_102434
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102554
 dense_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_37_102972dense_37_102974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_102458x
IdentityIdentity)dense_37/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall!^dense_29/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:YU
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_102067

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â
?
(__inference_model_8_layer_call_fn_102524
conv2d_34_input
conv2d_38_input!
unknown: 
	unknown_0: #
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5: 
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:0 

unknown_16: 

unknown_17:	Ä 

unknown_18: 

unknown_19: 

unknown_20:

unknown_21: 

unknown_22:

unknown_23: 

unknown_24:

unknown_25:

unknown_26:
identity˘StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_34_inputconv2d_38_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_102465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapest
r:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_34_input:b^
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameconv2d_38_input

h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_103875

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_40_layer_call_and_return_conditional_losses_102234

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_38_layer_call_and_return_conditional_losses_102162

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙~ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


ġ
D__inference_dense_28_layer_call_and_return_conditional_losses_104067

inputs0
matmul_readvariableop_resource:0 -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_102309

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙D  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ÄY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_102350

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_102617

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_104290

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_34_layer_call_and_return_conditional_losses_103785

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_35_layer_call_fn_103990

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_102127
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ċ

)__inference_dense_29_layer_call_fn_104150

inputs
unknown: 
	unknown_0:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_102370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_37_layer_call_and_return_conditional_losses_102554

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_103825

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_37_layer_call_and_return_conditional_losses_103965

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙<
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_37_layer_call_and_return_conditional_losses_104302

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_39_layer_call_fn_104000

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_102139
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_102103

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_26_layer_call_and_return_conditional_losses_102683

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_35_layer_call_and_return_conditional_losses_103845

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙÷8w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙ŭ> : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙ŭ> 
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_103935

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_40_layer_call_and_return_conditional_losses_103925

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¤
G
+__inference_dropout_28_layer_call_fn_104099

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_102350`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs


ġ
D__inference_dense_27_layer_call_and_return_conditional_losses_104141

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
½
M
1__inference_max_pooling2d_38_layer_call_fn_103940

inputs
identityŬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_102115
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ï

*__inference_conv2d_37_layer_call_fn_103954

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallċ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙:*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_102287w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙<
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_36_layer_call_and_return_conditional_losses_104255

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ï

*__inference_conv2d_36_layer_call_fn_103894

inputs!
unknown:
	unknown_0:
identity˘StatefulPartitionedCallċ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙y*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_102251w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙{: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙{
 
_user_specified_nameinputs
ö
d
+__inference_dropout_37_layer_call_fn_104285

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_102554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_102091

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_28_layer_call_and_return_conditional_losses_102706

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ï

*__inference_conv2d_39_layer_call_fn_103854

inputs!
unknown: 
	unknown_0:
identity˘StatefulPartitionedCallċ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_39_layer_call_and_return_conditional_losses_102198w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙@ 
 
_user_specified_nameinputs
¤
G
+__inference_dropout_26_layer_call_fn_104072

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_102357`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs

ŝ
E__inference_conv2d_34_layer_call_and_return_conditional_losses_102179

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙÷ù w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
d
+__inference_dropout_36_layer_call_fn_104238

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_102587o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_27_layer_call_and_return_conditional_losses_102640

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ĥ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 

ġ
D__inference_dense_37_layer_call_and_return_conditional_losses_102458

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
 

ġ
D__inference_dense_37_layer_call_and_return_conditional_losses_104322

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_102055

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_102357

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙ :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Â
u
I__inference_concatenate_8_layer_call_and_return_conditional_losses_104228
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1


ġ
D__inference_dense_36_layer_call_and_return_conditional_losses_104275

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
 
_user_specified_nameinputs
Ċ

)__inference_dense_37_layer_call_fn_104311

inputs
unknown:
	unknown_0:
identity˘StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_102458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
d
+__inference_dropout_29_layer_call_fn_104198

inputs
identity˘StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_102617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
U
conv2d_34_inputB
!serving_default_conv2d_34_input:0˙˙˙˙˙˙˙˙˙
U
conv2d_38_inputB
!serving_default_conv2d_38_input:0˙˙˙˙˙˙˙˙˙<
dense_370
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:½î

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer_with_weights-9
layer-21
layer-22
layer-23
layer_with_weights-10
layer-24
layer_with_weights-11
layer-25
layer-26
layer-27
layer-28
layer-29
layer_with_weights-12
layer-30
 layer-31
!layer_with_weights-13
!layer-32
"	optimizer
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_default_save_signature
*
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
ğ

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
ğ

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
ğ

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
ğ

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
ğ

ckernel
dbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
ğ

kkernel
lbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
?
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
Â

kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
?
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ğ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ğ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ğ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
Ğ
Ħ	variables
˘trainable_variables
£regularization_losses
¤	keras_api
?__call__
+Ĥ&call_and_return_all_conditional_losses"
_tf_keras_layer
?
§kernel
	¨bias
İ	variables
Ştrainable_variables
Ğregularization_losses
Ĵ	keras_api
­__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Żkernel
	°bias
ħ	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+ĥ&call_and_return_all_conditional_losses"
_tf_keras_layer
?
·	variables
¸trainable_variables
ıregularization_losses
ş	keras_api
ğ_random_generator
ĵ__call__
+½&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
żtrainable_variables
Àregularization_losses
Á	keras_api
Â_random_generator
?__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Ċkernel
	Ĉbias
Ç	variables
Ètrainable_variables
Éregularization_losses
Ê	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Íkernel
	Îbias
Ï	variables
?trainable_variables
Ñregularization_losses
Ò	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Ġ	variables
Ötrainable_variables
×regularization_losses
Ĝ	keras_api
Ù_random_generator
Ú__call__
+Û&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Ü	variables
Ŭtrainable_variables
Ŝregularization_losses
ß	keras_api
à_random_generator
á__call__
+â&call_and_return_all_conditional_losses"
_tf_keras_layer
Ğ
?	variables
ätrainable_variables
ċregularization_losses
ĉ	keras_api
ç__call__
+è&call_and_return_all_conditional_losses"
_tf_keras_layer
?
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í_random_generator
î__call__
+ï&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	ñbias
ò	variables
ótrainable_variables
ôregularization_losses
ġ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_layer
?
ĝ	variables
ùtrainable_variables
úregularization_losses
û	keras_api
ü_random_generator
ŭ__call__
+ŝ&call_and_return_all_conditional_losses"
_tf_keras_layer
?
˙kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ĥ
	iter
beta_1
beta_2

decay
learning_rate+m¸,mı3mş4mğGmĵHm½Om?PmżcmÀdmÁkmÂlm?mÄ	mĊ	mĈ	mÇ	§mÈ	¨mÉ	ŻmÊ	°mË	ĊmÌ	ĈmÍ	ÍmÎ	ÎmÏ	?m?	ñmÑ	˙mÒ	mÓ+vÔ,vĠ3vÖ4v×GvĜHvÙOvÚPvÛcvÜdvŬkvŜlvßvà	vá	vâ	v?	§vä	¨vċ	Żvĉ	°vç	Ċvè	Ĉvé	Ívê	Îvë	?vì	ñví	˙vî	vï"
	optimizer

+0
,1
32
43
G4
H5
O6
P7
c8
d9
k10
l11
12
13
14
15
§16
¨17
Ż18
°19
Ċ20
Ĉ21
Í22
Î23
?24
ñ25
˙26
27"
trackable_list_wrapper

+0
,1
32
43
G4
H5
O6
P7
c8
d9
k10
l11
12
13
14
15
§16
¨17
Ż18
°19
Ċ20
Ĉ21
Í22
Î23
?24
ñ25
˙26
27"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
)_default_save_signature
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
î2ë
(__inference_model_8_layer_call_fn_102524
(__inference_model_8_layer_call_fn_103351
(__inference_model_8_layer_call_fn_103413
(__inference_model_8_layer_call_fn_103099À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ú2×
C__inference_model_8_layer_call_and_return_conditional_losses_103536
C__inference_model_8_layer_call_and_return_conditional_losses_103701
C__inference_model_8_layer_call_and_return_conditional_losses_103191
C__inference_model_8_layer_call_and_return_conditional_losses_103283À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
ċBâ
!__inference__wrapped_model_102046conv2d_34_inputconv2d_38_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
-
serving_default"
signature_map
*:( 2conv2d_34/kernel
: 2conv2d_34/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_34_layer_call_fn_103774˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_34_layer_call_and_return_conditional_losses_103785˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:( 2conv2d_38/kernel
: 2conv2d_38/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_38_layer_call_fn_103794˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_38_layer_call_and_return_conditional_losses_103805˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_32_layer_call_fn_103810˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_103815˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ħnon_trainable_variables
˘layers
£metrics
 ¤layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_36_layer_call_fn_103820˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_103825˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:( 2conv2d_35/kernel
:2conv2d_35/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ĥnon_trainable_variables
§layers
¨metrics
 İlayer_regularization_losses
Şlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_35_layer_call_fn_103834˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_35_layer_call_and_return_conditional_losses_103845˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:( 2conv2d_39/kernel
:2conv2d_39/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ğnon_trainable_variables
Ĵlayers
­metrics
 ?layer_regularization_losses
Żlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_39_layer_call_fn_103854˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_39_layer_call_and_return_conditional_losses_103865˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
°non_trainable_variables
ħlayers
²metrics
 ³layer_regularization_losses
´layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_33_layer_call_fn_103870˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_103875˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
µnon_trainable_variables
ĥlayers
·metrics
 ¸layer_regularization_losses
ılayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_37_layer_call_fn_103880˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_103885˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:(2conv2d_36/kernel
:2conv2d_36/bias
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
şnon_trainable_variables
ğlayers
ĵmetrics
 ½layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_36_layer_call_fn_103894˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_36_layer_call_and_return_conditional_losses_103905˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:(2conv2d_40/kernel
:2conv2d_40/bias
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
żnon_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_40_layer_call_fn_103914˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_40_layer_call_and_return_conditional_losses_103925˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Änon_trainable_variables
Ċlayers
Ĉmetrics
 Çlayer_regularization_losses
Èlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_34_layer_call_fn_103930˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_103935˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_38_layer_call_fn_103940˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_103945˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:(2conv2d_37/kernel
:2conv2d_37/bias
/
0
1"
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Înon_trainable_variables
Ïlayers
?metrics
 Ñlayer_regularization_losses
Òlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_37_layer_call_fn_103954˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_37_layer_call_and_return_conditional_losses_103965˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
*:(2conv2d_41/kernel
:2conv2d_41/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ónon_trainable_variables
Ôlayers
Ġmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv2d_41_layer_call_fn_103974˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_conv2d_41_layer_call_and_return_conditional_losses_103985˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ĝnon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_35_layer_call_fn_103990˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_103995˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ŭnon_trainable_variables
Ŝlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Û2Ĝ
1__inference_max_pooling2d_39_layer_call_fn_104000˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ö2ó
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_104005˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ânon_trainable_variables
?layers
ämetrics
 ċlayer_regularization_losses
ĉlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_flatten_8_layer_call_fn_104010˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_flatten_8_layer_call_and_return_conditional_losses_104016˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
Ħ	variables
˘trainable_variables
£regularization_losses
?__call__
+Ĥ&call_and_return_all_conditional_losses
'Ĥ"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_flatten_9_layer_call_fn_104021˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ï2ì
E__inference_flatten_9_layer_call_and_return_conditional_losses_104027˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
": 	Ä 2dense_26/kernel
: 2dense_26/bias
0
§0
¨1"
trackable_list_wrapper
0
§0
¨1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
?layer_metrics
İ	variables
Ştrainable_variables
Ğregularization_losses
­__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_26_layer_call_fn_104036˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_26_layer_call_and_return_conditional_losses_104047˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
!:0 2dense_28/kernel
: 2dense_28/bias
0
Ż0
°1"
trackable_list_wrapper
0
Ż0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
ġlayer_metrics
ħ	variables
²trainable_variables
³regularization_losses
µ__call__
+ĥ&call_and_return_all_conditional_losses
'ĥ"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_28_layer_call_fn_104056˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_28_layer_call_and_return_conditional_losses_104067˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
önon_trainable_variables
÷layers
ĝmetrics
 ùlayer_regularization_losses
úlayer_metrics
·	variables
¸trainable_variables
ıregularization_losses
ĵ__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_26_layer_call_fn_104072
+__inference_dropout_26_layer_call_fn_104077´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_26_layer_call_and_return_conditional_losses_104082
F__inference_dropout_26_layer_call_and_return_conditional_losses_104094´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ûnon_trainable_variables
ülayers
ŭmetrics
 ŝlayer_regularization_losses
˙layer_metrics
?	variables
żtrainable_variables
Àregularization_losses
?__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_28_layer_call_fn_104099
+__inference_dropout_28_layer_call_fn_104104´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_28_layer_call_and_return_conditional_losses_104109
F__inference_dropout_28_layer_call_and_return_conditional_losses_104121´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
!: 2dense_27/kernel
:2dense_27/bias
0
Ċ0
Ĉ1"
trackable_list_wrapper
0
Ċ0
Ĉ1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ç	variables
Ètrainable_variables
Éregularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_27_layer_call_fn_104130˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_27_layer_call_and_return_conditional_losses_104141˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
!: 2dense_29/kernel
:2dense_29/bias
0
Í0
Î1"
trackable_list_wrapper
0
Í0
Î1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ï	variables
?trainable_variables
Ñregularization_losses
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_29_layer_call_fn_104150˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_29_layer_call_and_return_conditional_losses_104161˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ġ	variables
Ötrainable_variables
×regularization_losses
Ú__call__
+Û&call_and_return_all_conditional_losses
'Û"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_27_layer_call_fn_104166
+__inference_dropout_27_layer_call_fn_104171´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_27_layer_call_and_return_conditional_losses_104176
F__inference_dropout_27_layer_call_and_return_conditional_losses_104188´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ü	variables
Ŭtrainable_variables
Ŝregularization_losses
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_29_layer_call_fn_104193
+__inference_dropout_29_layer_call_fn_104198´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_29_layer_call_and_return_conditional_losses_104203
F__inference_dropout_29_layer_call_and_return_conditional_losses_104215´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
ätrainable_variables
ċregularization_losses
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
Ĝ2Ġ
.__inference_concatenate_8_layer_call_fn_104221˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ó2?
I__inference_concatenate_8_layer_call_and_return_conditional_losses_104228˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_36_layer_call_fn_104233
+__inference_dropout_36_layer_call_fn_104238´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_36_layer_call_and_return_conditional_losses_104243
F__inference_dropout_36_layer_call_and_return_conditional_losses_104255´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
!: 2dense_36/kernel
:2dense_36/bias
0
?0
ñ1"
trackable_list_wrapper
0
?0
ñ1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 Ħlayer_regularization_losses
˘layer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_36_layer_call_fn_104264˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_36_layer_call_and_return_conditional_losses_104275˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
£non_trainable_variables
¤layers
?metrics
 Ĥlayer_regularization_losses
§layer_metrics
ĝ	variables
ùtrainable_variables
úregularization_losses
ŭ__call__
+ŝ&call_and_return_all_conditional_losses
'ŝ"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_37_layer_call_fn_104280
+__inference_dropout_37_layer_call_fn_104285´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ê2Ç
F__inference_dropout_37_layer_call_and_return_conditional_losses_104290
F__inference_dropout_37_layer_call_and_return_conditional_losses_104302´
Ğ²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
!:2dense_37/kernel
:2dense_37/bias
0
˙0
1"
trackable_list_wrapper
0
˙0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
İlayers
Şmetrics
 Ğlayer_regularization_losses
Ĵlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2?
)__inference_dense_37_layer_call_fn_104311˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_37_layer_call_and_return_conditional_losses_104322˘
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32"
trackable_list_wrapper
0
­0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
âBß
$__inference_signature_wrapper_103765conv2d_34_inputconv2d_38_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Żtotal

°count
ħ	variables
²	keras_api"
_tf_keras_metric
c

³total

´count
µ
_fn_kwargs
ĥ	variables
·	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Ż0
°1"
trackable_list_wrapper
.
ħ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
³0
´1"
trackable_list_wrapper
.
ĥ	variables"
_generic_user_object
/:- 2Adam/conv2d_34/kernel/m
!: 2Adam/conv2d_34/bias/m
/:- 2Adam/conv2d_38/kernel/m
!: 2Adam/conv2d_38/bias/m
/:- 2Adam/conv2d_35/kernel/m
!:2Adam/conv2d_35/bias/m
/:- 2Adam/conv2d_39/kernel/m
!:2Adam/conv2d_39/bias/m
/:-2Adam/conv2d_36/kernel/m
!:2Adam/conv2d_36/bias/m
/:-2Adam/conv2d_40/kernel/m
!:2Adam/conv2d_40/bias/m
/:-2Adam/conv2d_37/kernel/m
!:2Adam/conv2d_37/bias/m
/:-2Adam/conv2d_41/kernel/m
!:2Adam/conv2d_41/bias/m
':%	Ä 2Adam/dense_26/kernel/m
 : 2Adam/dense_26/bias/m
&:$0 2Adam/dense_28/kernel/m
 : 2Adam/dense_28/bias/m
&:$ 2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
&:$ 2Adam/dense_29/kernel/m
 :2Adam/dense_29/bias/m
&:$ 2Adam/dense_36/kernel/m
 :2Adam/dense_36/bias/m
&:$2Adam/dense_37/kernel/m
 :2Adam/dense_37/bias/m
/:- 2Adam/conv2d_34/kernel/v
!: 2Adam/conv2d_34/bias/v
/:- 2Adam/conv2d_38/kernel/v
!: 2Adam/conv2d_38/bias/v
/:- 2Adam/conv2d_35/kernel/v
!:2Adam/conv2d_35/bias/v
/:- 2Adam/conv2d_39/kernel/v
!:2Adam/conv2d_39/bias/v
/:-2Adam/conv2d_36/kernel/v
!:2Adam/conv2d_36/bias/v
/:-2Adam/conv2d_40/kernel/v
!:2Adam/conv2d_40/bias/v
/:-2Adam/conv2d_37/kernel/v
!:2Adam/conv2d_37/bias/v
/:-2Adam/conv2d_41/kernel/v
!:2Adam/conv2d_41/bias/v
':%	Ä 2Adam/dense_26/kernel/v
 : 2Adam/dense_26/bias/v
&:$0 2Adam/dense_28/kernel/v
 : 2Adam/dense_28/bias/v
&:$ 2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
&:$ 2Adam/dense_29/kernel/v
 :2Adam/dense_29/bias/v
&:$ 2Adam/dense_36/kernel/v
 :2Adam/dense_36/bias/v
&:$2Adam/dense_37/kernel/v
 :2Adam/dense_37/bias/v
!__inference__wrapped_model_102046à+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙|˘y
r˘o
mj
30
conv2d_34_input˙˙˙˙˙˙˙˙˙
30
conv2d_38_input˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
dense_37"
dense_37˙˙˙˙˙˙˙˙˙Ñ
I__inference_concatenate_8_layer_call_and_return_conditional_losses_104228Z˘W
P˘M
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 ¨
.__inference_concatenate_8_layer_call_fn_104221vZ˘W
P˘M
KH
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙ ı
E__inference_conv2d_34_layer_call_and_return_conditional_losses_103785p+,9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "/˘,
%"
0˙˙˙˙˙˙˙˙˙÷ù 
 
*__inference_conv2d_34_layer_call_fn_103774c+,9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ""˙˙˙˙˙˙˙˙˙÷ù ·
E__inference_conv2d_35_layer_call_and_return_conditional_losses_103845nGH8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙ŭ> 
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙÷8
 
*__inference_conv2d_35_layer_call_fn_103834aGH8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙ŭ> 
Ş "!˙˙˙˙˙˙˙˙˙÷8µ
E__inference_conv2d_36_layer_call_and_return_conditional_losses_103905lcd7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙{
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙y
 
*__inference_conv2d_36_layer_call_fn_103894_cd7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙{
Ş " ˙˙˙˙˙˙˙˙˙yĥ
E__inference_conv2d_37_layer_call_and_return_conditional_losses_103965m7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙<
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙:
 
*__inference_conv2d_37_layer_call_fn_103954`7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙<
Ş " ˙˙˙˙˙˙˙˙˙:¸
E__inference_conv2d_38_layer_call_and_return_conditional_losses_103805o349˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ".˘+
$!
0˙˙˙˙˙˙˙˙˙~ 
 
*__inference_conv2d_38_layer_call_fn_103794b349˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "!˙˙˙˙˙˙˙˙˙~ µ
E__inference_conv2d_39_layer_call_and_return_conditional_losses_103865lOP7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@ 
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙>
 
*__inference_conv2d_39_layer_call_fn_103854_OP7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙@ 
Ş " ˙˙˙˙˙˙˙˙˙>µ
E__inference_conv2d_40_layer_call_and_return_conditional_losses_103925lkl7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙
 
*__inference_conv2d_40_layer_call_fn_103914_kl7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş " ˙˙˙˙˙˙˙˙˙·
E__inference_conv2d_41_layer_call_and_return_conditional_losses_103985n7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
0˙˙˙˙˙˙˙˙˙
 
*__inference_conv2d_41_layer_call_fn_103974a7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş " ˙˙˙˙˙˙˙˙˙§
D__inference_dense_26_layer_call_and_return_conditional_losses_104047_§¨0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙Ä
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 
)__inference_dense_26_layer_call_fn_104036R§¨0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙Ä
Ş "˙˙˙˙˙˙˙˙˙ Ĥ
D__inference_dense_27_layer_call_and_return_conditional_losses_104141^ĊĈ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
)__inference_dense_27_layer_call_fn_104130QĊĈ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "˙˙˙˙˙˙˙˙˙Ĥ
D__inference_dense_28_layer_call_and_return_conditional_losses_104067^Ż°/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙0
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 ~
)__inference_dense_28_layer_call_fn_104056QŻ°/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙0
Ş "˙˙˙˙˙˙˙˙˙ Ĥ
D__inference_dense_29_layer_call_and_return_conditional_losses_104161^ÍÎ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
)__inference_dense_29_layer_call_fn_104150QÍÎ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "˙˙˙˙˙˙˙˙˙Ĥ
D__inference_dense_36_layer_call_and_return_conditional_losses_104275^?ñ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
)__inference_dense_36_layer_call_fn_104264Q?ñ/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙ 
Ş "˙˙˙˙˙˙˙˙˙Ĥ
D__inference_dense_37_layer_call_and_return_conditional_losses_104322^˙/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
)__inference_dense_37_layer_call_fn_104311Q˙/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ĥ
F__inference_dropout_26_layer_call_and_return_conditional_losses_104082\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 Ĥ
F__inference_dropout_26_layer_call_and_return_conditional_losses_104094\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 ~
+__inference_dropout_26_layer_call_fn_104072O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "˙˙˙˙˙˙˙˙˙ ~
+__inference_dropout_26_layer_call_fn_104077O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "˙˙˙˙˙˙˙˙˙ Ĥ
F__inference_dropout_27_layer_call_and_return_conditional_losses_104176\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĥ
F__inference_dropout_27_layer_call_and_return_conditional_losses_104188\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
+__inference_dropout_27_layer_call_fn_104166O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙~
+__inference_dropout_27_layer_call_fn_104171O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙Ĥ
F__inference_dropout_28_layer_call_and_return_conditional_losses_104109\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 Ĥ
F__inference_dropout_28_layer_call_and_return_conditional_losses_104121\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 ~
+__inference_dropout_28_layer_call_fn_104099O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "˙˙˙˙˙˙˙˙˙ ~
+__inference_dropout_28_layer_call_fn_104104O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "˙˙˙˙˙˙˙˙˙ Ĥ
F__inference_dropout_29_layer_call_and_return_conditional_losses_104203\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĥ
F__inference_dropout_29_layer_call_and_return_conditional_losses_104215\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
+__inference_dropout_29_layer_call_fn_104193O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙~
+__inference_dropout_29_layer_call_fn_104198O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙Ĥ
F__inference_dropout_36_layer_call_and_return_conditional_losses_104243\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 Ĥ
F__inference_dropout_36_layer_call_and_return_conditional_losses_104255\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙ 
 ~
+__inference_dropout_36_layer_call_fn_104233O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p 
Ş "˙˙˙˙˙˙˙˙˙ ~
+__inference_dropout_36_layer_call_fn_104238O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙ 
p
Ş "˙˙˙˙˙˙˙˙˙ Ĥ
F__inference_dropout_37_layer_call_and_return_conditional_losses_104290\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ĥ
F__inference_dropout_37_layer_call_and_return_conditional_losses_104302\3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ~
+__inference_dropout_37_layer_call_fn_104280O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙~
+__inference_dropout_37_layer_call_fn_104285O3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙Ş
E__inference_flatten_8_layer_call_and_return_conditional_losses_104016a7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙Ä
 
*__inference_flatten_8_layer_call_fn_104010T7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Äİ
E__inference_flatten_9_layer_call_and_return_conditional_losses_104027`7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙0
 
*__inference_flatten_9_layer_call_fn_104021S7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙0ï
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_103815R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_32_layer_call_fn_103810R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_103875R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_33_layer_call_fn_103870R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_103935R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_34_layer_call_fn_103930R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_103995R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_35_layer_call_fn_103990R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_103825R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_36_layer_call_fn_103820R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_103885R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_37_layer_call_fn_103880R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_103945R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_38_layer_call_fn_103940R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ï
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_104005R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "H˘E
>;
04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ç
1__inference_max_pooling2d_39_layer_call_fn_104000R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş ";84˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙¤
C__inference_model_8_layer_call_and_return_conditional_losses_103191Ü+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙˘
z˘w
mj
30
conv2d_34_input˙˙˙˙˙˙˙˙˙
30
conv2d_38_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ¤
C__inference_model_8_layer_call_and_return_conditional_losses_103283Ü+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙˘
z˘w
mj
30
conv2d_34_input˙˙˙˙˙˙˙˙˙
30
conv2d_38_input˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
C__inference_model_8_layer_call_and_return_conditional_losses_103536Ì+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙v˘s
l˘i
_\
,)
inputs/0˙˙˙˙˙˙˙˙˙
,)
inputs/1˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
C__inference_model_8_layer_call_and_return_conditional_losses_103701Ì+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙v˘s
l˘i
_\
,)
inputs/0˙˙˙˙˙˙˙˙˙
,)
inputs/1˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ü
(__inference_model_8_layer_call_fn_102524Ï+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙˘
z˘w
mj
30
conv2d_34_input˙˙˙˙˙˙˙˙˙
30
conv2d_38_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙ü
(__inference_model_8_layer_call_fn_103099Ï+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙˘
z˘w
mj
30
conv2d_34_input˙˙˙˙˙˙˙˙˙
30
conv2d_38_input˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ì
(__inference_model_8_layer_call_fn_103351ż+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙v˘s
l˘i
_\
,)
inputs/0˙˙˙˙˙˙˙˙˙
,)
inputs/1˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙ì
(__inference_model_8_layer_call_fn_103413ż+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙v˘s
l˘i
_\
,)
inputs/0˙˙˙˙˙˙˙˙˙
,)
inputs/1˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙?
$__inference_signature_wrapper_103765+34+,OPGHklcdŻ°§¨ÍÎĊĈ?ñ˙ ˘
˘ 
Ş
F
conv2d_34_input30
conv2d_34_input˙˙˙˙˙˙˙˙˙
F
conv2d_38_input30
conv2d_38_input˙˙˙˙˙˙˙˙˙"3Ş0
.
dense_37"
dense_37˙˙˙˙˙˙˙˙˙