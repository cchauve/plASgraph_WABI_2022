²
©ú
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
0
Sigmoid
x"T
y"T"
Ttype:

2
¹
SparseTensorDenseMatMul
	a_indices"Tindices
a_values"T
a_shape	
b"T
product"T"	
Ttype"
Tindicestype0	:
2	"
	adjoint_abool( "
	adjoint_bbool( 
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¿±

plasgraph/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameplasgraph/dense/kernel

*plasgraph/dense/kernel/Read/ReadVariableOpReadVariableOpplasgraph/dense/kernel*
_output_shapes

: *
dtype0

plasgraph/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameplasgraph/dense/bias
y
(plasgraph/dense/bias/Read/ReadVariableOpReadVariableOpplasgraph/dense/bias*
_output_shapes
: *
dtype0

plasgraph/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameplasgraph/dense_1/kernel

,plasgraph/dense_1/kernel/Read/ReadVariableOpReadVariableOpplasgraph/dense_1/kernel*
_output_shapes

: *
dtype0

plasgraph/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameplasgraph/dense_1/bias
}
*plasgraph/dense_1/bias/Read/ReadVariableOpReadVariableOpplasgraph/dense_1/bias*
_output_shapes
: *
dtype0

plasgraph/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *)
shared_nameplasgraph/dense_2/kernel

,plasgraph/dense_2/kernel/Read/ReadVariableOpReadVariableOpplasgraph/dense_2/kernel*
_output_shapes

:@ *
dtype0

plasgraph/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameplasgraph/dense_2/bias
}
*plasgraph/dense_2/bias/Read/ReadVariableOpReadVariableOpplasgraph/dense_2/bias*
_output_shapes
: *
dtype0

plasgraph/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameplasgraph/dense_3/kernel

,plasgraph/dense_3/kernel/Read/ReadVariableOpReadVariableOpplasgraph/dense_3/kernel*
_output_shapes

: *
dtype0

plasgraph/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameplasgraph/dense_3/bias
}
*plasgraph/dense_3/bias/Read/ReadVariableOpReadVariableOpplasgraph/dense_3/bias*
_output_shapes
:*
dtype0

plasgraph/gcn_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ **
shared_nameplasgraph/gcn_conv/kernel

-plasgraph/gcn_conv/kernel/Read/ReadVariableOpReadVariableOpplasgraph/gcn_conv/kernel*
_output_shapes

:@ *
dtype0

plasgraph/gcn_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameplasgraph/gcn_conv/bias

+plasgraph/gcn_conv/bias/Read/ReadVariableOpReadVariableOpplasgraph/gcn_conv/bias*
_output_shapes
: *
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

Adam/plasgraph/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameAdam/plasgraph/dense/kernel/m

1Adam/plasgraph/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense/kernel/m*
_output_shapes

: *
dtype0

Adam/plasgraph/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/plasgraph/dense/bias/m

/Adam/plasgraph/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense/bias/m*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!Adam/plasgraph/dense_1/kernel/m

3Adam/plasgraph/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_1/kernel/m*
_output_shapes

: *
dtype0

Adam/plasgraph/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/plasgraph/dense_1/bias/m

1Adam/plasgraph/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_1/bias/m*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *0
shared_name!Adam/plasgraph/dense_2/kernel/m

3Adam/plasgraph/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_2/kernel/m*
_output_shapes

:@ *
dtype0

Adam/plasgraph/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/plasgraph/dense_2/bias/m

1Adam/plasgraph/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_2/bias/m*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!Adam/plasgraph/dense_3/kernel/m

3Adam/plasgraph/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_3/kernel/m*
_output_shapes

: *
dtype0

Adam/plasgraph/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/plasgraph/dense_3/bias/m

1Adam/plasgraph/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_3/bias/m*
_output_shapes
:*
dtype0

 Adam/plasgraph/gcn_conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *1
shared_name" Adam/plasgraph/gcn_conv/kernel/m

4Adam/plasgraph/gcn_conv/kernel/m/Read/ReadVariableOpReadVariableOp Adam/plasgraph/gcn_conv/kernel/m*
_output_shapes

:@ *
dtype0

Adam/plasgraph/gcn_conv/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/plasgraph/gcn_conv/bias/m

2Adam/plasgraph/gcn_conv/bias/m/Read/ReadVariableOpReadVariableOpAdam/plasgraph/gcn_conv/bias/m*
_output_shapes
: *
dtype0

Adam/plasgraph/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_nameAdam/plasgraph/dense/kernel/v

1Adam/plasgraph/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense/kernel/v*
_output_shapes

: *
dtype0

Adam/plasgraph/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/plasgraph/dense/bias/v

/Adam/plasgraph/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense/bias/v*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!Adam/plasgraph/dense_1/kernel/v

3Adam/plasgraph/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_1/kernel/v*
_output_shapes

: *
dtype0

Adam/plasgraph/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/plasgraph/dense_1/bias/v

1Adam/plasgraph/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_1/bias/v*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *0
shared_name!Adam/plasgraph/dense_2/kernel/v

3Adam/plasgraph/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_2/kernel/v*
_output_shapes

:@ *
dtype0

Adam/plasgraph/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/plasgraph/dense_2/bias/v

1Adam/plasgraph/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_2/bias/v*
_output_shapes
: *
dtype0

Adam/plasgraph/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!Adam/plasgraph/dense_3/kernel/v

3Adam/plasgraph/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_3/kernel/v*
_output_shapes

: *
dtype0

Adam/plasgraph/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/plasgraph/dense_3/bias/v

1Adam/plasgraph/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/dense_3/bias/v*
_output_shapes
:*
dtype0

 Adam/plasgraph/gcn_conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *1
shared_name" Adam/plasgraph/gcn_conv/kernel/v

4Adam/plasgraph/gcn_conv/kernel/v/Read/ReadVariableOpReadVariableOp Adam/plasgraph/gcn_conv/kernel/v*
_output_shapes

:@ *
dtype0

Adam/plasgraph/gcn_conv/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/plasgraph/gcn_conv/bias/v

2Adam/plasgraph/gcn_conv/bias/v/Read/ReadVariableOpReadVariableOpAdam/plasgraph/gcn_conv/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
­b
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*èa
valueÞaBÛa BÔa
ÿ
_dropout_layer_0
_dropout_layer_1
_dropout_layer_2
_dropout_layer_3
_dropout_layer_4
_dropout_layer_5
_dropout_layer_6
_dropout_layer_7
	_dropout_layer_8

fully_connected_1
fully_connected_2
fully_connected_3
fully_connected_4
_gcn_layer1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
(
	keras_api
_random_generator* 
¥
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
* &call_and_return_all_conditional_losses* 
¥
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%_random_generator
&__call__
*'&call_and_return_all_conditional_losses* 
¥
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,_random_generator
-__call__
*.&call_and_return_all_conditional_losses* 
¥
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses* 
¥
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses* 
¥
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses* 
¥
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H_random_generator
I__call__
*J&call_and_return_all_conditional_losses* 
¥
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses* 
¦

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
¦

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
¦

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses*
¦

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses*
·
rkwargs_keys

skernel
tbias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses*

{iter

|beta_1

}beta_2
	~decay
learning_rateRmÍSmÎZmÏ[mÐbmÑcmÒjmÓkmÔsmÕtmÖRv×SvØZvÙ[vÚbvÛcvÜjvÝkvÞsvßtvà*
J
R0
S1
Z2
[3
b4
c5
j6
k7
s8
t9*
J
R0
S1
Z2
[3
b4
c5
j6
k7
s8
t9*


0* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
* 
* 
* 
c]
VARIABLE_VALUEplasgraph/dense/kernel3fully_connected_1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEplasgraph/dense/bias1fully_connected_1/bias/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
e_
VARIABLE_VALUEplasgraph/dense_1/kernel3fully_connected_2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEplasgraph/dense_1/bias1fully_connected_2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

Z0
[1*
* 

´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
e_
VARIABLE_VALUEplasgraph/dense_2/kernel3fully_connected_3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEplasgraph/dense_2/bias1fully_connected_3/bias/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1*

b0
c1*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
e_
VARIABLE_VALUEplasgraph/dense_3/kernel3fully_connected_4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEplasgraph/dense_3/bias1fully_connected_4/bias/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*

j0
k1*
* 

¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
* 
`Z
VARIABLE_VALUEplasgraph/gcn_conv/kernel-_gcn_layer1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEplasgraph/gcn_conv/bias+_gcn_layer1/bias/.ATTRIBUTES/VARIABLE_VALUE*

s0
t1*

s0
t1*


0* 

Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
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
* 
j
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
13*

È0*
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


0* 
* 
<

Étotal

Êcount
Ë	variables
Ì	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

É0
Ê1*

Ë	variables*

VARIABLE_VALUEAdam/plasgraph/dense/kernel/mOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/plasgraph/dense/bias/mMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_1/kernel/mOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_1/bias/mMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_2/kernel/mOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_2/bias/mMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_3/kernel/mOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_3/bias/mMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE Adam/plasgraph/gcn_conv/kernel/mI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/plasgraph/gcn_conv/bias/mG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense/kernel/vOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/plasgraph/dense/bias/vMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_1/kernel/vOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_1/bias/vMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_2/kernel/vOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_2/bias/vMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/plasgraph/dense_3/kernel/vOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/plasgraph/dense_3/bias/vMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE Adam/plasgraph/gcn_conv/kernel/vI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/plasgraph/gcn_conv/bias/vG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
serving_default_args_0Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
{
serving_default_args_0_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
s
serving_default_args_0_2Placeholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:

StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3plasgraph/dense/kernelplasgraph/dense/biasplasgraph/dense_1/kernelplasgraph/dense_1/biasplasgraph/gcn_conv/kernelplasgraph/gcn_conv/biasplasgraph/dense_2/kernelplasgraph/dense_2/biasplasgraph/dense_3/kernelplasgraph/dense_3/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_131481
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
z
StaticRegexFullMatchStaticRegexFullMatchsaver_filename"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_1Const_2"/device:CPU:**
T0*
_output_shapes
: 
`

StringJoin
StringJoinsaver_filenameSelect"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
ÿ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¨
valueB&B3fully_connected_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_1/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_2/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_2/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_3/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_3/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_4/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_4/bias/.ATTRIBUTES/VARIABLE_VALUEB-_gcn_layer1/kernel/.ATTRIBUTES/VARIABLE_VALUEB+_gcn_layer1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
¹
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Æ
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices*plasgraph/dense/kernel/Read/ReadVariableOp(plasgraph/dense/bias/Read/ReadVariableOp,plasgraph/dense_1/kernel/Read/ReadVariableOp*plasgraph/dense_1/bias/Read/ReadVariableOp,plasgraph/dense_2/kernel/Read/ReadVariableOp*plasgraph/dense_2/bias/Read/ReadVariableOp,plasgraph/dense_3/kernel/Read/ReadVariableOp*plasgraph/dense_3/bias/Read/ReadVariableOp-plasgraph/gcn_conv/kernel/Read/ReadVariableOp+plasgraph/gcn_conv/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1Adam/plasgraph/dense/kernel/m/Read/ReadVariableOp/Adam/plasgraph/dense/bias/m/Read/ReadVariableOp3Adam/plasgraph/dense_1/kernel/m/Read/ReadVariableOp1Adam/plasgraph/dense_1/bias/m/Read/ReadVariableOp3Adam/plasgraph/dense_2/kernel/m/Read/ReadVariableOp1Adam/plasgraph/dense_2/bias/m/Read/ReadVariableOp3Adam/plasgraph/dense_3/kernel/m/Read/ReadVariableOp1Adam/plasgraph/dense_3/bias/m/Read/ReadVariableOp4Adam/plasgraph/gcn_conv/kernel/m/Read/ReadVariableOp2Adam/plasgraph/gcn_conv/bias/m/Read/ReadVariableOp1Adam/plasgraph/dense/kernel/v/Read/ReadVariableOp/Adam/plasgraph/dense/bias/v/Read/ReadVariableOp3Adam/plasgraph/dense_1/kernel/v/Read/ReadVariableOp1Adam/plasgraph/dense_1/bias/v/Read/ReadVariableOp3Adam/plasgraph/dense_2/kernel/v/Read/ReadVariableOp1Adam/plasgraph/dense_2/bias/v/Read/ReadVariableOp3Adam/plasgraph/dense_3/kernel/v/Read/ReadVariableOp1Adam/plasgraph/dense_3/bias/v/Read/ReadVariableOp4Adam/plasgraph/gcn_conv/kernel/v/Read/ReadVariableOp2Adam/plasgraph/gcn_conv/bias/v/Read/ReadVariableOpConst"/device:CPU:0*4
dtypes*
(2&	

&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
o
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixessaver_filename"/device:CPU:0
i
IdentityIdentitysaver_filename^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*¨
valueB&B3fully_connected_1/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_1/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_2/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_2/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_3/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_3/bias/.ATTRIBUTES/VARIABLE_VALUEB3fully_connected_4/kernel/.ATTRIBUTES/VARIABLE_VALUEB1fully_connected_4/bias/.ATTRIBUTES/VARIABLE_VALUEB-_gcn_layer1/kernel/.ATTRIBUTES/VARIABLE_VALUEB+_gcn_layer1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBOfully_connected_4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMfully_connected_4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBI_gcn_layer1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBG_gcn_layer1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
¼
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ð
	RestoreV2	RestoreV2saver_filenameRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	
S

Identity_1Identity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
d
AssignVariableOpAssignVariableOpplasgraph/dense/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
d
AssignVariableOp_1AssignVariableOpplasgraph/dense/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_2AssignVariableOpplasgraph/dense_1/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_3AssignVariableOpplasgraph/dense_1/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_4AssignVariableOpplasgraph/dense_2/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_5AssignVariableOpplasgraph/dense_2/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_6AssignVariableOpplasgraph/dense_3/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_7AssignVariableOpplasgraph/dense_3/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_8AssignVariableOpplasgraph/gcn_conv/kernel
Identity_9"/device:CPU:0*
dtype0
V
Identity_10IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_9AssignVariableOpplasgraph/gcn_conv/biasIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:10"/device:CPU:0*
T0	*
_output_shapes
:
[
AssignVariableOp_10AssignVariableOp	Adam/iterIdentity_11"/device:CPU:0*
dtype0	
W
Identity_12IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_11AssignVariableOpAdam/beta_1Identity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_12AssignVariableOpAdam/beta_2Identity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_13AssignVariableOp
Adam/decayIdentity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
d
AssignVariableOp_14AssignVariableOpAdam/learning_rateIdentity_15"/device:CPU:0*
dtype0
W
Identity_16IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_15AssignVariableOptotalIdentity_16"/device:CPU:0*
dtype0
W
Identity_17IdentityRestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_16AssignVariableOpcountIdentity_17"/device:CPU:0*
dtype0
W
Identity_18IdentityRestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_17AssignVariableOpAdam/plasgraph/dense/kernel/mIdentity_18"/device:CPU:0*
dtype0
W
Identity_19IdentityRestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_18AssignVariableOpAdam/plasgraph/dense/bias/mIdentity_19"/device:CPU:0*
dtype0
W
Identity_20IdentityRestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_19AssignVariableOpAdam/plasgraph/dense_1/kernel/mIdentity_20"/device:CPU:0*
dtype0
W
Identity_21IdentityRestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_20AssignVariableOpAdam/plasgraph/dense_1/bias/mIdentity_21"/device:CPU:0*
dtype0
W
Identity_22IdentityRestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_21AssignVariableOpAdam/plasgraph/dense_2/kernel/mIdentity_22"/device:CPU:0*
dtype0
W
Identity_23IdentityRestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_22AssignVariableOpAdam/plasgraph/dense_2/bias/mIdentity_23"/device:CPU:0*
dtype0
W
Identity_24IdentityRestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_23AssignVariableOpAdam/plasgraph/dense_3/kernel/mIdentity_24"/device:CPU:0*
dtype0
W
Identity_25IdentityRestoreV2:24"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_24AssignVariableOpAdam/plasgraph/dense_3/bias/mIdentity_25"/device:CPU:0*
dtype0
W
Identity_26IdentityRestoreV2:25"/device:CPU:0*
T0*
_output_shapes
:
r
AssignVariableOp_25AssignVariableOp Adam/plasgraph/gcn_conv/kernel/mIdentity_26"/device:CPU:0*
dtype0
W
Identity_27IdentityRestoreV2:26"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_26AssignVariableOpAdam/plasgraph/gcn_conv/bias/mIdentity_27"/device:CPU:0*
dtype0
W
Identity_28IdentityRestoreV2:27"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_27AssignVariableOpAdam/plasgraph/dense/kernel/vIdentity_28"/device:CPU:0*
dtype0
W
Identity_29IdentityRestoreV2:28"/device:CPU:0*
T0*
_output_shapes
:
m
AssignVariableOp_28AssignVariableOpAdam/plasgraph/dense/bias/vIdentity_29"/device:CPU:0*
dtype0
W
Identity_30IdentityRestoreV2:29"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_29AssignVariableOpAdam/plasgraph/dense_1/kernel/vIdentity_30"/device:CPU:0*
dtype0
W
Identity_31IdentityRestoreV2:30"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_30AssignVariableOpAdam/plasgraph/dense_1/bias/vIdentity_31"/device:CPU:0*
dtype0
W
Identity_32IdentityRestoreV2:31"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_31AssignVariableOpAdam/plasgraph/dense_2/kernel/vIdentity_32"/device:CPU:0*
dtype0
W
Identity_33IdentityRestoreV2:32"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_32AssignVariableOpAdam/plasgraph/dense_2/bias/vIdentity_33"/device:CPU:0*
dtype0
W
Identity_34IdentityRestoreV2:33"/device:CPU:0*
T0*
_output_shapes
:
q
AssignVariableOp_33AssignVariableOpAdam/plasgraph/dense_3/kernel/vIdentity_34"/device:CPU:0*
dtype0
W
Identity_35IdentityRestoreV2:34"/device:CPU:0*
T0*
_output_shapes
:
o
AssignVariableOp_34AssignVariableOpAdam/plasgraph/dense_3/bias/vIdentity_35"/device:CPU:0*
dtype0
W
Identity_36IdentityRestoreV2:35"/device:CPU:0*
T0*
_output_shapes
:
r
AssignVariableOp_35AssignVariableOp Adam/plasgraph/gcn_conv/kernel/vIdentity_36"/device:CPU:0*
dtype0
W
Identity_37IdentityRestoreV2:36"/device:CPU:0*
T0*
_output_shapes
:
p
AssignVariableOp_36AssignVariableOpAdam/plasgraph/gcn_conv/bias/vIdentity_37"/device:CPU:0*
dtype0

NoOp_1NoOp"/device:CPU:0

Identity_38Identitysaver_filename^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp_1"/device:CPU:0*
T0*
_output_shapes
: ¥ñ
ÿ	
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_131685

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦~

*__inference_plasgraph_layer_call_fn_131036
inputs_0

inputs	
inputs_1
inputs_2	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource: 9
'gcn_conv_matmul_readvariableop_resource:@ 6
(gcn_conv_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢gcn_conv/BiasAdd/ReadVariableOp¢!gcn_conv/BiasAdd_1/ReadVariableOp¢!gcn_conv/BiasAdd_2/ReadVariableOp¢!gcn_conv/BiasAdd_3/ReadVariableOp¢!gcn_conv/BiasAdd_4/ReadVariableOp¢!gcn_conv/BiasAdd_5/ReadVariableOp¢gcn_conv/MatMul/ReadVariableOp¢ gcn_conv/MatMul_1/ReadVariableOp¢ gcn_conv/MatMul_2/ReadVariableOp¢ gcn_conv/MatMul_3/ReadVariableOp¢ gcn_conv/MatMul_4/ReadVariableOp¢ gcn_conv/MatMul_5/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0w
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_1/MatMulMatMulinputs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
concatenate/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
dropout_1/IdentityIdentityconcatenate/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gcn_conv/MatMul/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMulMatMuldropout_1/Identity:output:0&gcn_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gcn_conv/BiasAdd/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0º
gcn_conv/BiasAddBiasAddBgcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0'gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
gcn_conv/ReluRelugcn_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¶
concatenate_1/concatConcatV2dense/Relu:activations:0gcn_conv/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_2/IdentityIdentityconcatenate_1/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_1/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_1MatMuldropout_2/Identity:output:0(gcn_conv/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_1/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_1BiasAddDgcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_1Relugcn_conv/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_2/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_1:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_3/IdentityIdentityconcatenate_2/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_2/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_2MatMuldropout_3/Identity:output:0(gcn_conv/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_2:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_2/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_2BiasAddDgcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_2Relugcn_conv/BiasAdd_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_3/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_2:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_4/IdentityIdentityconcatenate_3/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_3/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_3MatMuldropout_4/Identity:output:0(gcn_conv/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_3/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_3BiasAddDgcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_3Relugcn_conv/BiasAdd_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_4/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_3:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_5/IdentityIdentityconcatenate_4/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_4/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_4MatMuldropout_5/Identity:output:0(gcn_conv/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_4/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_4BiasAddDgcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_4Relugcn_conv/BiasAdd_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_5/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_4:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_6/IdentityIdentityconcatenate_5/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_5/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_5MatMuldropout_6/Identity:output:0(gcn_conv/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_5/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_5BiasAddDgcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_5Relugcn_conv/BiasAdd_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_6/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_5:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_7/IdentityIdentityconcatenate_6/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_2/MatMulMatMuldropout_7/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
dropout_8/IdentityIdentitydense_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMuldropout_8/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^gcn_conv/BiasAdd/ReadVariableOp"^gcn_conv/BiasAdd_1/ReadVariableOp"^gcn_conv/BiasAdd_2/ReadVariableOp"^gcn_conv/BiasAdd_3/ReadVariableOp"^gcn_conv/BiasAdd_4/ReadVariableOp"^gcn_conv/BiasAdd_5/ReadVariableOp^gcn_conv/MatMul/ReadVariableOp!^gcn_conv/MatMul_1/ReadVariableOp!^gcn_conv/MatMul_2/ReadVariableOp!^gcn_conv/MatMul_3/ReadVariableOp!^gcn_conv/MatMul_4/ReadVariableOp!^gcn_conv/MatMul_5/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
gcn_conv/BiasAdd/ReadVariableOpgcn_conv/BiasAdd/ReadVariableOp2F
!gcn_conv/BiasAdd_1/ReadVariableOp!gcn_conv/BiasAdd_1/ReadVariableOp2F
!gcn_conv/BiasAdd_2/ReadVariableOp!gcn_conv/BiasAdd_2/ReadVariableOp2F
!gcn_conv/BiasAdd_3/ReadVariableOp!gcn_conv/BiasAdd_3/ReadVariableOp2F
!gcn_conv/BiasAdd_4/ReadVariableOp!gcn_conv/BiasAdd_4/ReadVariableOp2F
!gcn_conv/BiasAdd_5/ReadVariableOp!gcn_conv/BiasAdd_5/ReadVariableOp2@
gcn_conv/MatMul/ReadVariableOpgcn_conv/MatMul/ReadVariableOp2D
 gcn_conv/MatMul_1/ReadVariableOp gcn_conv/MatMul_1/ReadVariableOp2D
 gcn_conv/MatMul_2/ReadVariableOp gcn_conv/MatMul_2/ReadVariableOp2D
 gcn_conv/MatMul_3/ReadVariableOp gcn_conv/MatMul_3/ReadVariableOp2D
 gcn_conv/MatMul_4/ReadVariableOp gcn_conv/MatMul_4/ReadVariableOp2D
 gcn_conv/MatMul_5/ReadVariableOp gcn_conv/MatMul_5/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_131753

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_131583

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ô
C__inference_dense_1_layer_call_and_return_conditional_losses_131797

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_5_layer_call_fn_131634

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
§¼
¥
E__inference_plasgraph_layer_call_and_return_conditional_losses_131451
inputs_0

inputs	
inputs_1
inputs_2	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource: 9
'gcn_conv_matmul_readvariableop_resource:@ 6
(gcn_conv_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢gcn_conv/BiasAdd/ReadVariableOp¢!gcn_conv/BiasAdd_1/ReadVariableOp¢!gcn_conv/BiasAdd_2/ReadVariableOp¢!gcn_conv/BiasAdd_3/ReadVariableOp¢!gcn_conv/BiasAdd_4/ReadVariableOp¢!gcn_conv/BiasAdd_5/ReadVariableOp¢gcn_conv/MatMul/ReadVariableOp¢ gcn_conv/MatMul_1/ReadVariableOp¢ gcn_conv/MatMul_2/ReadVariableOp¢ gcn_conv/MatMul_3/ReadVariableOp¢ gcn_conv/MatMul_4/ReadVariableOp¢ gcn_conv/MatMul_5/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0w
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_1/MatMulMatMulinputs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
concatenate/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_1/dropout/MulMulconcatenate/concat:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
dropout_1/dropout/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:¬
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gcn_conv/MatMul/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMulMatMuldropout_1/dropout/Mul_1:z:0&gcn_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gcn_conv/BiasAdd/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0º
gcn_conv/BiasAddBiasAddBgcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0'gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
gcn_conv/ReluRelugcn_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¶
concatenate_1/concatConcatV2dense/Relu:activations:0gcn_conv/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_2/dropout/MulMulconcatenate_1/concat:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_2/dropout/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:¹
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_1/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_1MatMuldropout_2/dropout/Mul_1:z:0(gcn_conv/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_1/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_1BiasAddDgcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_1Relugcn_conv/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_2/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_1:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_3/dropout/MulMulconcatenate_2/concat:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_3/dropout/ShapeShapeconcatenate_2/concat:output:0*
T0*
_output_shapes
:¹
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_2/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_2MatMuldropout_3/dropout/Mul_1:z:0(gcn_conv/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_2:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_2/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_2BiasAddDgcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_2Relugcn_conv/BiasAdd_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_3/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_2:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_4/dropout/MulMulconcatenate_3/concat:output:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_4/dropout/ShapeShapeconcatenate_3/concat:output:0*
T0*
_output_shapes
:¹
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_3/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_3MatMuldropout_4/dropout/Mul_1:z:0(gcn_conv/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_3/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_3BiasAddDgcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_3Relugcn_conv/BiasAdd_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_4/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_3:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_5/dropout/MulMulconcatenate_4/concat:output:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_5/dropout/ShapeShapeconcatenate_4/concat:output:0*
T0*
_output_shapes
:¹
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_4/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_4MatMuldropout_5/dropout/Mul_1:z:0(gcn_conv/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_4/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_4BiasAddDgcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_4Relugcn_conv/BiasAdd_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_5/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_4:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_6/dropout/MulMulconcatenate_5/concat:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_6/dropout/ShapeShapeconcatenate_5/concat:output:0*
T0*
_output_shapes
:¹
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_5/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_5MatMuldropout_6/dropout/Mul_1:z:0(gcn_conv/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_5/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_5BiasAddDgcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_5Relugcn_conv/BiasAdd_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_6/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_5:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_7/dropout/MulMulconcatenate_6/concat:output:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_7/dropout/ShapeShapeconcatenate_6/concat:output:0*
T0*
_output_shapes
:¹
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_2/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_8/dropout/MulMuldense_2/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dropout_8/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:¹
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*

seed{*
seed2e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMuldropout_8/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^gcn_conv/BiasAdd/ReadVariableOp"^gcn_conv/BiasAdd_1/ReadVariableOp"^gcn_conv/BiasAdd_2/ReadVariableOp"^gcn_conv/BiasAdd_3/ReadVariableOp"^gcn_conv/BiasAdd_4/ReadVariableOp"^gcn_conv/BiasAdd_5/ReadVariableOp^gcn_conv/MatMul/ReadVariableOp!^gcn_conv/MatMul_1/ReadVariableOp!^gcn_conv/MatMul_2/ReadVariableOp!^gcn_conv/MatMul_3/ReadVariableOp!^gcn_conv/MatMul_4/ReadVariableOp!^gcn_conv/MatMul_5/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
gcn_conv/BiasAdd/ReadVariableOpgcn_conv/BiasAdd/ReadVariableOp2F
!gcn_conv/BiasAdd_1/ReadVariableOp!gcn_conv/BiasAdd_1/ReadVariableOp2F
!gcn_conv/BiasAdd_2/ReadVariableOp!gcn_conv/BiasAdd_2/ReadVariableOp2F
!gcn_conv/BiasAdd_3/ReadVariableOp!gcn_conv/BiasAdd_3/ReadVariableOp2F
!gcn_conv/BiasAdd_4/ReadVariableOp!gcn_conv/BiasAdd_4/ReadVariableOp2F
!gcn_conv/BiasAdd_5/ReadVariableOp!gcn_conv/BiasAdd_5/ReadVariableOp2@
gcn_conv/MatMul/ReadVariableOpgcn_conv/MatMul/ReadVariableOp2D
 gcn_conv/MatMul_1/ReadVariableOp gcn_conv/MatMul_1/ReadVariableOp2D
 gcn_conv/MatMul_2/ReadVariableOp gcn_conv/MatMul_2/ReadVariableOp2D
 gcn_conv/MatMul_3/ReadVariableOp gcn_conv/MatMul_3/ReadVariableOp2D
 gcn_conv/MatMul_4/ReadVariableOp gcn_conv/MatMul_4/ReadVariableOp2D
 gcn_conv/MatMul_5/ReadVariableOp gcn_conv/MatMul_5/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs

ï
!__inference__wrapped_model_129173

args_0
args_0_1	
args_0_2
args_0_3	@
.plasgraph_dense_matmul_readvariableop_resource: =
/plasgraph_dense_biasadd_readvariableop_resource: B
0plasgraph_dense_1_matmul_readvariableop_resource: ?
1plasgraph_dense_1_biasadd_readvariableop_resource: C
1plasgraph_gcn_conv_matmul_readvariableop_resource:@ @
2plasgraph_gcn_conv_biasadd_readvariableop_resource: B
0plasgraph_dense_2_matmul_readvariableop_resource:@ ?
1plasgraph_dense_2_biasadd_readvariableop_resource: B
0plasgraph_dense_3_matmul_readvariableop_resource: ?
1plasgraph_dense_3_biasadd_readvariableop_resource:
identity¢&plasgraph/dense/BiasAdd/ReadVariableOp¢%plasgraph/dense/MatMul/ReadVariableOp¢(plasgraph/dense_1/BiasAdd/ReadVariableOp¢'plasgraph/dense_1/MatMul/ReadVariableOp¢(plasgraph/dense_2/BiasAdd/ReadVariableOp¢'plasgraph/dense_2/MatMul/ReadVariableOp¢(plasgraph/dense_3/BiasAdd/ReadVariableOp¢'plasgraph/dense_3/MatMul/ReadVariableOp¢)plasgraph/gcn_conv/BiasAdd/ReadVariableOp¢+plasgraph/gcn_conv/BiasAdd_1/ReadVariableOp¢+plasgraph/gcn_conv/BiasAdd_2/ReadVariableOp¢+plasgraph/gcn_conv/BiasAdd_3/ReadVariableOp¢+plasgraph/gcn_conv/BiasAdd_4/ReadVariableOp¢+plasgraph/gcn_conv/BiasAdd_5/ReadVariableOp¢(plasgraph/gcn_conv/MatMul/ReadVariableOp¢*plasgraph/gcn_conv/MatMul_1/ReadVariableOp¢*plasgraph/gcn_conv/MatMul_2/ReadVariableOp¢*plasgraph/gcn_conv/MatMul_3/ReadVariableOp¢*plasgraph/gcn_conv/MatMul_4/ReadVariableOp¢*plasgraph/gcn_conv/MatMul_5/ReadVariableOp
%plasgraph/dense/MatMul/ReadVariableOpReadVariableOp.plasgraph_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
plasgraph/dense/MatMulMatMulargs_0-plasgraph/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&plasgraph/dense/BiasAdd/ReadVariableOpReadVariableOp/plasgraph_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
plasgraph/dense/BiasAddBiasAdd plasgraph/dense/MatMul:product:0.plasgraph/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
plasgraph/dense/ReluRelu plasgraph/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'plasgraph/dense_1/MatMul/ReadVariableOpReadVariableOp0plasgraph_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
plasgraph/dense_1/MatMulMatMulargs_0/plasgraph/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(plasgraph/dense_1/BiasAdd/ReadVariableOpReadVariableOp1plasgraph_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
plasgraph/dense_1/BiasAddBiasAdd"plasgraph/dense_1/MatMul:product:00plasgraph/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
plasgraph/dense_1/ReluRelu"plasgraph/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
!plasgraph/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ù
plasgraph/concatenate/concatConcatV2"plasgraph/dense/Relu:activations:0$plasgraph/dense_1/Relu:activations:0*plasgraph/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_1/IdentityIdentity%plasgraph/concatenate/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(plasgraph/gcn_conv/MatMul/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0®
plasgraph/gcn_conv/MatMulMatMul%plasgraph/dropout_1/Identity:output:00plasgraph/gcn_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ò
Bplasgraph/gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3#plasgraph/gcn_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)plasgraph/gcn_conv/BiasAdd/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ø
plasgraph/gcn_conv/BiasAddBiasAddLplasgraph/gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:01plasgraph/gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
plasgraph/gcn_conv/ReluRelu#plasgraph/gcn_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Þ
plasgraph/concatenate_1/concatConcatV2"plasgraph/dense/Relu:activations:0%plasgraph/gcn_conv/Relu:activations:0,plasgraph/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_2/IdentityIdentity'plasgraph/concatenate_1/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*plasgraph/gcn_conv/MatMul_1/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0²
plasgraph/gcn_conv/MatMul_1MatMul%plasgraph/dropout_2/Identity:output:02plasgraph/gcn_conv/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Dplasgraph/gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3%plasgraph/gcn_conv/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+plasgraph/gcn_conv/BiasAdd_1/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Þ
plasgraph/gcn_conv/BiasAdd_1BiasAddNplasgraph/gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:03plasgraph/gcn_conv/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
plasgraph/gcn_conv/Relu_1Relu%plasgraph/gcn_conv/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :à
plasgraph/concatenate_2/concatConcatV2"plasgraph/dense/Relu:activations:0'plasgraph/gcn_conv/Relu_1:activations:0,plasgraph/concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_3/IdentityIdentity'plasgraph/concatenate_2/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*plasgraph/gcn_conv/MatMul_2/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0²
plasgraph/gcn_conv/MatMul_2MatMul%plasgraph/dropout_3/Identity:output:02plasgraph/gcn_conv/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Dplasgraph/gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3%plasgraph/gcn_conv/MatMul_2:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+plasgraph/gcn_conv/BiasAdd_2/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Þ
plasgraph/gcn_conv/BiasAdd_2BiasAddNplasgraph/gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMul:product:03plasgraph/gcn_conv/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
plasgraph/gcn_conv/Relu_2Relu%plasgraph/gcn_conv/BiasAdd_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :à
plasgraph/concatenate_3/concatConcatV2"plasgraph/dense/Relu:activations:0'plasgraph/gcn_conv/Relu_2:activations:0,plasgraph/concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_4/IdentityIdentity'plasgraph/concatenate_3/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*plasgraph/gcn_conv/MatMul_3/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0²
plasgraph/gcn_conv/MatMul_3MatMul%plasgraph/dropout_4/Identity:output:02plasgraph/gcn_conv/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Dplasgraph/gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3%plasgraph/gcn_conv/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+plasgraph/gcn_conv/BiasAdd_3/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Þ
plasgraph/gcn_conv/BiasAdd_3BiasAddNplasgraph/gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMul:product:03plasgraph/gcn_conv/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
plasgraph/gcn_conv/Relu_3Relu%plasgraph/gcn_conv/BiasAdd_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :à
plasgraph/concatenate_4/concatConcatV2"plasgraph/dense/Relu:activations:0'plasgraph/gcn_conv/Relu_3:activations:0,plasgraph/concatenate_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_5/IdentityIdentity'plasgraph/concatenate_4/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*plasgraph/gcn_conv/MatMul_4/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0²
plasgraph/gcn_conv/MatMul_4MatMul%plasgraph/dropout_5/Identity:output:02plasgraph/gcn_conv/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Dplasgraph/gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3%plasgraph/gcn_conv/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+plasgraph/gcn_conv/BiasAdd_4/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Þ
plasgraph/gcn_conv/BiasAdd_4BiasAddNplasgraph/gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMul:product:03plasgraph/gcn_conv/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
plasgraph/gcn_conv/Relu_4Relu%plasgraph/gcn_conv/BiasAdd_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :à
plasgraph/concatenate_5/concatConcatV2"plasgraph/dense/Relu:activations:0'plasgraph/gcn_conv/Relu_4:activations:0,plasgraph/concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_6/IdentityIdentity'plasgraph/concatenate_5/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*plasgraph/gcn_conv/MatMul_5/ReadVariableOpReadVariableOp1plasgraph_gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0²
plasgraph/gcn_conv/MatMul_5MatMul%plasgraph/dropout_6/Identity:output:02plasgraph/gcn_conv/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ö
Dplasgraph/gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMulSparseTensorDenseMatMulargs_0_1args_0_2args_0_3%plasgraph/gcn_conv/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+plasgraph/gcn_conv/BiasAdd_5/ReadVariableOpReadVariableOp2plasgraph_gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Þ
plasgraph/gcn_conv/BiasAdd_5BiasAddNplasgraph/gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMul:product:03plasgraph/gcn_conv/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
plasgraph/gcn_conv/Relu_5Relu%plasgraph/gcn_conv/BiasAdd_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#plasgraph/concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :à
plasgraph/concatenate_6/concatConcatV2"plasgraph/dense/Relu:activations:0'plasgraph/gcn_conv/Relu_5:activations:0,plasgraph/concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
plasgraph/dropout_7/IdentityIdentity'plasgraph/concatenate_6/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'plasgraph/dense_2/MatMul/ReadVariableOpReadVariableOp0plasgraph_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¬
plasgraph/dense_2/MatMulMatMul%plasgraph/dropout_7/Identity:output:0/plasgraph/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(plasgraph/dense_2/BiasAdd/ReadVariableOpReadVariableOp1plasgraph_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
plasgraph/dense_2/BiasAddBiasAdd"plasgraph/dense_2/MatMul:product:00plasgraph/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
plasgraph/dense_2/ReluRelu"plasgraph/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
plasgraph/dropout_8/IdentityIdentity$plasgraph/dense_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
'plasgraph/dense_3/MatMul/ReadVariableOpReadVariableOp0plasgraph_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¬
plasgraph/dense_3/MatMulMatMul%plasgraph/dropout_8/Identity:output:0/plasgraph/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(plasgraph/dense_3/BiasAdd/ReadVariableOpReadVariableOp1plasgraph_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
plasgraph/dense_3/BiasAddBiasAdd"plasgraph/dense_3/MatMul:product:00plasgraph/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
plasgraph/dense_3/SigmoidSigmoid"plasgraph/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityplasgraph/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
NoOpNoOp'^plasgraph/dense/BiasAdd/ReadVariableOp&^plasgraph/dense/MatMul/ReadVariableOp)^plasgraph/dense_1/BiasAdd/ReadVariableOp(^plasgraph/dense_1/MatMul/ReadVariableOp)^plasgraph/dense_2/BiasAdd/ReadVariableOp(^plasgraph/dense_2/MatMul/ReadVariableOp)^plasgraph/dense_3/BiasAdd/ReadVariableOp(^plasgraph/dense_3/MatMul/ReadVariableOp*^plasgraph/gcn_conv/BiasAdd/ReadVariableOp,^plasgraph/gcn_conv/BiasAdd_1/ReadVariableOp,^plasgraph/gcn_conv/BiasAdd_2/ReadVariableOp,^plasgraph/gcn_conv/BiasAdd_3/ReadVariableOp,^plasgraph/gcn_conv/BiasAdd_4/ReadVariableOp,^plasgraph/gcn_conv/BiasAdd_5/ReadVariableOp)^plasgraph/gcn_conv/MatMul/ReadVariableOp+^plasgraph/gcn_conv/MatMul_1/ReadVariableOp+^plasgraph/gcn_conv/MatMul_2/ReadVariableOp+^plasgraph/gcn_conv/MatMul_3/ReadVariableOp+^plasgraph/gcn_conv/MatMul_4/ReadVariableOp+^plasgraph/gcn_conv/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 2P
&plasgraph/dense/BiasAdd/ReadVariableOp&plasgraph/dense/BiasAdd/ReadVariableOp2N
%plasgraph/dense/MatMul/ReadVariableOp%plasgraph/dense/MatMul/ReadVariableOp2T
(plasgraph/dense_1/BiasAdd/ReadVariableOp(plasgraph/dense_1/BiasAdd/ReadVariableOp2R
'plasgraph/dense_1/MatMul/ReadVariableOp'plasgraph/dense_1/MatMul/ReadVariableOp2T
(plasgraph/dense_2/BiasAdd/ReadVariableOp(plasgraph/dense_2/BiasAdd/ReadVariableOp2R
'plasgraph/dense_2/MatMul/ReadVariableOp'plasgraph/dense_2/MatMul/ReadVariableOp2T
(plasgraph/dense_3/BiasAdd/ReadVariableOp(plasgraph/dense_3/BiasAdd/ReadVariableOp2R
'plasgraph/dense_3/MatMul/ReadVariableOp'plasgraph/dense_3/MatMul/ReadVariableOp2V
)plasgraph/gcn_conv/BiasAdd/ReadVariableOp)plasgraph/gcn_conv/BiasAdd/ReadVariableOp2Z
+plasgraph/gcn_conv/BiasAdd_1/ReadVariableOp+plasgraph/gcn_conv/BiasAdd_1/ReadVariableOp2Z
+plasgraph/gcn_conv/BiasAdd_2/ReadVariableOp+plasgraph/gcn_conv/BiasAdd_2/ReadVariableOp2Z
+plasgraph/gcn_conv/BiasAdd_3/ReadVariableOp+plasgraph/gcn_conv/BiasAdd_3/ReadVariableOp2Z
+plasgraph/gcn_conv/BiasAdd_4/ReadVariableOp+plasgraph/gcn_conv/BiasAdd_4/ReadVariableOp2Z
+plasgraph/gcn_conv/BiasAdd_5/ReadVariableOp+plasgraph/gcn_conv/BiasAdd_5/ReadVariableOp2T
(plasgraph/gcn_conv/MatMul/ReadVariableOp(plasgraph/gcn_conv/MatMul/ReadVariableOp2X
*plasgraph/gcn_conv/MatMul_1/ReadVariableOp*plasgraph/gcn_conv/MatMul_1/ReadVariableOp2X
*plasgraph/gcn_conv/MatMul_2/ReadVariableOp*plasgraph/gcn_conv/MatMul_2/ReadVariableOp2X
*plasgraph/gcn_conv/MatMul_3/ReadVariableOp*plasgraph/gcn_conv/MatMul_3/ReadVariableOp2X
*plasgraph/gcn_conv/MatMul_4/ReadVariableOp*plasgraph/gcn_conv/MatMul_4/ReadVariableOp2X
*plasgraph/gcn_conv/MatMul_5/ReadVariableOp*plasgraph/gcn_conv/MatMul_5/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0
Á~
¥
E__inference_plasgraph_layer_call_and_return_conditional_losses_131294
inputs_0

inputs	
inputs_1
inputs_2	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource: 9
'gcn_conv_matmul_readvariableop_resource:@ 6
(gcn_conv_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢gcn_conv/BiasAdd/ReadVariableOp¢!gcn_conv/BiasAdd_1/ReadVariableOp¢!gcn_conv/BiasAdd_2/ReadVariableOp¢!gcn_conv/BiasAdd_3/ReadVariableOp¢!gcn_conv/BiasAdd_4/ReadVariableOp¢!gcn_conv/BiasAdd_5/ReadVariableOp¢gcn_conv/MatMul/ReadVariableOp¢ gcn_conv/MatMul_1/ReadVariableOp¢ gcn_conv/MatMul_2/ReadVariableOp¢ gcn_conv/MatMul_3/ReadVariableOp¢ gcn_conv/MatMul_4/ReadVariableOp¢ gcn_conv/MatMul_5/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0w
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_1/MatMulMatMulinputs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
concatenate/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
dropout_1/IdentityIdentityconcatenate/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gcn_conv/MatMul/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMulMatMuldropout_1/Identity:output:0&gcn_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gcn_conv/BiasAdd/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0º
gcn_conv/BiasAddBiasAddBgcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0'gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
gcn_conv/ReluRelugcn_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¶
concatenate_1/concatConcatV2dense/Relu:activations:0gcn_conv/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_2/IdentityIdentityconcatenate_1/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_1/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_1MatMuldropout_2/Identity:output:0(gcn_conv/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_1/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_1BiasAddDgcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_1Relugcn_conv/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_2/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_1:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_3/IdentityIdentityconcatenate_2/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_2/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_2MatMuldropout_3/Identity:output:0(gcn_conv/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_2:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_2/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_2BiasAddDgcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_2Relugcn_conv/BiasAdd_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_3/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_2:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_4/IdentityIdentityconcatenate_3/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_3/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_3MatMuldropout_4/Identity:output:0(gcn_conv/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_3/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_3BiasAddDgcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_3Relugcn_conv/BiasAdd_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_4/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_3:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_5/IdentityIdentityconcatenate_4/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_4/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_4MatMuldropout_5/Identity:output:0(gcn_conv/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_4/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_4BiasAddDgcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_4Relugcn_conv/BiasAdd_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_5/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_4:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_6/IdentityIdentityconcatenate_5/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_5/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_5MatMuldropout_6/Identity:output:0(gcn_conv/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_5/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_5BiasAddDgcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_5Relugcn_conv/BiasAdd_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_6/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_5:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_7/IdentityIdentityconcatenate_6/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_2/MatMulMatMuldropout_7/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
dropout_8/IdentityIdentitydense_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMuldropout_8/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^gcn_conv/BiasAdd/ReadVariableOp"^gcn_conv/BiasAdd_1/ReadVariableOp"^gcn_conv/BiasAdd_2/ReadVariableOp"^gcn_conv/BiasAdd_3/ReadVariableOp"^gcn_conv/BiasAdd_4/ReadVariableOp"^gcn_conv/BiasAdd_5/ReadVariableOp^gcn_conv/MatMul/ReadVariableOp!^gcn_conv/MatMul_1/ReadVariableOp!^gcn_conv/MatMul_2/ReadVariableOp!^gcn_conv/MatMul_3/ReadVariableOp!^gcn_conv/MatMul_4/ReadVariableOp!^gcn_conv/MatMul_5/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
gcn_conv/BiasAdd/ReadVariableOpgcn_conv/BiasAdd/ReadVariableOp2F
!gcn_conv/BiasAdd_1/ReadVariableOp!gcn_conv/BiasAdd_1/ReadVariableOp2F
!gcn_conv/BiasAdd_2/ReadVariableOp!gcn_conv/BiasAdd_2/ReadVariableOp2F
!gcn_conv/BiasAdd_3/ReadVariableOp!gcn_conv/BiasAdd_3/ReadVariableOp2F
!gcn_conv/BiasAdd_4/ReadVariableOp!gcn_conv/BiasAdd_4/ReadVariableOp2F
!gcn_conv/BiasAdd_5/ReadVariableOp!gcn_conv/BiasAdd_5/ReadVariableOp2@
gcn_conv/MatMul/ReadVariableOpgcn_conv/MatMul/ReadVariableOp2D
 gcn_conv/MatMul_1/ReadVariableOp gcn_conv/MatMul_1/ReadVariableOp2D
 gcn_conv/MatMul_2/ReadVariableOp gcn_conv/MatMul_2/ReadVariableOp2D
 gcn_conv/MatMul_3/ReadVariableOp gcn_conv/MatMul_3/ReadVariableOp2D
 gcn_conv/MatMul_4/ReadVariableOp gcn_conv/MatMul_4/ReadVariableOp2D
 gcn_conv/MatMul_5/ReadVariableOp gcn_conv/MatMul_5/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
½
H
*__inference_dropout_5_layer_call_fn_131622

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_131537

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶
Â
)__inference_gcn_conv_layer_call_fn_131868
inputs_0

inputs	
inputs_1
inputs_2	0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ µ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_1_layer_call_fn_131498

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_131503

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_131639

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å

$__inference_signature_wrapper_131481

args_0
args_0_1	
args_0_2
args_0_3	
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:@ 
	unknown_4: 
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_129173o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3
ÿ	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_131549

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
þ	
Ù
(__inference_dense_3_layer_call_fn_131830

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼

*__inference_plasgraph_layer_call_fn_131193
inputs_0

inputs	
inputs_1
inputs_2	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource: 9
'gcn_conv_matmul_readvariableop_resource:@ 6
(gcn_conv_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢gcn_conv/BiasAdd/ReadVariableOp¢!gcn_conv/BiasAdd_1/ReadVariableOp¢!gcn_conv/BiasAdd_2/ReadVariableOp¢!gcn_conv/BiasAdd_3/ReadVariableOp¢!gcn_conv/BiasAdd_4/ReadVariableOp¢!gcn_conv/BiasAdd_5/ReadVariableOp¢gcn_conv/MatMul/ReadVariableOp¢ gcn_conv/MatMul_1/ReadVariableOp¢ gcn_conv/MatMul_2/ReadVariableOp¢ gcn_conv/MatMul_3/ReadVariableOp¢ gcn_conv/MatMul_4/ReadVariableOp¢ gcn_conv/MatMul_5/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0w
dense/MatMulMatMulinputs_0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0{
dense_1/MatMulMatMulinputs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :±
concatenate/concatConcatV2dense/Relu:activations:0dense_1/Relu:activations:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_1/dropout/MulMulconcatenate/concat:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
dropout_1/dropout/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:¬
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gcn_conv/MatMul/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMulMatMuldropout_1/dropout/Mul_1:z:0&gcn_conv/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¼
8gcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
gcn_conv/BiasAdd/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0º
gcn_conv/BiasAddBiasAddBgcn_conv/SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0'gcn_conv/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
gcn_conv/ReluRelugcn_conv/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¶
concatenate_1/concatConcatV2dense/Relu:activations:0gcn_conv/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_2/dropout/MulMulconcatenate_1/concat:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_2/dropout/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:¹
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_1/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_1MatMuldropout_2/dropout/Mul_1:z:0(gcn_conv/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_1/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_1BiasAddDgcn_conv/SparseTensorDenseMatMul_1/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_1Relugcn_conv/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_2/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_1:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_3/dropout/MulMulconcatenate_2/concat:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_3/dropout/ShapeShapeconcatenate_2/concat:output:0*
T0*
_output_shapes
:¹
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_2/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_2MatMuldropout_3/dropout/Mul_1:z:0(gcn_conv/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_2:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_2/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_2BiasAddDgcn_conv/SparseTensorDenseMatMul_2/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_2Relugcn_conv/BiasAdd_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_3/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_2:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_4/dropout/MulMulconcatenate_3/concat:output:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_4/dropout/ShapeShapeconcatenate_3/concat:output:0*
T0*
_output_shapes
:¹
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_3/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_3MatMuldropout_4/dropout/Mul_1:z:0(gcn_conv/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_3:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_3/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_3BiasAddDgcn_conv/SparseTensorDenseMatMul_3/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_3Relugcn_conv/BiasAdd_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_4/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_3:activations:0"concatenate_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_5/dropout/MulMulconcatenate_4/concat:output:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_5/dropout/ShapeShapeconcatenate_4/concat:output:0*
T0*
_output_shapes
:¹
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_4/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_4MatMuldropout_5/dropout/Mul_1:z:0(gcn_conv/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_4/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_4BiasAddDgcn_conv/SparseTensorDenseMatMul_4/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_4Relugcn_conv/BiasAdd_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_5/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_4:activations:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_6/dropout/MulMulconcatenate_5/concat:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_6/dropout/ShapeShapeconcatenate_5/concat:output:0*
T0*
_output_shapes
:¹
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 gcn_conv/MatMul_5/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
gcn_conv/MatMul_5MatMuldropout_6/dropout/Mul_1:z:0(gcn_conv/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ À
:gcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2gcn_conv/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!gcn_conv/BiasAdd_5/ReadVariableOpReadVariableOp(gcn_conv_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0À
gcn_conv/BiasAdd_5BiasAddDgcn_conv/SparseTensorDenseMatMul_5/SparseTensorDenseMatMul:product:0)gcn_conv/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
gcn_conv/Relu_5Relugcn_conv/BiasAdd_5:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
concatenate_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¸
concatenate_6/concatConcatV2dense/Relu:activations:0gcn_conv/Relu_5:activations:0"concatenate_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_7/dropout/MulMulconcatenate_6/concat:output:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dropout_7/dropout/ShapeShapeconcatenate_6/concat:output:0*
T0*
_output_shapes
:¹
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{*
seed2e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_2/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_8/dropout/MulMuldense_2/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
dropout_8/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:¹
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*

seed{*
seed2e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMuldropout_8/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'gcn_conv_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^gcn_conv/BiasAdd/ReadVariableOp"^gcn_conv/BiasAdd_1/ReadVariableOp"^gcn_conv/BiasAdd_2/ReadVariableOp"^gcn_conv/BiasAdd_3/ReadVariableOp"^gcn_conv/BiasAdd_4/ReadVariableOp"^gcn_conv/BiasAdd_5/ReadVariableOp^gcn_conv/MatMul/ReadVariableOp!^gcn_conv/MatMul_1/ReadVariableOp!^gcn_conv/MatMul_2/ReadVariableOp!^gcn_conv/MatMul_3/ReadVariableOp!^gcn_conv/MatMul_4/ReadVariableOp!^gcn_conv/MatMul_5/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
gcn_conv/BiasAdd/ReadVariableOpgcn_conv/BiasAdd/ReadVariableOp2F
!gcn_conv/BiasAdd_1/ReadVariableOp!gcn_conv/BiasAdd_1/ReadVariableOp2F
!gcn_conv/BiasAdd_2/ReadVariableOp!gcn_conv/BiasAdd_2/ReadVariableOp2F
!gcn_conv/BiasAdd_3/ReadVariableOp!gcn_conv/BiasAdd_3/ReadVariableOp2F
!gcn_conv/BiasAdd_4/ReadVariableOp!gcn_conv/BiasAdd_4/ReadVariableOp2F
!gcn_conv/BiasAdd_5/ReadVariableOp!gcn_conv/BiasAdd_5/ReadVariableOp2@
gcn_conv/MatMul/ReadVariableOpgcn_conv/MatMul/ReadVariableOp2D
 gcn_conv/MatMul_1/ReadVariableOp gcn_conv/MatMul_1/ReadVariableOp2D
 gcn_conv/MatMul_2/ReadVariableOp gcn_conv/MatMul_2/ReadVariableOp2D
 gcn_conv/MatMul_3/ReadVariableOp gcn_conv/MatMul_3/ReadVariableOp2D
 gcn_conv/MatMul_4/ReadVariableOp gcn_conv/MatMul_4/ReadVariableOp2D
 gcn_conv/MatMul_5/ReadVariableOp gcn_conv/MatMul_5/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
ÿ	
Ù
(__inference_dense_1_layer_call_fn_131786

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_131515

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
H
*__inference_dropout_4_layer_call_fn_131588

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_2_layer_call_fn_131532

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_4_layer_call_fn_131600

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_131571

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ò
A__inference_dense_layer_call_and_return_conditional_losses_131775

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_131651

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
H
*__inference_dropout_6_layer_call_fn_131656

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ	
Ù
(__inference_dense_2_layer_call_fn_131808

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_131741

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
½
H
*__inference_dropout_2_layer_call_fn_131520

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
H
*__inference_dropout_8_layer_call_fn_131724

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ñ
Ý
D__inference_gcn_conv_layer_call_and_return_conditional_losses_131889
inputs_0

inputs	
inputs_1
inputs_2	0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ª
/SparseTensorDenseMatMul/SparseTensorDenseMatMulSparseTensorDenseMatMulinputsinputs_1inputs_2MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAdd9SparseTensorDenseMatMul/SparseTensorDenseMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ µ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_131673

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
H
*__inference_dropout_3_layer_call_fn_131554

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_131719

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ô
C__inference_dense_3_layer_call_and_return_conditional_losses_131841

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_7_layer_call_fn_131702

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì
Å
__inference_loss_fn_0_131900V
Dplasgraph_gcn_conv_kernel_regularizer_square_readvariableop_resource:@ 
identity¢;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpÀ
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDplasgraph_gcn_conv_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@ *
dtype0¤
,plasgraph/gcn_conv/kernel/Regularizer/SquareSquareCplasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ |
+plasgraph/gcn_conv/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ¹
)plasgraph/gcn_conv/kernel/Regularizer/SumSum0plasgraph/gcn_conv/kernel/Regularizer/Square:y:04plasgraph/gcn_conv/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+plasgraph/gcn_conv/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o9»
)plasgraph/gcn_conv/kernel/Regularizer/mulMul4plasgraph/gcn_conv/kernel/Regularizer/mul/x:output:02plasgraph/gcn_conv/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentity-plasgraph/gcn_conv/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp<^plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp;plasgraph/gcn_conv/kernel/Regularizer/Square/ReadVariableOp
½
H
*__inference_dropout_7_layer_call_fn_131690

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_8_layer_call_fn_131736

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_3_layer_call_fn_131566

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
H
*__inference_dropout_1_layer_call_fn_131486

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ä	
I
*__inference_dropout_6_layer_call_fn_131668

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_131707

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_131617

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ô
C__inference_dense_2_layer_call_and_return_conditional_losses_131819

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_131605

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ý	
×
&__inference_dense_layer_call_fn_131764

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"Û-
saver_filename:0
Identity:0Identity_388"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Õ
serving_defaultÁ
9
args_0/
serving_default_args_0:0ÿÿÿÿÿÿÿÿÿ
=
args_0_11
serving_default_args_0_1:0	ÿÿÿÿÿÿÿÿÿ
9
args_0_2-
serving_default_args_0_2:0ÿÿÿÿÿÿÿÿÿ
0
args_0_3$
serving_default_args_0_3:0	<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:³ì

_dropout_layer_0
_dropout_layer_1
_dropout_layer_2
_dropout_layer_3
_dropout_layer_4
_dropout_layer_5
_dropout_layer_6
_dropout_layer_7
	_dropout_layer_8

fully_connected_1
fully_connected_2
fully_connected_3
fully_connected_4
_gcn_layer1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
?
	keras_api
_random_generator"
_tf_keras_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
¼
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%_random_generator
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,_random_generator
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3_random_generator
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:_random_generator
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H_random_generator
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
»

bkernel
cbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
»

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
Ì
rkwargs_keys

skernel
tbias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer

{iter

|beta_1

}beta_2
	~decay
learning_rateRmÍSmÎZmÏ[mÐbmÑcmÒjmÓkmÔsmÕtmÖRv×SvØZvÙ[vÚbvÛcvÜjvÝkvÞsvßtvà"
	optimizer
f
R0
S1
Z2
[3
b4
c5
j6
k7
s8
t9"
trackable_list_wrapper
f
R0
S1
Z2
[3
b4
c5
j6
k7
s8
t9"
trackable_list_wrapper
(
0"
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
*__inference_plasgraph_layer_call_fn_131036
*__inference_plasgraph_layer_call_fn_131193³
ª²¦
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ç2Ä
E__inference_plasgraph_layer_call_and_return_conditional_losses_131294
E__inference_plasgraph_layer_call_and_return_conditional_losses_131451³
ª²¦
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

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
éBæ
!__inference__wrapped_model_129173args_0args_0_1args_0_2args_0_3"
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
annotationsª *
 
-
serving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_1_layer_call_fn_131486
*__inference_dropout_1_layer_call_fn_131498´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_1_layer_call_and_return_conditional_losses_131503
E__inference_dropout_1_layer_call_and_return_conditional_losses_131515´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_2_layer_call_fn_131520
*__inference_dropout_2_layer_call_fn_131532´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_2_layer_call_and_return_conditional_losses_131537
E__inference_dropout_2_layer_call_and_return_conditional_losses_131549´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_3_layer_call_fn_131554
*__inference_dropout_3_layer_call_fn_131566´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_3_layer_call_and_return_conditional_losses_131571
E__inference_dropout_3_layer_call_and_return_conditional_losses_131583´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_4_layer_call_fn_131588
*__inference_dropout_4_layer_call_fn_131600´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_4_layer_call_and_return_conditional_losses_131605
E__inference_dropout_4_layer_call_and_return_conditional_losses_131617´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_5_layer_call_fn_131622
*__inference_dropout_5_layer_call_fn_131634´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_5_layer_call_and_return_conditional_losses_131639
E__inference_dropout_5_layer_call_and_return_conditional_losses_131651´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_6_layer_call_fn_131656
*__inference_dropout_6_layer_call_fn_131668´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_6_layer_call_and_return_conditional_losses_131673
E__inference_dropout_6_layer_call_and_return_conditional_losses_131685´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_7_layer_call_fn_131690
*__inference_dropout_7_layer_call_fn_131702´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_7_layer_call_and_return_conditional_losses_131707
E__inference_dropout_7_layer_call_and_return_conditional_losses_131719´
«²§
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_8_layer_call_fn_131724
*__inference_dropout_8_layer_call_fn_131736´
«²§
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
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_8_layer_call_and_return_conditional_losses_131741
E__inference_dropout_8_layer_call_and_return_conditional_losses_131753´
«²§
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
kwonlydefaultsª 
annotationsª *
 
(:& 2plasgraph/dense/kernel
":  2plasgraph/dense/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_layer_call_fn_131764¢
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
annotationsª *
 
ë2è
A__inference_dense_layer_call_and_return_conditional_losses_131775¢
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
annotationsª *
 
*:( 2plasgraph/dense_1/kernel
$:" 2plasgraph/dense_1/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_1_layer_call_fn_131786¢
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
annotationsª *
 
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_131797¢
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
annotationsª *
 
*:(@ 2plasgraph/dense_2/kernel
$:" 2plasgraph/dense_2/bias
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_2_layer_call_fn_131808¢
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
annotationsª *
 
í2ê
C__inference_dense_2_layer_call_and_return_conditional_losses_131819¢
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
annotationsª *
 
*:( 2plasgraph/dense_3/kernel
$:"2plasgraph/dense_3/bias
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¾non_trainable_variables
¿layers
Àmetrics
 Álayer_regularization_losses
Âlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_3_layer_call_fn_131830¢
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
annotationsª *
 
í2ê
C__inference_dense_3_layer_call_and_return_conditional_losses_131841¢
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
annotationsª *
 
 "
trackable_list_wrapper
+:)@ 2plasgraph/gcn_conv/kernel
%:# 2plasgraph/gcn_conv/bias
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
²
Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
)__inference_gcn_conv_layer_call_fn_131868
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
D__inference_gcn_conv_layer_call_and_return_conditional_losses_131889
²
FullArgSpec
args

jinputs
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
³2°
__inference_loss_fn_0_131900
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper

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
13"
trackable_list_wrapper
(
È0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
æBã
$__inference_signature_wrapper_131481args_0args_0_1args_0_2args_0_3"
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
annotationsª *
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
(
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Étotal

Êcount
Ë	variables
Ì	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
É0
Ê1"
trackable_list_wrapper
.
Ë	variables"
_generic_user_object
-:+ 2Adam/plasgraph/dense/kernel/m
':% 2Adam/plasgraph/dense/bias/m
/:- 2Adam/plasgraph/dense_1/kernel/m
):' 2Adam/plasgraph/dense_1/bias/m
/:-@ 2Adam/plasgraph/dense_2/kernel/m
):' 2Adam/plasgraph/dense_2/bias/m
/:- 2Adam/plasgraph/dense_3/kernel/m
):'2Adam/plasgraph/dense_3/bias/m
0:.@ 2 Adam/plasgraph/gcn_conv/kernel/m
*:( 2Adam/plasgraph/gcn_conv/bias/m
-:+ 2Adam/plasgraph/dense/kernel/v
':% 2Adam/plasgraph/dense/bias/v
/:- 2Adam/plasgraph/dense_1/kernel/v
):' 2Adam/plasgraph/dense_1/bias/v
/:-@ 2Adam/plasgraph/dense_2/kernel/v
):' 2Adam/plasgraph/dense_2/bias/v
/:- 2Adam/plasgraph/dense_3/kernel/v
):'2Adam/plasgraph/dense_3/bias/v
0:.@ 2 Adam/plasgraph/gcn_conv/kernel/v
*:( 2Adam/plasgraph/gcn_conv/bias/vã
!__inference__wrapped_model_129173½
RSZ[stbcjkz¢w
p¢m
k¢h
"
args_0/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ£
C__inference_dense_1_layer_call_and_return_conditional_losses_131797\Z[/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
(__inference_dense_1_layer_call_fn_131786OZ[/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ £
C__inference_dense_2_layer_call_and_return_conditional_losses_131819\bc/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
(__inference_dense_2_layer_call_fn_131808Obc/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ £
C__inference_dense_3_layer_call_and_return_conditional_losses_131841\jk/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_3_layer_call_fn_131830Ojk/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¡
A__inference_dense_layer_call_and_return_conditional_losses_131775\RS/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 y
&__inference_dense_layer_call_fn_131764ORS/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dropout_1_layer_call_and_return_conditional_losses_131503\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_1_layer_call_and_return_conditional_losses_131515\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_1_layer_call_fn_131486O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_1_layer_call_fn_131498O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_2_layer_call_and_return_conditional_losses_131537\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_2_layer_call_and_return_conditional_losses_131549\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_2_layer_call_fn_131520O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_2_layer_call_fn_131532O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_3_layer_call_and_return_conditional_losses_131571\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_3_layer_call_and_return_conditional_losses_131583\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_3_layer_call_fn_131554O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_3_layer_call_fn_131566O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_4_layer_call_and_return_conditional_losses_131605\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_4_layer_call_and_return_conditional_losses_131617\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_4_layer_call_fn_131588O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_4_layer_call_fn_131600O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_5_layer_call_and_return_conditional_losses_131639\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_5_layer_call_and_return_conditional_losses_131651\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_5_layer_call_fn_131622O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_5_layer_call_fn_131634O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_6_layer_call_and_return_conditional_losses_131673\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_6_layer_call_and_return_conditional_losses_131685\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_6_layer_call_fn_131656O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_6_layer_call_fn_131668O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_7_layer_call_and_return_conditional_losses_131707\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout_7_layer_call_and_return_conditional_losses_131719\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout_7_layer_call_fn_131690O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout_7_layer_call_fn_131702O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout_8_layer_call_and_return_conditional_losses_131741\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¥
E__inference_dropout_8_layer_call_and_return_conditional_losses_131753\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dropout_8_layer_call_fn_131724O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ }
*__inference_dropout_8_layer_call_fn_131736O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ ð
D__inference_gcn_conv_layer_call_and_return_conditional_losses_131889§stz¢w
p¢m
kh
"
inputs/0ÿÿÿÿÿÿÿÿÿ@
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 È
)__inference_gcn_conv_layer_call_fn_131868stz¢w
p¢m
kh
"
inputs/0ÿÿÿÿÿÿÿÿÿ@
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
ª "ÿÿÿÿÿÿÿÿÿ ;
__inference_loss_fn_0_131900s¢

¢ 
ª " ý
E__inference_plasgraph_layer_call_and_return_conditional_losses_131294³
RSZ[stbcjk~¢{
t¢q
k¢h
"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ý
E__inference_plasgraph_layer_call_and_return_conditional_losses_131451³
RSZ[stbcjk~¢{
t¢q
k¢h
"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Õ
*__inference_plasgraph_layer_call_fn_131036¦
RSZ[stbcjk~¢{
t¢q
k¢h
"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
p 
ª "ÿÿÿÿÿÿÿÿÿÕ
*__inference_plasgraph_layer_call_fn_131193¦
RSZ[stbcjk~¢{
t¢q
k¢h
"
inputs/0ÿÿÿÿÿÿÿÿÿ
B?'¢$
úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
SparseTensorSpec 
p
ª "ÿÿÿÿÿÿÿÿÿ¨
$__inference_signature_wrapper_131481ÿ
RSZ[stbcjk»¢·
¢ 
¯ª«
*
args_0 
args_0ÿÿÿÿÿÿÿÿÿ
.
args_0_1"
args_0_1ÿÿÿÿÿÿÿÿÿ	
*
args_0_2
args_0_2ÿÿÿÿÿÿÿÿÿ
!
args_0_3
args_0_3	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ