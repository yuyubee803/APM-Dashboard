��
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

: *
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
dtype0
z
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_28/kernel
s
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes

:*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:*
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
�
lstm_14/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_14/lstm_cell_14/kernel
�
/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_14/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*6
shared_name'%lstm_14/lstm_cell_14/recurrent_kernel
�
9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_14/lstm_cell_14/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
lstm_14/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_14/lstm_cell_14/bias
�
-lstm_14/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOplstm_14/lstm_cell_14/bias*
_output_shapes	
:�*
dtype0
|
lstm_14/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namelstm_14/Variable
u
$lstm_14/Variable/Read/ReadVariableOpReadVariableOplstm_14/Variable*
_output_shapes

: *
dtype0
�
lstm_14/Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
: *#
shared_namelstm_14/Variable_1
y
&lstm_14/Variable_1/Read/ReadVariableOpReadVariableOplstm_14/Variable_1*
_output_shapes

: *
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
�
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/m
�
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_28/kernel/m
�
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_14/lstm_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/m
�
6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
�
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_14/lstm_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/m
�
4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_27/kernel/v
�
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_28/kernel/v
�
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_14/lstm_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_14/lstm_cell_14/kernel/v
�
6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_14/lstm_cell_14/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
�
@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
 Adam/lstm_14/lstm_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_14/lstm_cell_14/bias/v
�
4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_14/lstm_cell_14/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�*
value�*B�* B�*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
l

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
�
iter

beta_1

beta_2
	decay
 learning_ratemImJmKmL!mM"mN#mOvPvQvRvS!vT"vU#vV
1
!0
"1
#2
3
4
5
6
 
1
!0
"1
#2
3
4
5
6
�

$layers
%layer_regularization_losses
	variables
regularization_losses
trainable_variables
&metrics
'layer_metrics
(non_trainable_variables
 
~

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
 

!0
"1
#2
 

!0
"1
#2
�

-states

.layers
/layer_regularization_losses
	variables
regularization_losses
trainable_variables
0metrics
1layer_metrics
2non_trainable_variables
[Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_27/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�

3layers
4layer_regularization_losses
	variables
regularization_losses
trainable_variables
5metrics
6layer_metrics
7non_trainable_variables
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�

8layers
9layer_regularization_losses
	variables
regularization_losses
trainable_variables
:metrics
;layer_metrics
<non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_14/lstm_cell_14/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_14/lstm_cell_14/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_14/lstm_cell_14/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

=0
 
 

!0
"1
#2
 

!0
"1
#2
�

>layers
?layer_regularization_losses
)	variables
*regularization_losses
+trainable_variables
@metrics
Alayer_metrics
Bnon_trainable_variables

C0
D1


0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Etotal
	Fcount
G	variables
H	keras_api
 
 
 
 
 
hf
VARIABLE_VALUElstm_14/VariableBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUElstm_14/Variable_1Blayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

G	variables
~|
VARIABLE_VALUEAdam/dense_27/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_27/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_27/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_14/lstm_cell_14/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_14/lstm_cell_14/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_14/lstm_cell_14/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
v
serving_default_lstm_14_inputPlaceholder*"
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_14_inputlstm_14/lstm_cell_14/kernellstm_14/Variable%lstm_14/lstm_cell_14/recurrent_kernellstm_14/lstm_cell_14/biaslstm_14/Variable_1dense_27/kerneldense_27/biasdense_28/kerneldense_28/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_132182
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_14/lstm_cell_14/kernel/Read/ReadVariableOp9lstm_14/lstm_cell_14/recurrent_kernel/Read/ReadVariableOp-lstm_14/lstm_cell_14/bias/Read/ReadVariableOp$lstm_14/Variable/Read/ReadVariableOp&lstm_14/Variable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/m/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp6Adam/lstm_14/lstm_cell_14/kernel/v/Read/ReadVariableOp@Adam/lstm_14/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_14/lstm_cell_14/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_133576
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_27/kerneldense_27/biasdense_28/kerneldense_28/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_14/lstm_cell_14/kernel%lstm_14/lstm_cell_14/recurrent_kernellstm_14/lstm_cell_14/biaslstm_14/Variablelstm_14/Variable_1totalcountAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/dense_28/kernel/mAdam/dense_28/bias/m"Adam/lstm_14/lstm_cell_14/kernel/m,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m Adam/lstm_14/lstm_cell_14/bias/mAdam/dense_27/kernel/vAdam/dense_27/bias/vAdam/dense_28/kernel/vAdam/dense_28/bias/v"Adam/lstm_14/lstm_cell_14/kernel/v,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v Adam/lstm_14/lstm_cell_14/bias/v**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_133676��
�b
�
'sequential_14_lstm_14_while_body_130888H
Dsequential_14_lstm_14_while_sequential_14_lstm_14_while_loop_counterN
Jsequential_14_lstm_14_while_sequential_14_lstm_14_while_maximum_iterations+
'sequential_14_lstm_14_while_placeholder-
)sequential_14_lstm_14_while_placeholder_1-
)sequential_14_lstm_14_while_placeholder_2-
)sequential_14_lstm_14_while_placeholder_3E
Asequential_14_lstm_14_while_sequential_14_lstm_14_strided_slice_0�
sequential_14_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_14_tensorarrayunstack_tensorlistfromtensor_0M
Isequential_14_lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0O
Ksequential_14_lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0N
Jsequential_14_lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0(
$sequential_14_lstm_14_while_identity*
&sequential_14_lstm_14_while_identity_1*
&sequential_14_lstm_14_while_identity_2*
&sequential_14_lstm_14_while_identity_3*
&sequential_14_lstm_14_while_identity_4*
&sequential_14_lstm_14_while_identity_5C
?sequential_14_lstm_14_while_sequential_14_lstm_14_strided_slice�
}sequential_14_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_14_tensorarrayunstack_tensorlistfromtensorK
Gsequential_14_lstm_14_while_lstm_cell_14_matmul_readvariableop_resourceM
Isequential_14_lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resourceL
Hsequential_14_lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource��?sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�>sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�@sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
Msequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2O
Msequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_14_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_14_tensorarrayunstack_tensorlistfromtensor_0'sequential_14_lstm_14_while_placeholderVsequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02A
?sequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItem�
>sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOpIsequential_14_lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02@
>sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�
/sequential_14/lstm_14/while/lstm_cell_14/MatMulMatMulFsequential_14/lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�21
/sequential_14/lstm_14/while/lstm_cell_14/MatMul�
@sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOpKsequential_14_lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02B
@sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
1sequential_14/lstm_14/while/lstm_cell_14/MatMul_1MatMul)sequential_14_lstm_14_while_placeholder_2Hsequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�23
1sequential_14/lstm_14/while/lstm_cell_14/MatMul_1�
,sequential_14/lstm_14/while/lstm_cell_14/addAddV29sequential_14/lstm_14/while/lstm_cell_14/MatMul:product:0;sequential_14/lstm_14/while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2.
,sequential_14/lstm_14/while/lstm_cell_14/add�
?sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOpJsequential_14_lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02A
?sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�
0sequential_14/lstm_14/while/lstm_cell_14/BiasAddBiasAdd0sequential_14/lstm_14/while/lstm_cell_14/add:z:0Gsequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�22
0sequential_14/lstm_14/while/lstm_cell_14/BiasAdd�
.sequential_14/lstm_14/while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :20
.sequential_14/lstm_14/while/lstm_cell_14/Const�
8sequential_14/lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_14/lstm_14/while/lstm_cell_14/split/split_dim�
.sequential_14/lstm_14/while/lstm_cell_14/splitSplitAsequential_14/lstm_14/while/lstm_cell_14/split/split_dim:output:09sequential_14/lstm_14/while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split20
.sequential_14/lstm_14/while/lstm_cell_14/split�
0sequential_14/lstm_14/while/lstm_cell_14/SigmoidSigmoid7sequential_14/lstm_14/while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 22
0sequential_14/lstm_14/while/lstm_cell_14/Sigmoid�
2sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid7sequential_14/lstm_14/while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 24
2sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_1�
,sequential_14/lstm_14/while/lstm_cell_14/mulMul6sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_1:y:0)sequential_14_lstm_14_while_placeholder_3*
T0*
_output_shapes

: 2.
,sequential_14/lstm_14/while/lstm_cell_14/mul�
-sequential_14/lstm_14/while/lstm_cell_14/ReluRelu7sequential_14/lstm_14/while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2/
-sequential_14/lstm_14/while/lstm_cell_14/Relu�
.sequential_14/lstm_14/while/lstm_cell_14/mul_1Mul4sequential_14/lstm_14/while/lstm_cell_14/Sigmoid:y:0;sequential_14/lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 20
.sequential_14/lstm_14/while/lstm_cell_14/mul_1�
.sequential_14/lstm_14/while/lstm_cell_14/add_1AddV20sequential_14/lstm_14/while/lstm_cell_14/mul:z:02sequential_14/lstm_14/while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 20
.sequential_14/lstm_14/while/lstm_cell_14/add_1�
2sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid7sequential_14/lstm_14/while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 24
2sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_2�
/sequential_14/lstm_14/while/lstm_cell_14/Relu_1Relu2sequential_14/lstm_14/while/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 21
/sequential_14/lstm_14/while/lstm_cell_14/Relu_1�
.sequential_14/lstm_14/while/lstm_cell_14/mul_2Mul6sequential_14/lstm_14/while/lstm_cell_14/Sigmoid_2:y:0=sequential_14/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 20
.sequential_14/lstm_14/while/lstm_cell_14/mul_2�
@sequential_14/lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_14_lstm_14_while_placeholder_1'sequential_14_lstm_14_while_placeholder2sequential_14/lstm_14/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_14/lstm_14/while/TensorArrayV2Write/TensorListSetItem�
!sequential_14/lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_14/lstm_14/while/add/y�
sequential_14/lstm_14/while/addAddV2'sequential_14_lstm_14_while_placeholder*sequential_14/lstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_14/lstm_14/while/add�
#sequential_14/lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_14/lstm_14/while/add_1/y�
!sequential_14/lstm_14/while/add_1AddV2Dsequential_14_lstm_14_while_sequential_14_lstm_14_while_loop_counter,sequential_14/lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_14/lstm_14/while/add_1�
$sequential_14/lstm_14/while/IdentityIdentity%sequential_14/lstm_14/while/add_1:z:0@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_14/lstm_14/while/Identity�
&sequential_14/lstm_14/while/Identity_1IdentityJsequential_14_lstm_14_while_sequential_14_lstm_14_while_maximum_iterations@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_14/while/Identity_1�
&sequential_14/lstm_14/while/Identity_2Identity#sequential_14/lstm_14/while/add:z:0@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_14/while/Identity_2�
&sequential_14/lstm_14/while/Identity_3IdentityPsequential_14/lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_14/lstm_14/while/Identity_3�
&sequential_14/lstm_14/while/Identity_4Identity2sequential_14/lstm_14/while/lstm_cell_14/mul_2:z:0@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2(
&sequential_14/lstm_14/while/Identity_4�
&sequential_14/lstm_14/while/Identity_5Identity2sequential_14/lstm_14/while/lstm_cell_14/add_1:z:0@^sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?^sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpA^sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2(
&sequential_14/lstm_14/while/Identity_5"U
$sequential_14_lstm_14_while_identity-sequential_14/lstm_14/while/Identity:output:0"Y
&sequential_14_lstm_14_while_identity_1/sequential_14/lstm_14/while/Identity_1:output:0"Y
&sequential_14_lstm_14_while_identity_2/sequential_14/lstm_14/while/Identity_2:output:0"Y
&sequential_14_lstm_14_while_identity_3/sequential_14/lstm_14/while/Identity_3:output:0"Y
&sequential_14_lstm_14_while_identity_4/sequential_14/lstm_14/while/Identity_4:output:0"Y
&sequential_14_lstm_14_while_identity_5/sequential_14/lstm_14/while/Identity_5:output:0"�
Hsequential_14_lstm_14_while_lstm_cell_14_biasadd_readvariableop_resourceJsequential_14_lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0"�
Isequential_14_lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resourceKsequential_14_lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0"�
Gsequential_14_lstm_14_while_lstm_cell_14_matmul_readvariableop_resourceIsequential_14_lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0"�
?sequential_14_lstm_14_while_sequential_14_lstm_14_strided_sliceAsequential_14_lstm_14_while_sequential_14_lstm_14_strided_slice_0"�
}sequential_14_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_14_tensorarrayunstack_tensorlistfromtensorsequential_14_lstm_14_while_tensorarrayv2read_tensorlistgetitem_sequential_14_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2�
?sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp?sequential_14/lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp2�
>sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp>sequential_14/lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp2�
@sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp@sequential_14/lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
.__inference_sequential_14_layer_call_fn_132149
lstm_14_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1321282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�	
�
lstm_14_while_cond_132234,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3,
(lstm_14_while_less_lstm_14_strided_sliceD
@lstm_14_while_lstm_14_while_cond_132234___redundant_placeholder0D
@lstm_14_while_lstm_14_while_cond_132234___redundant_placeholder1D
@lstm_14_while_lstm_14_while_cond_132234___redundant_placeholder2D
@lstm_14_while_lstm_14_while_cond_132234___redundant_placeholder3
lstm_14_while_identity
�
lstm_14/while/LessLesslstm_14_while_placeholder(lstm_14_while_less_lstm_14_strided_slice*
T0*
_output_shapes
: 2
lstm_14/while/Lessu
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_14/while/Identity"9
lstm_14_while_identitylstm_14/while/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132027
lstm_14_input
lstm_14_131962
lstm_14_131964
lstm_14_131966
lstm_14_131968
lstm_14_131970
dense_27_131995
dense_27_131997
dense_28_132021
dense_28_132023
identity�� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�lstm_14/StatefulPartitionedCall�
lstm_14/StatefulPartitionedCallStatefulPartitionedCalllstm_14_inputlstm_14_131962lstm_14_131964lstm_14_131966lstm_14_131968lstm_14_131970*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1317932!
lstm_14/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_27_131995dense_27_131997*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1319842"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_132021dense_28_132023*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1320102"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�A
�
while_body_132721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_14_layer_call_fn_133142

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1319312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�$
�
while_body_131449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_14_131473_0
while_lstm_cell_14_131475_0
while_lstm_cell_14_131477_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_14_131473
while_lstm_cell_14_131475
while_lstm_cell_14_131477��*while/lstm_cell_14/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_131473_0while_lstm_cell_14_131475_0while_lstm_cell_14_131477_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1311902,
*while/lstm_cell_14/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_14_131473while_lstm_cell_14_131473_0"8
while_lstm_cell_14_131475while_lstm_cell_14_131475_0"8
while_lstm_cell_14_131477while_lstm_cell_14_131477_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
D__inference_dense_28_layer_call_and_return_conditional_losses_132010

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
.__inference_sequential_14_layer_call_fn_132507

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1320802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
while_cond_133026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_133026___redundant_placeholder04
0while_while_cond_133026___redundant_placeholder14
0while_while_cond_133026___redundant_placeholder24
0while_while_cond_133026___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_132720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_132720___redundant_placeholder04
0while_while_cond_132720___redundant_placeholder14
0while_while_cond_132720___redundant_placeholder24
0while_while_cond_132720___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�

�
-__inference_lstm_cell_14_layer_call_fn_133409

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 * 
_output_shapes
:::*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1333962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0:($
"
_user_specified_name
states/1
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_132668
inputs_0/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_132583*
condR
while_cond_132582*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0
�
�
while_cond_131845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_131845___redundant_placeholder04
0while_while_cond_131845___redundant_placeholder14
0while_while_cond_131845___redundant_placeholder24
0while_while_cond_131845___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�	
�
D__inference_dense_27_layer_call_and_return_conditional_losses_133153

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
: ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs
�
�
while_cond_132582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_132582___redundant_placeholder04
0while_while_cond_132582___redundant_placeholder14
0while_while_cond_132582___redundant_placeholder24
0while_while_cond_132582___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�	
�
lstm_14_while_cond_132385,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3,
(lstm_14_while_less_lstm_14_strided_sliceD
@lstm_14_while_lstm_14_while_cond_132385___redundant_placeholder0D
@lstm_14_while_lstm_14_while_cond_132385___redundant_placeholder1D
@lstm_14_while_lstm_14_while_cond_132385___redundant_placeholder2D
@lstm_14_while_lstm_14_while_cond_132385___redundant_placeholder3
lstm_14_while_identity
�
lstm_14/while/LessLesslstm_14_while_placeholder(lstm_14_while_less_lstm_14_strided_slice*
T0*
_output_shapes
: 2
lstm_14/while/Lessu
lstm_14/while/IdentityIdentitylstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_14/while/Identity"9
lstm_14_while_identitylstm_14/while/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_131190

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpq
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1S
mulMulSigmoid_1:y:0states_1*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:FB

_output_shapes

: 
 
_user_specified_namestates:FB

_output_shapes

: 
 
_user_specified_namestates
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133450

inputs

states
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMuls
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:2

MatMul_1[
addAddV2MatMul:product:0MatMul_1:output:0*
T0*
_output_shapes
:2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpi
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*$
_output_shapes
::::*
	num_split2
splitP
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:2	
SigmoidT
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:2
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mulG
ReluRelusplit:output:2*
T0*
_output_shapes
:2
ReluY
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes
:2
mul_1N
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1T
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:2
	Sigmoid_2F
Relu_1Relu	add_1:z:0*
T0*
_output_shapes
:2
Relu_1]
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes
:2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:&"
 
_user_specified_namestates:&"
 
_user_specified_namestates
�
�
while_cond_131448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_131448___redundant_placeholder04
0while_while_cond_131448___redundant_placeholder14
0while_while_cond_131448___redundant_placeholder24
0while_while_cond_131448___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
-__inference_lstm_cell_14_layer_call_fn_133281

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1312232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs:HD

_output_shapes

: 
"
_user_specified_name
states/0:HD

_output_shapes

: 
"
_user_specified_name
states/1
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133396

inputs

states
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMuls
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:2

MatMul_1[
addAddV2MatMul:product:0MatMul_1:output:0*
T0*
_output_shapes
:2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpi
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*$
_output_shapes
::::*
	num_split2
splitP
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:2	
SigmoidT
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:2
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mulG
ReluRelusplit:output:2*
T0*
_output_shapes
:2
ReluY
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes
:2
mul_1N
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1T
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:2
	Sigmoid_2F
Relu_1Relu	add_1:z:0*
T0*
_output_shapes
:2
Relu_1]
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes
:2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:&"
 
_user_specified_namestates:&"
 
_user_specified_namestates
��
�
"__inference__traced_restore_133676
file_prefix$
 assignvariableop_dense_27_kernel$
 assignvariableop_1_dense_27_bias&
"assignvariableop_2_dense_28_kernel$
 assignvariableop_3_dense_28_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate2
.assignvariableop_9_lstm_14_lstm_cell_14_kernel=
9assignvariableop_10_lstm_14_lstm_cell_14_recurrent_kernel1
-assignvariableop_11_lstm_14_lstm_cell_14_bias(
$assignvariableop_12_lstm_14_variable*
&assignvariableop_13_lstm_14_variable_1
assignvariableop_14_total
assignvariableop_15_count.
*assignvariableop_16_adam_dense_27_kernel_m,
(assignvariableop_17_adam_dense_27_bias_m.
*assignvariableop_18_adam_dense_28_kernel_m,
(assignvariableop_19_adam_dense_28_bias_m:
6assignvariableop_20_adam_lstm_14_lstm_cell_14_kernel_mD
@assignvariableop_21_adam_lstm_14_lstm_cell_14_recurrent_kernel_m8
4assignvariableop_22_adam_lstm_14_lstm_cell_14_bias_m.
*assignvariableop_23_adam_dense_27_kernel_v,
(assignvariableop_24_adam_dense_27_bias_v.
*assignvariableop_25_adam_dense_28_kernel_v,
(assignvariableop_26_adam_dense_28_bias_v:
6assignvariableop_27_adam_lstm_14_lstm_cell_14_kernel_vD
@assignvariableop_28_adam_lstm_14_lstm_cell_14_recurrent_kernel_v8
4assignvariableop_29_adam_lstm_14_lstm_cell_14_bias_v
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_27_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_27_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_28_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_28_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_14_lstm_cell_14_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_14_lstm_cell_14_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_14_lstm_cell_14_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_lstm_14_variableIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_lstm_14_variable_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_27_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_27_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_28_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_28_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_14_lstm_cell_14_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_14_lstm_cell_14_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_14_lstm_cell_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_27_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_27_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_28_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_28_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_14_lstm_cell_14_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_14_lstm_cell_14_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_14_lstm_cell_14_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30�
Identity_31IdentityIdentity_30:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_31"#
identity_31Identity_31:output:0*�
_input_shapes|
z: ::::::::::::::::::::::::::::::2$
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
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
'sequential_14_lstm_14_while_cond_130887H
Dsequential_14_lstm_14_while_sequential_14_lstm_14_while_loop_counterN
Jsequential_14_lstm_14_while_sequential_14_lstm_14_while_maximum_iterations+
'sequential_14_lstm_14_while_placeholder-
)sequential_14_lstm_14_while_placeholder_1-
)sequential_14_lstm_14_while_placeholder_2-
)sequential_14_lstm_14_while_placeholder_3H
Dsequential_14_lstm_14_while_less_sequential_14_lstm_14_strided_slice`
\sequential_14_lstm_14_while_sequential_14_lstm_14_while_cond_130887___redundant_placeholder0`
\sequential_14_lstm_14_while_sequential_14_lstm_14_while_cond_130887___redundant_placeholder1`
\sequential_14_lstm_14_while_sequential_14_lstm_14_while_cond_130887___redundant_placeholder2`
\sequential_14_lstm_14_while_sequential_14_lstm_14_while_cond_130887___redundant_placeholder3(
$sequential_14_lstm_14_while_identity
�
 sequential_14/lstm_14/while/LessLess'sequential_14_lstm_14_while_placeholderDsequential_14_lstm_14_while_less_sequential_14_lstm_14_strided_slice*
T0*
_output_shapes
: 2"
 sequential_14/lstm_14/while/Less�
$sequential_14/lstm_14/while/IdentityIdentity$sequential_14/lstm_14/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_14/lstm_14/while/Identity"U
$sequential_14_lstm_14_while_identity-sequential_14/lstm_14/while/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_132806
inputs_0/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_132721*
condR
while_cond_132720*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0
�M
�	
lstm_14_while_body_132235,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3)
%lstm_14_while_lstm_14_strided_slice_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0A
=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0@
<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5'
#lstm_14_while_lstm_14_strided_slicee
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor=
9lstm_14_while_lstm_cell_14_matmul_readvariableop_resource?
;lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource>
:lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource��1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2A
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype023
1lstm_14/while/TensorArrayV2Read/TensorListGetItem�
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�
!lstm_14/while/lstm_cell_14/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!lstm_14/while/lstm_cell_14/MatMul�
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
#lstm_14/while/lstm_cell_14/MatMul_1MatMullstm_14_while_placeholder_2:lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2%
#lstm_14/while/lstm_cell_14/MatMul_1�
lstm_14/while/lstm_cell_14/addAddV2+lstm_14/while/lstm_cell_14/MatMul:product:0-lstm_14/while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2 
lstm_14/while/lstm_cell_14/add�
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�
"lstm_14/while/lstm_cell_14/BiasAddBiasAdd"lstm_14/while/lstm_cell_14/add:z:09lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2$
"lstm_14/while/lstm_cell_14/BiasAdd�
 lstm_14/while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_14/while/lstm_cell_14/Const�
*lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_14/while/lstm_cell_14/split/split_dim�
 lstm_14/while/lstm_cell_14/splitSplit3lstm_14/while/lstm_cell_14/split/split_dim:output:0+lstm_14/while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_14/while/lstm_cell_14/split�
"lstm_14/while/lstm_cell_14/SigmoidSigmoid)lstm_14/while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2$
"lstm_14/while/lstm_cell_14/Sigmoid�
$lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid)lstm_14/while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2&
$lstm_14/while/lstm_cell_14/Sigmoid_1�
lstm_14/while/lstm_cell_14/mulMul(lstm_14/while/lstm_cell_14/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_14/while/lstm_cell_14/mul�
lstm_14/while/lstm_cell_14/ReluRelu)lstm_14/while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2!
lstm_14/while/lstm_cell_14/Relu�
 lstm_14/while/lstm_cell_14/mul_1Mul&lstm_14/while/lstm_cell_14/Sigmoid:y:0-lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/mul_1�
 lstm_14/while/lstm_cell_14/add_1AddV2"lstm_14/while/lstm_cell_14/mul:z:0$lstm_14/while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/add_1�
$lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid)lstm_14/while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2&
$lstm_14/while/lstm_cell_14/Sigmoid_2�
!lstm_14/while/lstm_cell_14/Relu_1Relu$lstm_14/while/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2#
!lstm_14/while/lstm_cell_14/Relu_1�
 lstm_14/while/lstm_cell_14/mul_2Mul(lstm_14/while/lstm_cell_14/Sigmoid_2:y:0/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/mul_2�
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder$lstm_14/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_14/while/TensorArrayV2Write/TensorListSetIteml
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add/y�
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/addp
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add_1/y�
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/add_1�
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity�
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations2^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_1�
lstm_14/while/Identity_2Identitylstm_14/while/add:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_2�
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_3�
lstm_14/while/Identity_4Identity$lstm_14/while/lstm_cell_14/mul_2:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_14/while/Identity_4�
lstm_14/while/Identity_5Identity$lstm_14/while/lstm_cell_14/add_1:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_14/while/Identity_5"9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"L
#lstm_14_while_lstm_14_strided_slice%lstm_14_while_lstm_14_strided_slice_0"z
:lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0"|
;lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0"x
9lstm_14_while_lstm_cell_14_matmul_readvariableop_resource;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0"�
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2f
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp2d
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp2h
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_14_layer_call_fn_133127

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1317932
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�t
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132333

inputs7
3lstm_14_lstm_cell_14_matmul_readvariableop_resource9
5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource;
7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource8
4lstm_14_lstm_cell_14_biasadd_readvariableop_resource4
0lstm_14_lstm_cell_14_mul_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity��dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�lstm_14/AssignVariableOp�lstm_14/AssignVariableOp_1�lstm_14/ReadVariableOp�lstm_14/ReadVariableOp_1�+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�*lstm_14/lstm_cell_14/MatMul/ReadVariableOp�,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�'lstm_14/lstm_cell_14/mul/ReadVariableOp�lstm_14/while�
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose/perm�
lstm_14/transpose	Transposeinputslstm_14/transpose/perm:output:0*
T0*"
_output_shapes
:2
lstm_14/transposes
lstm_14/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_14/Shape�
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice/stack�
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_1�
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_2�
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slice�
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_14/TensorArrayV2/element_shape�
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2�
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_14/TensorArrayUnstack/TensorListFromTensor�
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_1/stack�
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_1�
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_2�
lstm_14/strided_slice_1StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
lstm_14/strided_slice_1�
*lstm_14/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3lstm_14_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_14/lstm_cell_14/MatMul/ReadVariableOp�
lstm_14/lstm_cell_14/MatMulMatMul lstm_14/strided_slice_1:output:02lstm_14/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/MatMul�
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype020
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_14/lstm_cell_14/MatMul_1MatMul4lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp:value:06lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/MatMul_1�
lstm_14/lstm_cell_14/addAddV2%lstm_14/lstm_cell_14/MatMul:product:0'lstm_14/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/add�
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_14/lstm_cell_14/BiasAddBiasAddlstm_14/lstm_cell_14/add:z:03lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/BiasAddz
lstm_14/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/lstm_cell_14/Const�
$lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_14/lstm_cell_14/split/split_dim�
lstm_14/lstm_cell_14/splitSplit-lstm_14/lstm_cell_14/split/split_dim:output:0%lstm_14/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_14/lstm_cell_14/split�
lstm_14/lstm_cell_14/SigmoidSigmoid#lstm_14/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Sigmoid�
lstm_14/lstm_cell_14/Sigmoid_1Sigmoid#lstm_14/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2 
lstm_14/lstm_cell_14/Sigmoid_1�
'lstm_14/lstm_cell_14/mul/ReadVariableOpReadVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02)
'lstm_14/lstm_cell_14/mul/ReadVariableOp�
lstm_14/lstm_cell_14/mulMul"lstm_14/lstm_cell_14/Sigmoid_1:y:0/lstm_14/lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul�
lstm_14/lstm_cell_14/ReluRelu#lstm_14/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Relu�
lstm_14/lstm_cell_14/mul_1Mul lstm_14/lstm_cell_14/Sigmoid:y:0'lstm_14/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul_1�
lstm_14/lstm_cell_14/add_1AddV2lstm_14/lstm_cell_14/mul:z:0lstm_14/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/add_1�
lstm_14/lstm_cell_14/Sigmoid_2Sigmoid#lstm_14/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2 
lstm_14/lstm_cell_14/Sigmoid_2�
lstm_14/lstm_cell_14/Relu_1Relulstm_14/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Relu_1�
lstm_14/lstm_cell_14/mul_2Mul"lstm_14/lstm_cell_14/Sigmoid_2:y:0)lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul_2�
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%lstm_14/TensorArrayV2_1/element_shape�
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2_1^
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/time�
lstm_14/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
lstm_14/ReadVariableOp�
lstm_14/ReadVariableOp_1ReadVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
lstm_14/ReadVariableOp_1�
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_14/while/maximum_iterationsz
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/while/loop_counter�
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/ReadVariableOp:value:0 lstm_14/ReadVariableOp_1:value:0lstm_14/strided_slice:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_14_lstm_cell_14_matmul_readvariableop_resource7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource4lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_14_while_body_132235*%
condR
lstm_14_while_cond_132234*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_14/while�
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02,
*lstm_14/TensorArrayV2Stack/TensorListStack�
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_14/strided_slice_2/stack�
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_14/strided_slice_2/stack_1�
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_2�
lstm_14/strided_slice_2StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_14/strided_slice_2�
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose_1/perm�
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_14/transpose_1v
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/runtime�
lstm_14/AssignVariableOpAssignVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resourcelstm_14/while:output:4^lstm_14/ReadVariableOp-^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
lstm_14/AssignVariableOp�
lstm_14/AssignVariableOp_1AssignVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resourcelstm_14/while:output:5^lstm_14/ReadVariableOp_1(^lstm_14/lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
lstm_14/AssignVariableOp_1�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMul lstm_14/strided_slice_2:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_27/BiasAddj
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*
_output_shapes

:2
dense_27/Relu�
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_28/MatMul/ReadVariableOp�
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_28/MatMul�
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_28/BiasAdd/ReadVariableOp�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_28/BiasAdd�
IdentityIdentitydense_28/BiasAdd:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp^lstm_14/AssignVariableOp^lstm_14/AssignVariableOp_1^lstm_14/ReadVariableOp^lstm_14/ReadVariableOp_1,^lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp+^lstm_14/lstm_cell_14/MatMul/ReadVariableOp-^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp/^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1(^lstm_14/lstm_cell_14/mul/ReadVariableOp^lstm_14/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp24
lstm_14/AssignVariableOplstm_14/AssignVariableOp28
lstm_14/AssignVariableOp_1lstm_14/AssignVariableOp_120
lstm_14/ReadVariableOplstm_14/ReadVariableOp24
lstm_14/ReadVariableOp_1lstm_14/ReadVariableOp_12Z
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp2X
*lstm_14/lstm_cell_14/MatMul/ReadVariableOp*lstm_14/lstm_cell_14/MatMul/ReadVariableOp2\
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp2`
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_12R
'lstm_14/lstm_cell_14/mul/ReadVariableOp'lstm_14/lstm_cell_14/mul/ReadVariableOp2
lstm_14/whilelstm_14/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�M
�	
lstm_14_while_body_132386,
(lstm_14_while_lstm_14_while_loop_counter2
.lstm_14_while_lstm_14_while_maximum_iterations
lstm_14_while_placeholder
lstm_14_while_placeholder_1
lstm_14_while_placeholder_2
lstm_14_while_placeholder_3)
%lstm_14_while_lstm_14_strided_slice_0g
clstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0A
=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0@
<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0
lstm_14_while_identity
lstm_14_while_identity_1
lstm_14_while_identity_2
lstm_14_while_identity_3
lstm_14_while_identity_4
lstm_14_while_identity_5'
#lstm_14_while_lstm_14_strided_slicee
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor=
9lstm_14_while_lstm_cell_14_matmul_readvariableop_resource?
;lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource>
:lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource��1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2A
?lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0lstm_14_while_placeholderHlstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype023
1lstm_14/while/TensorArrayV2Read/TensorListGetItem�
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp�
!lstm_14/while/lstm_cell_14/MatMulMatMul8lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!lstm_14/while/lstm_cell_14/MatMul�
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype024
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp�
#lstm_14/while/lstm_cell_14/MatMul_1MatMullstm_14_while_placeholder_2:lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2%
#lstm_14/while/lstm_cell_14/MatMul_1�
lstm_14/while/lstm_cell_14/addAddV2+lstm_14/while/lstm_cell_14/MatMul:product:0-lstm_14/while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2 
lstm_14/while/lstm_cell_14/add�
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype023
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp�
"lstm_14/while/lstm_cell_14/BiasAddBiasAdd"lstm_14/while/lstm_cell_14/add:z:09lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2$
"lstm_14/while/lstm_cell_14/BiasAdd�
 lstm_14/while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_14/while/lstm_cell_14/Const�
*lstm_14/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_14/while/lstm_cell_14/split/split_dim�
 lstm_14/while/lstm_cell_14/splitSplit3lstm_14/while/lstm_cell_14/split/split_dim:output:0+lstm_14/while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2"
 lstm_14/while/lstm_cell_14/split�
"lstm_14/while/lstm_cell_14/SigmoidSigmoid)lstm_14/while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2$
"lstm_14/while/lstm_cell_14/Sigmoid�
$lstm_14/while/lstm_cell_14/Sigmoid_1Sigmoid)lstm_14/while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2&
$lstm_14/while/lstm_cell_14/Sigmoid_1�
lstm_14/while/lstm_cell_14/mulMul(lstm_14/while/lstm_cell_14/Sigmoid_1:y:0lstm_14_while_placeholder_3*
T0*
_output_shapes

: 2 
lstm_14/while/lstm_cell_14/mul�
lstm_14/while/lstm_cell_14/ReluRelu)lstm_14/while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2!
lstm_14/while/lstm_cell_14/Relu�
 lstm_14/while/lstm_cell_14/mul_1Mul&lstm_14/while/lstm_cell_14/Sigmoid:y:0-lstm_14/while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/mul_1�
 lstm_14/while/lstm_cell_14/add_1AddV2"lstm_14/while/lstm_cell_14/mul:z:0$lstm_14/while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/add_1�
$lstm_14/while/lstm_cell_14/Sigmoid_2Sigmoid)lstm_14/while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2&
$lstm_14/while/lstm_cell_14/Sigmoid_2�
!lstm_14/while/lstm_cell_14/Relu_1Relu$lstm_14/while/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2#
!lstm_14/while/lstm_cell_14/Relu_1�
 lstm_14/while/lstm_cell_14/mul_2Mul(lstm_14/while/lstm_cell_14/Sigmoid_2:y:0/lstm_14/while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2"
 lstm_14/while/lstm_cell_14/mul_2�
2lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_14_while_placeholder_1lstm_14_while_placeholder$lstm_14/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_14/while/TensorArrayV2Write/TensorListSetIteml
lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add/y�
lstm_14/while/addAddV2lstm_14_while_placeholderlstm_14/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/addp
lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/while/add_1/y�
lstm_14/while/add_1AddV2(lstm_14_while_lstm_14_while_loop_counterlstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_14/while/add_1�
lstm_14/while/IdentityIdentitylstm_14/while/add_1:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity�
lstm_14/while/Identity_1Identity.lstm_14_while_lstm_14_while_maximum_iterations2^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_1�
lstm_14/while/Identity_2Identitylstm_14/while/add:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_2�
lstm_14/while/Identity_3IdentityBlstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_14/while/Identity_3�
lstm_14/while/Identity_4Identity$lstm_14/while/lstm_cell_14/mul_2:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_14/while/Identity_4�
lstm_14/while/Identity_5Identity$lstm_14/while/lstm_cell_14/add_1:z:02^lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1^lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp3^lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
lstm_14/while/Identity_5"9
lstm_14_while_identitylstm_14/while/Identity:output:0"=
lstm_14_while_identity_1!lstm_14/while/Identity_1:output:0"=
lstm_14_while_identity_2!lstm_14/while/Identity_2:output:0"=
lstm_14_while_identity_3!lstm_14/while/Identity_3:output:0"=
lstm_14_while_identity_4!lstm_14/while/Identity_4:output:0"=
lstm_14_while_identity_5!lstm_14/while/Identity_5:output:0"L
#lstm_14_while_lstm_14_strided_slice%lstm_14_while_lstm_14_strided_slice_0"z
:lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource<lstm_14_while_lstm_cell_14_biasadd_readvariableop_resource_0"|
;lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource=lstm_14_while_lstm_cell_14_matmul_1_readvariableop_resource_0"x
9lstm_14_while_lstm_cell_14_matmul_readvariableop_resource;lstm_14_while_lstm_cell_14_matmul_readvariableop_resource_0"�
alstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensorclstm_14_while_tensorarrayv2read_tensorlistgetitem_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2f
1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp1lstm_14/while/lstm_cell_14/BiasAdd/ReadVariableOp2d
0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp0lstm_14/while/lstm_cell_14/MatMul/ReadVariableOp2h
2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp2lstm_14/while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_131793

inputs/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_131708*
condR
while_cond_131707*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�8
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_131518

inputs
lstm_cell_14_131430
lstm_cell_14_131432
lstm_cell_14_131434
lstm_cell_14_131436
lstm_cell_14_131438
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�$lstm_cell_14/StatefulPartitionedCall�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0lstm_cell_14_131430lstm_cell_14_131432lstm_cell_14_131434lstm_cell_14_131436lstm_cell_14_131438*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1310402&
$lstm_cell_14/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timet
ReadVariableOpReadVariableOplstm_cell_14_131430*
_output_shapes

: *
dtype02
ReadVariableOpx
ReadVariableOp_1ReadVariableOplstm_cell_14_131432*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_131434lstm_cell_14_131436lstm_cell_14_131438*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_131449*
condR
while_cond_131448*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOplstm_cell_14_131430while:output:4^ReadVariableOp%^lstm_cell_14/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOplstm_cell_14_131432while:output:5^ReadVariableOp_1%^lstm_cell_14/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1%^lstm_cell_14/StatefulPartitionedCall^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
ؒ
�

!__inference__wrapped_model_130986
lstm_14_inputE
Asequential_14_lstm_14_lstm_cell_14_matmul_readvariableop_resourceG
Csequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_resourceI
Esequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resourceF
Bsequential_14_lstm_14_lstm_cell_14_biasadd_readvariableop_resourceB
>sequential_14_lstm_14_lstm_cell_14_mul_readvariableop_resource9
5sequential_14_dense_27_matmul_readvariableop_resource:
6sequential_14_dense_27_biasadd_readvariableop_resource9
5sequential_14_dense_28_matmul_readvariableop_resource:
6sequential_14_dense_28_biasadd_readvariableop_resource
identity��-sequential_14/dense_27/BiasAdd/ReadVariableOp�,sequential_14/dense_27/MatMul/ReadVariableOp�-sequential_14/dense_28/BiasAdd/ReadVariableOp�,sequential_14/dense_28/MatMul/ReadVariableOp�&sequential_14/lstm_14/AssignVariableOp�(sequential_14/lstm_14/AssignVariableOp_1�$sequential_14/lstm_14/ReadVariableOp�&sequential_14/lstm_14/ReadVariableOp_1�9sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�8sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp�:sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�<sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�5sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp�sequential_14/lstm_14/while�
$sequential_14/lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_14/lstm_14/transpose/perm�
sequential_14/lstm_14/transpose	Transposelstm_14_input-sequential_14/lstm_14/transpose/perm:output:0*
T0*"
_output_shapes
:2!
sequential_14/lstm_14/transpose�
sequential_14/lstm_14/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
sequential_14/lstm_14/Shape�
)sequential_14/lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_14/lstm_14/strided_slice/stack�
+sequential_14/lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_14/strided_slice/stack_1�
+sequential_14/lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_14/lstm_14/strided_slice/stack_2�
#sequential_14/lstm_14/strided_sliceStridedSlice$sequential_14/lstm_14/Shape:output:02sequential_14/lstm_14/strided_slice/stack:output:04sequential_14/lstm_14/strided_slice/stack_1:output:04sequential_14/lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_14/lstm_14/strided_slice�
1sequential_14/lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential_14/lstm_14/TensorArrayV2/element_shape�
#sequential_14/lstm_14/TensorArrayV2TensorListReserve:sequential_14/lstm_14/TensorArrayV2/element_shape:output:0,sequential_14/lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_14/lstm_14/TensorArrayV2�
Ksequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2M
Ksequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_14/lstm_14/transpose:y:0Tsequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensor�
+sequential_14/lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_14/lstm_14/strided_slice_1/stack�
-sequential_14/lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_14/strided_slice_1/stack_1�
-sequential_14/lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_14/strided_slice_1/stack_2�
%sequential_14/lstm_14/strided_slice_1StridedSlice#sequential_14/lstm_14/transpose:y:04sequential_14/lstm_14/strided_slice_1/stack:output:06sequential_14/lstm_14/strided_slice_1/stack_1:output:06sequential_14/lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2'
%sequential_14/lstm_14/strided_slice_1�
8sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOpReadVariableOpAsequential_14_lstm_14_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02:
8sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp�
)sequential_14/lstm_14/lstm_cell_14/MatMulMatMul.sequential_14/lstm_14/strided_slice_1:output:0@sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2+
)sequential_14/lstm_14/lstm_cell_14/MatMul�
:sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOpCsequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02<
:sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�
<sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOpEsequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02>
<sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�
+sequential_14/lstm_14/lstm_cell_14/MatMul_1MatMulBsequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp:value:0Dsequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2-
+sequential_14/lstm_14/lstm_cell_14/MatMul_1�
&sequential_14/lstm_14/lstm_cell_14/addAddV23sequential_14/lstm_14/lstm_cell_14/MatMul:product:05sequential_14/lstm_14/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2(
&sequential_14/lstm_14/lstm_cell_14/add�
9sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOpBsequential_14_lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�
*sequential_14/lstm_14/lstm_cell_14/BiasAddBiasAdd*sequential_14/lstm_14/lstm_cell_14/add:z:0Asequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2,
*sequential_14/lstm_14/lstm_cell_14/BiasAdd�
(sequential_14/lstm_14/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_14/lstm_14/lstm_cell_14/Const�
2sequential_14/lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_14/lstm_14/lstm_cell_14/split/split_dim�
(sequential_14/lstm_14/lstm_cell_14/splitSplit;sequential_14/lstm_14/lstm_cell_14/split/split_dim:output:03sequential_14/lstm_14/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2*
(sequential_14/lstm_14/lstm_cell_14/split�
*sequential_14/lstm_14/lstm_cell_14/SigmoidSigmoid1sequential_14/lstm_14/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2,
*sequential_14/lstm_14/lstm_cell_14/Sigmoid�
,sequential_14/lstm_14/lstm_cell_14/Sigmoid_1Sigmoid1sequential_14/lstm_14/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2.
,sequential_14/lstm_14/lstm_cell_14/Sigmoid_1�
5sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOpReadVariableOp>sequential_14_lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype027
5sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp�
&sequential_14/lstm_14/lstm_cell_14/mulMul0sequential_14/lstm_14/lstm_cell_14/Sigmoid_1:y:0=sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2(
&sequential_14/lstm_14/lstm_cell_14/mul�
'sequential_14/lstm_14/lstm_cell_14/ReluRelu1sequential_14/lstm_14/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2)
'sequential_14/lstm_14/lstm_cell_14/Relu�
(sequential_14/lstm_14/lstm_cell_14/mul_1Mul.sequential_14/lstm_14/lstm_cell_14/Sigmoid:y:05sequential_14/lstm_14/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2*
(sequential_14/lstm_14/lstm_cell_14/mul_1�
(sequential_14/lstm_14/lstm_cell_14/add_1AddV2*sequential_14/lstm_14/lstm_cell_14/mul:z:0,sequential_14/lstm_14/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2*
(sequential_14/lstm_14/lstm_cell_14/add_1�
,sequential_14/lstm_14/lstm_cell_14/Sigmoid_2Sigmoid1sequential_14/lstm_14/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2.
,sequential_14/lstm_14/lstm_cell_14/Sigmoid_2�
)sequential_14/lstm_14/lstm_cell_14/Relu_1Relu,sequential_14/lstm_14/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2+
)sequential_14/lstm_14/lstm_cell_14/Relu_1�
(sequential_14/lstm_14/lstm_cell_14/mul_2Mul0sequential_14/lstm_14/lstm_cell_14/Sigmoid_2:y:07sequential_14/lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2*
(sequential_14/lstm_14/lstm_cell_14/mul_2�
3sequential_14/lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       25
3sequential_14/lstm_14/TensorArrayV2_1/element_shape�
%sequential_14/lstm_14/TensorArrayV2_1TensorListReserve<sequential_14/lstm_14/TensorArrayV2_1/element_shape:output:0,sequential_14/lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_14/lstm_14/TensorArrayV2_1z
sequential_14/lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_14/lstm_14/time�
$sequential_14/lstm_14/ReadVariableOpReadVariableOpCsequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$sequential_14/lstm_14/ReadVariableOp�
&sequential_14/lstm_14/ReadVariableOp_1ReadVariableOp>sequential_14_lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential_14/lstm_14/ReadVariableOp_1�
.sequential_14/lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential_14/lstm_14/while/maximum_iterations�
(sequential_14/lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_14/lstm_14/while/loop_counter�
sequential_14/lstm_14/whileWhile1sequential_14/lstm_14/while/loop_counter:output:07sequential_14/lstm_14/while/maximum_iterations:output:0#sequential_14/lstm_14/time:output:0.sequential_14/lstm_14/TensorArrayV2_1:handle:0,sequential_14/lstm_14/ReadVariableOp:value:0.sequential_14/lstm_14/ReadVariableOp_1:value:0,sequential_14/lstm_14/strided_slice:output:0Msequential_14/lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_14_lstm_14_lstm_cell_14_matmul_readvariableop_resourceEsequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resourceBsequential_14_lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_14_lstm_14_while_body_130888*3
cond+R)
'sequential_14_lstm_14_while_cond_130887*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
sequential_14/lstm_14/while�
Fsequential_14/lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2H
Fsequential_14/lstm_14/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential_14/lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_14/lstm_14/while:output:3Osequential_14/lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02:
8sequential_14/lstm_14/TensorArrayV2Stack/TensorListStack�
+sequential_14/lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential_14/lstm_14/strided_slice_2/stack�
-sequential_14/lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_14/lstm_14/strided_slice_2/stack_1�
-sequential_14/lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_14/lstm_14/strided_slice_2/stack_2�
%sequential_14/lstm_14/strided_slice_2StridedSliceAsequential_14/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:04sequential_14/lstm_14/strided_slice_2/stack:output:06sequential_14/lstm_14/strided_slice_2/stack_1:output:06sequential_14/lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2'
%sequential_14/lstm_14/strided_slice_2�
&sequential_14/lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_14/lstm_14/transpose_1/perm�
!sequential_14/lstm_14/transpose_1	TransposeAsequential_14/lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_14/lstm_14/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2#
!sequential_14/lstm_14/transpose_1�
sequential_14/lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_14/lstm_14/runtime�
&sequential_14/lstm_14/AssignVariableOpAssignVariableOpCsequential_14_lstm_14_lstm_cell_14_matmul_1_readvariableop_resource$sequential_14/lstm_14/while:output:4%^sequential_14/lstm_14/ReadVariableOp;^sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02(
&sequential_14/lstm_14/AssignVariableOp�
(sequential_14/lstm_14/AssignVariableOp_1AssignVariableOp>sequential_14_lstm_14_lstm_cell_14_mul_readvariableop_resource$sequential_14/lstm_14/while:output:5'^sequential_14/lstm_14/ReadVariableOp_16^sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02*
(sequential_14/lstm_14/AssignVariableOp_1�
,sequential_14/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_14/dense_27/MatMul/ReadVariableOp�
sequential_14/dense_27/MatMulMatMul.sequential_14/lstm_14/strided_slice_2:output:04sequential_14/dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_14/dense_27/MatMul�
-sequential_14/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_14/dense_27/BiasAdd/ReadVariableOp�
sequential_14/dense_27/BiasAddBiasAdd'sequential_14/dense_27/MatMul:product:05sequential_14/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_14/dense_27/BiasAdd�
sequential_14/dense_27/ReluRelu'sequential_14/dense_27/BiasAdd:output:0*
T0*
_output_shapes

:2
sequential_14/dense_27/Relu�
,sequential_14/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02.
,sequential_14/dense_28/MatMul/ReadVariableOp�
sequential_14/dense_28/MatMulMatMul)sequential_14/dense_27/Relu:activations:04sequential_14/dense_28/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_14/dense_28/MatMul�
-sequential_14/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_14/dense_28/BiasAdd/ReadVariableOp�
sequential_14/dense_28/BiasAddBiasAdd'sequential_14/dense_28/MatMul:product:05sequential_14/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_14/dense_28/BiasAdd�
IdentityIdentity'sequential_14/dense_28/BiasAdd:output:0.^sequential_14/dense_27/BiasAdd/ReadVariableOp-^sequential_14/dense_27/MatMul/ReadVariableOp.^sequential_14/dense_28/BiasAdd/ReadVariableOp-^sequential_14/dense_28/MatMul/ReadVariableOp'^sequential_14/lstm_14/AssignVariableOp)^sequential_14/lstm_14/AssignVariableOp_1%^sequential_14/lstm_14/ReadVariableOp'^sequential_14/lstm_14/ReadVariableOp_1:^sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp9^sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp;^sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp=^sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_16^sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp^sequential_14/lstm_14/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2^
-sequential_14/dense_27/BiasAdd/ReadVariableOp-sequential_14/dense_27/BiasAdd/ReadVariableOp2\
,sequential_14/dense_27/MatMul/ReadVariableOp,sequential_14/dense_27/MatMul/ReadVariableOp2^
-sequential_14/dense_28/BiasAdd/ReadVariableOp-sequential_14/dense_28/BiasAdd/ReadVariableOp2\
,sequential_14/dense_28/MatMul/ReadVariableOp,sequential_14/dense_28/MatMul/ReadVariableOp2P
&sequential_14/lstm_14/AssignVariableOp&sequential_14/lstm_14/AssignVariableOp2T
(sequential_14/lstm_14/AssignVariableOp_1(sequential_14/lstm_14/AssignVariableOp_12L
$sequential_14/lstm_14/ReadVariableOp$sequential_14/lstm_14/ReadVariableOp2P
&sequential_14/lstm_14/ReadVariableOp_1&sequential_14/lstm_14/ReadVariableOp_12v
9sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp9sequential_14/lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp2t
8sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp8sequential_14/lstm_14/lstm_cell_14/MatMul/ReadVariableOp2x
:sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp:sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp2|
<sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1<sequential_14/lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_12n
5sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp5sequential_14/lstm_14/lstm_cell_14/mul/ReadVariableOp2:
sequential_14/lstm_14/whilesequential_14/lstm_14/while:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132128

inputs
lstm_14_132106
lstm_14_132108
lstm_14_132110
lstm_14_132112
lstm_14_132114
dense_27_132117
dense_27_132119
dense_28_132122
dense_28_132124
identity�� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�lstm_14/StatefulPartitionedCall�
lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputslstm_14_132106lstm_14_132108lstm_14_132110lstm_14_132112lstm_14_132114*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1319312!
lstm_14/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_27_132117dense_27_132119*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1319842"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_132122dense_28_132124*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1320102"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133214

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOps
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1S
mulMulSigmoid_1:y:0states_1*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:HD

_output_shapes

: 
"
_user_specified_name
states/0:HD

_output_shapes

: 
"
_user_specified_name
states/1
�A
�
while_body_132583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_131040

inputs

states
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMuly
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1q
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes

: *
dtype02
mul/ReadVariableOpe
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:&"
 
_user_specified_namestates:&"
 
_user_specified_namestates
�
�
(__inference_lstm_14_layer_call_fn_132836
inputs_0
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1316392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0
�

�
-__inference_lstm_cell_14_layer_call_fn_133463

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 * 
_output_shapes
:::*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1334502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0:($
"
_user_specified_name
states/1
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_132974

inputs/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_132889*
condR
while_cond_132888*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�	
�
D__inference_dense_27_layer_call_and_return_conditional_losses_131984

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAddO
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
: ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

: 
 
_user_specified_nameinputs
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_133112

inputs/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_133027*
condR
while_cond_133026*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
while_cond_132888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_132888___redundant_placeholder04
0while_while_cond_132888___redundant_placeholder14
0while_while_cond_132888___redundant_placeholder24
0while_while_cond_132888___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132052
lstm_14_input
lstm_14_132030
lstm_14_132032
lstm_14_132034
lstm_14_132036
lstm_14_132038
dense_27_132041
dense_27_132043
dense_28_132046
dense_28_132048
identity�� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�lstm_14/StatefulPartitionedCall�
lstm_14/StatefulPartitionedCallStatefulPartitionedCalllstm_14_inputlstm_14_132030lstm_14_132032lstm_14_132034lstm_14_132036lstm_14_132038*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1319312!
lstm_14/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_27_132041dense_27_132043*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1319842"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_132046dense_28_132048*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1320102"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�A
�
while_body_131846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�A
�
while_body_131708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
.__inference_sequential_14_layer_call_fn_132101
lstm_14_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1320802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�
~
)__inference_dense_27_layer_call_fn_133162

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1319842
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
: ::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

: 
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_131223

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOpq
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1S
mulMulSigmoid_1:y:0states_1*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:FB

_output_shapes

: 
 
_user_specified_namestates:FB

_output_shapes

: 
 
_user_specified_namestates
�
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132080

inputs
lstm_14_132058
lstm_14_132060
lstm_14_132062
lstm_14_132064
lstm_14_132066
dense_27_132069
dense_27_132071
dense_28_132074
dense_28_132076
identity�� dense_27/StatefulPartitionedCall� dense_28/StatefulPartitionedCall�lstm_14/StatefulPartitionedCall�
lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputslstm_14_132058lstm_14_132060lstm_14_132062lstm_14_132064lstm_14_132066*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1317932!
lstm_14/StatefulPartitionedCall�
 dense_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_14/StatefulPartitionedCall:output:0dense_27_132069dense_27_132071*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_1319842"
 dense_27/StatefulPartitionedCall�
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_132074dense_28_132076*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1320102"
 dense_28/StatefulPartitionedCall�
IdentityIdentity)dense_28/StatefulPartitionedCall:output:0!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall ^lstm_14/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2B
lstm_14/StatefulPartitionedCalllstm_14/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133247

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOps
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1S
mulMulSigmoid_1:y:0states_1*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:HD

_output_shapes

: 
"
_user_specified_name
states/0:HD

_output_shapes

: 
"
_user_specified_name
states/1
�
�
while_cond_131707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_131707___redundant_placeholder04
0while_while_cond_131707___redundant_placeholder14
0while_while_cond_131707___redundant_placeholder24
0while_while_cond_131707___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
$__inference_signature_wrapper_132182
lstm_14_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_1309862
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
"
_output_shapes
:
'
_user_specified_namelstm_14_input
�
�
(__inference_lstm_14_layer_call_fn_132821
inputs_0
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_14_layer_call_and_return_conditional_losses_1315182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133355

inputs
states_0
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMulu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:2

MatMul_1[
addAddV2MatMul:product:0MatMul_1:output:0*
T0*
_output_shapes
:2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpi
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*$
_output_shapes
::::*
	num_split2
splitP
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:2	
SigmoidT
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:2
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mulG
ReluRelusplit:output:2*
T0*
_output_shapes
:2
ReluY
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes
:2
mul_1N
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1T
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:2
	Sigmoid_2F
Relu_1Relu	add_1:z:0*
T0*
_output_shapes
:2
Relu_1]
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes
:2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0:($
"
_user_specified_name
states/1
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_131075

inputs

states
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMuly
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

: *
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2

MatMul_1c
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	�2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpp
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
splitV
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

: 2	
SigmoidZ
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

: 2
	Sigmoid_1q
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes

: *
dtype02
mul/ReadVariableOpe
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
mulM
ReluRelusplit:output:2*
T0*
_output_shapes

: 2
Relu_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes

: 2
mul_1T
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

: 2
add_1Z
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

: 2
	Sigmoid_2L
Relu_1Relu	add_1:z:0*
T0*
_output_shapes

: 2
Relu_1c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes

: 2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:&"
 
_user_specified_namestates:&"
 
_user_specified_namestates
�
�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133318

inputs
states_0
states_1"
matmul_readvariableop_resource&
"matmul_1_readvariableop_1_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1�mul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
MatMulu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp�
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02
MatMul_1/ReadVariableOp_1�
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:2

MatMul_1[
addAddV2MatMul:product:0MatMul_1:output:0*
T0*
_output_shapes
:2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpi
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*$
_output_shapes
::::*
	num_split2
splitP
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:2	
SigmoidT
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:2
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_1*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mulG
ReluRelusplit:output:2*
T0*
_output_shapes
:2
ReluY
mul_1MulSigmoid:y:0Relu:activations:0*
T0*
_output_shapes
:2
mul_1N
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:2
add_1T
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:2
	Sigmoid_2F
Relu_1Relu	add_1:z:0*
T0*
_output_shapes
:2
Relu_1]
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*
_output_shapes
:2
mul_2�
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity�

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1�

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1^mul/ReadVariableOp*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*1
_input_shapes 
::::::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0:($
"
_user_specified_name
states/1
�A
�
while_body_132889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_131569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_131569___redundant_placeholder04
0while_while_cond_131569___redundant_placeholder14
0while_while_cond_131569___redundant_placeholder24
0while_while_cond_131569___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
:
�
�
.__inference_sequential_14_layer_call_fn_132530

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_1321282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�$
�
while_body_131570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_14_131594_0
while_lstm_cell_14_131596_0
while_lstm_cell_14_131598_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_14_131594
while_lstm_cell_14_131596
while_lstm_cell_14_131598��*while/lstm_cell_14/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_131594_0while_lstm_cell_14_131596_0while_lstm_cell_14_131598_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1312232,
*while/lstm_cell_14/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2+^while/lstm_cell_14/StatefulPartitionedCall*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_14_131594while_lstm_cell_14_131594_0"8
while_lstm_cell_14_131596while_lstm_cell_14_131596_0"8
while_lstm_cell_14_131598while_lstm_cell_14_131598_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
~
)__inference_dense_28_layer_call_fn_133181

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_1320102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
�D
�
__inference__traced_save_133576
file_prefix.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableopD
@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop8
4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop/
+savev2_lstm_14_variable_read_readvariableop1
-savev2_lstm_14_variable_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableopA
=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_14_lstm_cell_14_kernel_read_readvariableop@savev2_lstm_14_lstm_cell_14_recurrent_kernel_read_readvariableop4savev2_lstm_14_lstm_cell_14_bias_read_readvariableop+savev2_lstm_14_variable_read_readvariableop-savev2_lstm_14_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_m_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop=savev2_adam_lstm_14_lstm_cell_14_kernel_v_read_readvariableopGsavev2_adam_lstm_14_lstm_cell_14_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_14_lstm_cell_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : :::: : : : : :	�:	 �:�: : : : : ::::	�:	 �:�: ::::	�:	 �:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:

_output_shapes
: 
�t
�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132484

inputs7
3lstm_14_lstm_cell_14_matmul_readvariableop_resource9
5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource;
7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource8
4lstm_14_lstm_cell_14_biasadd_readvariableop_resource4
0lstm_14_lstm_cell_14_mul_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity��dense_27/BiasAdd/ReadVariableOp�dense_27/MatMul/ReadVariableOp�dense_28/BiasAdd/ReadVariableOp�dense_28/MatMul/ReadVariableOp�lstm_14/AssignVariableOp�lstm_14/AssignVariableOp_1�lstm_14/ReadVariableOp�lstm_14/ReadVariableOp_1�+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�*lstm_14/lstm_cell_14/MatMul/ReadVariableOp�,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�'lstm_14/lstm_cell_14/mul/ReadVariableOp�lstm_14/while�
lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose/perm�
lstm_14/transpose	Transposeinputslstm_14/transpose/perm:output:0*
T0*"
_output_shapes
:2
lstm_14/transposes
lstm_14/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
lstm_14/Shape�
lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice/stack�
lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_1�
lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_14/strided_slice/stack_2�
lstm_14/strided_sliceStridedSlicelstm_14/Shape:output:0$lstm_14/strided_slice/stack:output:0&lstm_14/strided_slice/stack_1:output:0&lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_14/strided_slice�
#lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#lstm_14/TensorArrayV2/element_shape�
lstm_14/TensorArrayV2TensorListReserve,lstm_14/TensorArrayV2/element_shape:output:0lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2�
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape�
/lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_14/transpose:y:0Flstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_14/TensorArrayUnstack/TensorListFromTensor�
lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_14/strided_slice_1/stack�
lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_1�
lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_1/stack_2�
lstm_14/strided_slice_1StridedSlicelstm_14/transpose:y:0&lstm_14/strided_slice_1/stack:output:0(lstm_14/strided_slice_1/stack_1:output:0(lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
lstm_14/strided_slice_1�
*lstm_14/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3lstm_14_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*lstm_14/lstm_cell_14/MatMul/ReadVariableOp�
lstm_14/lstm_cell_14/MatMulMatMul lstm_14/strided_slice_1:output:02lstm_14/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/MatMul�
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02.
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp�
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype020
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_14/lstm_cell_14/MatMul_1MatMul4lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp:value:06lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/MatMul_1�
lstm_14/lstm_cell_14/addAddV2%lstm_14/lstm_cell_14/MatMul:product:0'lstm_14/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/add�
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_14/lstm_cell_14/BiasAddBiasAddlstm_14/lstm_cell_14/add:z:03lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_14/lstm_cell_14/BiasAddz
lstm_14/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_14/lstm_cell_14/Const�
$lstm_14/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_14/lstm_cell_14/split/split_dim�
lstm_14/lstm_cell_14/splitSplit-lstm_14/lstm_cell_14/split/split_dim:output:0%lstm_14/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_14/lstm_cell_14/split�
lstm_14/lstm_cell_14/SigmoidSigmoid#lstm_14/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Sigmoid�
lstm_14/lstm_cell_14/Sigmoid_1Sigmoid#lstm_14/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2 
lstm_14/lstm_cell_14/Sigmoid_1�
'lstm_14/lstm_cell_14/mul/ReadVariableOpReadVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02)
'lstm_14/lstm_cell_14/mul/ReadVariableOp�
lstm_14/lstm_cell_14/mulMul"lstm_14/lstm_cell_14/Sigmoid_1:y:0/lstm_14/lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul�
lstm_14/lstm_cell_14/ReluRelu#lstm_14/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Relu�
lstm_14/lstm_cell_14/mul_1Mul lstm_14/lstm_cell_14/Sigmoid:y:0'lstm_14/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul_1�
lstm_14/lstm_cell_14/add_1AddV2lstm_14/lstm_cell_14/mul:z:0lstm_14/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/add_1�
lstm_14/lstm_cell_14/Sigmoid_2Sigmoid#lstm_14/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2 
lstm_14/lstm_cell_14/Sigmoid_2�
lstm_14/lstm_cell_14/Relu_1Relulstm_14/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/Relu_1�
lstm_14/lstm_cell_14/mul_2Mul"lstm_14/lstm_cell_14/Sigmoid_2:y:0)lstm_14/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_14/lstm_cell_14/mul_2�
%lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%lstm_14/TensorArrayV2_1/element_shape�
lstm_14/TensorArrayV2_1TensorListReserve.lstm_14/TensorArrayV2_1/element_shape:output:0lstm_14/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_14/TensorArrayV2_1^
lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/time�
lstm_14/ReadVariableOpReadVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
lstm_14/ReadVariableOp�
lstm_14/ReadVariableOp_1ReadVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
lstm_14/ReadVariableOp_1�
 lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 lstm_14/while/maximum_iterationsz
lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_14/while/loop_counter�
lstm_14/whileWhile#lstm_14/while/loop_counter:output:0)lstm_14/while/maximum_iterations:output:0lstm_14/time:output:0 lstm_14/TensorArrayV2_1:handle:0lstm_14/ReadVariableOp:value:0 lstm_14/ReadVariableOp_1:value:0lstm_14/strided_slice:output:0?lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_14_lstm_cell_14_matmul_readvariableop_resource7lstm_14_lstm_cell_14_matmul_1_readvariableop_1_resource4lstm_14_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_14_while_body_132386*%
condR
lstm_14_while_cond_132385*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
lstm_14/while�
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8lstm_14/TensorArrayV2Stack/TensorListStack/element_shape�
*lstm_14/TensorArrayV2Stack/TensorListStackTensorListStacklstm_14/while:output:3Alstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02,
*lstm_14/TensorArrayV2Stack/TensorListStack�
lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
lstm_14/strided_slice_2/stack�
lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_14/strided_slice_2/stack_1�
lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_14/strided_slice_2/stack_2�
lstm_14/strided_slice_2StridedSlice3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_14/strided_slice_2/stack:output:0(lstm_14/strided_slice_2/stack_1:output:0(lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
lstm_14/strided_slice_2�
lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_14/transpose_1/perm�
lstm_14/transpose_1	Transpose3lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_14/transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
lstm_14/transpose_1v
lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_14/runtime�
lstm_14/AssignVariableOpAssignVariableOp5lstm_14_lstm_cell_14_matmul_1_readvariableop_resourcelstm_14/while:output:4^lstm_14/ReadVariableOp-^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
lstm_14/AssignVariableOp�
lstm_14/AssignVariableOp_1AssignVariableOp0lstm_14_lstm_cell_14_mul_readvariableop_resourcelstm_14/while:output:5^lstm_14/ReadVariableOp_1(^lstm_14/lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
lstm_14/AssignVariableOp_1�
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_27/MatMul/ReadVariableOp�
dense_27/MatMulMatMul lstm_14/strided_slice_2:output:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_27/MatMul�
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_27/BiasAdd/ReadVariableOp�
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_27/BiasAddj
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*
_output_shapes

:2
dense_27/Relu�
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_28/MatMul/ReadVariableOp�
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_28/MatMul�
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_28/BiasAdd/ReadVariableOp�
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_28/BiasAdd�
IdentityIdentitydense_28/BiasAdd:output:0 ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp^lstm_14/AssignVariableOp^lstm_14/AssignVariableOp_1^lstm_14/ReadVariableOp^lstm_14/ReadVariableOp_1,^lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp+^lstm_14/lstm_cell_14/MatMul/ReadVariableOp-^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp/^lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1(^lstm_14/lstm_cell_14/mul/ReadVariableOp^lstm_14/while*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*E
_input_shapes4
2::::::::::2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp24
lstm_14/AssignVariableOplstm_14/AssignVariableOp28
lstm_14/AssignVariableOp_1lstm_14/AssignVariableOp_120
lstm_14/ReadVariableOplstm_14/ReadVariableOp24
lstm_14/ReadVariableOp_1lstm_14/ReadVariableOp_12Z
+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp+lstm_14/lstm_cell_14/BiasAdd/ReadVariableOp2X
*lstm_14/lstm_cell_14/MatMul/ReadVariableOp*lstm_14/lstm_cell_14/MatMul/ReadVariableOp2\
,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp,lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp2`
.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_1.lstm_14/lstm_cell_14/MatMul_1/ReadVariableOp_12R
'lstm_14/lstm_cell_14/mul/ReadVariableOp'lstm_14/lstm_cell_14/mul/ReadVariableOp2
lstm_14/whilelstm_14/while:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�
�
D__inference_dense_28_layer_call_and_return_conditional_losses_133172

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOpj
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*%
_input_shapes
:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
�A
�
while_body_133027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_14_matmul_readvariableop_resource_09
5while_lstm_cell_14_matmul_1_readvariableop_resource_08
4while_lstm_cell_14_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_14_matmul_readvariableop_resource7
3while_lstm_cell_14_matmul_1_readvariableop_resource6
2while_lstm_cell_14_biasadd_readvariableop_resource��)while/lstm_cell_14/BiasAdd/ReadVariableOp�(while/lstm_cell_14/MatMul/ReadVariableOp�*while/lstm_cell_14/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/lstm_cell_14/MatMul/ReadVariableOp�
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul�
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype02,
*while/lstm_cell_14/MatMul_1/ReadVariableOp�
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/MatMul_1�
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/add�
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02+
)while/lstm_cell_14/BiasAdd/ReadVariableOp�
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
while/lstm_cell_14/BiasAddv
while/lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_14/Const�
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_14/split/split_dim�
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
while/lstm_cell_14/split�
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid�
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_1�
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul�
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu�
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_1�
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/add_1�
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
while/lstm_cell_14/Sigmoid_2�
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/Relu_1�
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
while/lstm_cell_14/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*
T0*
_output_shapes

: 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : : : : : :::2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_lstm_cell_14_layer_call_fn_133264

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1311902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*=
_input_shapes,
*:: : :::22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs:HD

_output_shapes

: 
"
_user_specified_name
states/0:HD

_output_shapes

: 
"
_user_specified_name
states/1
�T
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_131931

inputs/
+lstm_cell_14_matmul_readvariableop_resource1
-lstm_cell_14_matmul_1_readvariableop_resource3
/lstm_cell_14_matmul_1_readvariableop_1_resource0
,lstm_cell_14_biasadd_readvariableop_resource,
(lstm_cell_14_mul_readvariableop_resource
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�#lstm_cell_14/BiasAdd/ReadVariableOp�"lstm_cell_14/MatMul/ReadVariableOp�$lstm_cell_14/MatMul_1/ReadVariableOp�&lstm_cell_14/MatMul_1/ReadVariableOp_1�lstm_cell_14/mul/ReadVariableOp�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permq
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"lstm_cell_14/MatMul/ReadVariableOp�
lstm_cell_14/MatMulMatMulstrided_slice_1:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul�
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02&
$lstm_cell_14/MatMul_1/ReadVariableOp�
&lstm_cell_14/MatMul_1/ReadVariableOp_1ReadVariableOp/lstm_cell_14_matmul_1_readvariableop_1_resource*
_output_shapes
:	 �*
dtype02(
&lstm_cell_14/MatMul_1/ReadVariableOp_1�
lstm_cell_14/MatMul_1MatMul,lstm_cell_14/MatMul_1/ReadVariableOp:value:0.lstm_cell_14/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/MatMul_1�
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*
_output_shapes
:	�2
lstm_cell_14/add�
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#lstm_cell_14/BiasAdd/ReadVariableOp�
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2
lstm_cell_14/BiasAddj
lstm_cell_14/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/Const~
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_14/split/split_dim�
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*<
_output_shapes*
(: : : : *
	num_split2
lstm_cell_14/split}
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid�
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_1�
lstm_cell_14/mul/ReadVariableOpReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02!
lstm_cell_14/mul/ReadVariableOp�
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0'lstm_cell_14/mul/ReadVariableOp:value:0*
T0*
_output_shapes

: 2
lstm_cell_14/mult
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*
_output_shapes

: 2
lstm_cell_14/Relu�
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_1�
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/add_1�
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*
_output_shapes

: 2
lstm_cell_14/Sigmoid_2s
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*
_output_shapes

: 2
lstm_cell_14/Relu_1�
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*
_output_shapes

: 2
lstm_cell_14/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOp(lstm_cell_14_mul_readvariableop_resource*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource/lstm_cell_14_matmul_1_readvariableop_1_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_131846*
condR
while_cond_131845*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
: *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
: 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOp-lstm_cell_14_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOp(lstm_cell_14_mul_readvariableop_resourcewhile:output:5^ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp'^lstm_cell_14/MatMul_1/ReadVariableOp_1 ^lstm_cell_14/mul/ReadVariableOp^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*5
_input_shapes$
"::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2P
&lstm_cell_14/MatMul_1/ReadVariableOp_1&lstm_cell_14/MatMul_1/ReadVariableOp_12B
lstm_cell_14/mul/ReadVariableOplstm_cell_14/mul/ReadVariableOp2
whilewhile:J F
"
_output_shapes
:
 
_user_specified_nameinputs
�8
�
C__inference_lstm_14_layer_call_and_return_conditional_losses_131639

inputs
lstm_cell_14_131551
lstm_cell_14_131553
lstm_cell_14_131555
lstm_cell_14_131557
lstm_cell_14_131559
identity��AssignVariableOp�AssignVariableOp_1�ReadVariableOp�ReadVariableOp_1�$lstm_cell_14/StatefulPartitionedCall�whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask2
strided_slice_1�
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0lstm_cell_14_131551lstm_cell_14_131553lstm_cell_14_131555lstm_cell_14_131557lstm_cell_14_131559*
Tin

2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
: : : *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_1310752&
$lstm_cell_14/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timet
ReadVariableOpReadVariableOplstm_cell_14_131551*
_output_shapes

: *
dtype02
ReadVariableOpx
ReadVariableOp_1ReadVariableOplstm_cell_14_131553*
_output_shapes

: *
dtype02
ReadVariableOp_1
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0ReadVariableOp_1:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_131555lstm_cell_14_131557lstm_cell_14_131559*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*:
_output_shapes(
&: : : : : : : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_131570*
condR
while_cond_131569*9
output_shapes(
&: : : : : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

: *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
AssignVariableOpAssignVariableOplstm_cell_14_131551while:output:4^ReadVariableOp%^lstm_cell_14/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp�
AssignVariableOp_1AssignVariableOplstm_cell_14_131553while:output:5^ReadVariableOp_1%^lstm_cell_14/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp_1�
IdentityIdentitystrided_slice_2:output:0^AssignVariableOp^AssignVariableOp_1^ReadVariableOp^ReadVariableOp_1%^lstm_cell_14/StatefulPartitionedCall^while*
T0*
_output_shapes

: 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
B
lstm_14_input1
serving_default_lstm_14_input:03
dense_28'
StatefulPartitionedCall:0tensorflow/serving/predict:̾
�(
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
W_default_save_signature
*X&call_and_return_all_conditional_losses
Y__call__"�&
_tf_keras_sequential�&{"class_name": "Sequential", "name": "sequential_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_14_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [1, null, 7]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 7]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_14_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"�

_tf_keras_rnn_layer�
{"class_name": "LSTM", "name": "lstm_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "stateful": true, "must_restore_from_config": false, "config": {"name": "lstm_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [1, 1, 7]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [1, null, 7]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 7]}}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 32]}}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*^&call_and_return_all_conditional_losses
___call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 8]}}
�
iter

beta_1

beta_2
	decay
 learning_ratemImJmKmL!mM"mN#mOvPvQvRvS!vT"vU#vV"
	optimizer
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
�

$layers
%layer_regularization_losses
	variables
regularization_losses
trainable_variables
&metrics
'layer_metrics
(non_trainable_variables
Y__call__
W_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
`serving_default"
signature_map
�

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
*a&call_and_return_all_conditional_losses
b__call__"�
_tf_keras_layer�{"class_name": "LSTMCell", "name": "lstm_cell_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_14", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
�

-states

.layers
/layer_regularization_losses
	variables
regularization_losses
trainable_variables
0metrics
1layer_metrics
2non_trainable_variables
[__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_27/kernel
:2dense_27/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�

3layers
4layer_regularization_losses
	variables
regularization_losses
trainable_variables
5metrics
6layer_metrics
7non_trainable_variables
]__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
!:2dense_28/kernel
:2dense_28/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�

8layers
9layer_regularization_losses
	variables
regularization_losses
trainable_variables
:metrics
;layer_metrics
<non_trainable_variables
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2lstm_14/lstm_cell_14/kernel
8:6	 �2%lstm_14/lstm_cell_14/recurrent_kernel
(:&�2lstm_14/lstm_cell_14/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
�

>layers
?layer_regularization_losses
)	variables
*regularization_losses
+trainable_variables
@metrics
Alayer_metrics
Bnon_trainable_variables
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
'

0"
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
�
	Etotal
	Fcount
G	variables
H	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
":  2lstm_14/Variable
":  2lstm_14/Variable
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
&:$ 2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
&:$2Adam/dense_28/kernel/m
 :2Adam/dense_28/bias/m
3:1	�2"Adam/lstm_14/lstm_cell_14/kernel/m
=:;	 �2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/m
-:+�2 Adam/lstm_14/lstm_cell_14/bias/m
&:$ 2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
&:$2Adam/dense_28/kernel/v
 :2Adam/dense_28/bias/v
3:1	�2"Adam/lstm_14/lstm_cell_14/kernel/v
=:;	 �2,Adam/lstm_14/lstm_cell_14/recurrent_kernel/v
-:+�2 Adam/lstm_14/lstm_cell_14/bias/v
�2�
!__inference__wrapped_model_130986�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"�
lstm_14_input
�2�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132333
I__inference_sequential_14_layer_call_and_return_conditional_losses_132484
I__inference_sequential_14_layer_call_and_return_conditional_losses_132052
I__inference_sequential_14_layer_call_and_return_conditional_losses_132027�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_sequential_14_layer_call_fn_132507
.__inference_sequential_14_layer_call_fn_132101
.__inference_sequential_14_layer_call_fn_132149
.__inference_sequential_14_layer_call_fn_132530�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_lstm_14_layer_call_and_return_conditional_losses_132668
C__inference_lstm_14_layer_call_and_return_conditional_losses_132806
C__inference_lstm_14_layer_call_and_return_conditional_losses_133112
C__inference_lstm_14_layer_call_and_return_conditional_losses_132974�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_lstm_14_layer_call_fn_133142
(__inference_lstm_14_layer_call_fn_132821
(__inference_lstm_14_layer_call_fn_132836
(__inference_lstm_14_layer_call_fn_133127�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dense_27_layer_call_and_return_conditional_losses_133153�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_27_layer_call_fn_133162�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_28_layer_call_and_return_conditional_losses_133172�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_28_layer_call_fn_133181�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_132182lstm_14_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133247
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133318
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133355
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133214�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_lstm_cell_14_layer_call_fn_133409
-__inference_lstm_cell_14_layer_call_fn_133264
-__inference_lstm_cell_14_layer_call_fn_133281
-__inference_lstm_cell_14_layer_call_fn_133463�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
!__inference__wrapped_model_130986j	!C"#D1�.
'�$
"�
lstm_14_input
� "*�'
%
dense_28�
dense_28�
D__inference_dense_27_layer_call_and_return_conditional_losses_133153J&�#
�
�
inputs 
� "�
�
0
� j
)__inference_dense_27_layer_call_fn_133162=&�#
�
�
inputs 
� "��
D__inference_dense_28_layer_call_and_return_conditional_losses_133172J&�#
�
�
inputs
� "�
�
0
� j
)__inference_dense_28_layer_call_fn_133181=&�#
�
�
inputs
� "��
C__inference_lstm_14_layer_call_and_return_conditional_losses_132668m!C"#DF�C
<�9
+�(
&�#
inputs/0���������

 
p

 
� "�
�
0 
� �
C__inference_lstm_14_layer_call_and_return_conditional_losses_132806m!C"#DF�C
<�9
+�(
&�#
inputs/0���������

 
p 

 
� "�
�
0 
� �
C__inference_lstm_14_layer_call_and_return_conditional_losses_132974]!C"#D6�3
,�)
�
inputs

 
p

 
� "�
�
0 
� �
C__inference_lstm_14_layer_call_and_return_conditional_losses_133112]!C"#D6�3
,�)
�
inputs

 
p 

 
� "�
�
0 
� �
(__inference_lstm_14_layer_call_fn_132821`CD!"#F�C
<�9
+�(
&�#
inputs/0���������

 
p

 
� "� �
(__inference_lstm_14_layer_call_fn_132836`CD!"#F�C
<�9
+�(
&�#
inputs/0���������

 
p 

 
� "� |
(__inference_lstm_14_layer_call_fn_133127P!C"#D6�3
,�)
�
inputs

 
p

 
� "� |
(__inference_lstm_14_layer_call_fn_133142P!C"#D6�3
,�)
�
inputs

 
p 

 
� "� �
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133214�!"#e�b
[�X
�
inputs
9�6
�
states/0 
�
states/1 
p
� "X�U
N�K
�
0/0 
3�0
�
0/1/0 
�
0/1/1 
� �
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133247�!"#e�b
[�X
�
inputs
9�6
�
states/0 
�
states/1 
p 
� "X�U
N�K
�
0/0 
3�0
�
0/1/0 
�
0/1/1 
� �
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133318�!"#���
���
�
inputs
s�p
6�3	!�
� 
�

jstates/0VariableSpec
6�3	!�
� 
�

jstates/1VariableSpec
p
� "F�C
<�9
�
0/0
'�$
�
0/1/0
�
0/1/1
� �
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_133355�!"#���
���
�
inputs
s�p
6�3	!�
� 
�

jstates/0VariableSpec
6�3	!�
� 
�

jstates/1VariableSpec
p 
� "F�C
<�9
�
0/0
'�$
�
0/1/0
�
0/1/1
� �
-__inference_lstm_cell_14_layer_call_fn_133264�!"#e�b
[�X
�
inputs
9�6
�
states/0 
�
states/1 
p
� "H�E
�
0 
/�,
�
1/0 
�
1/1 �
-__inference_lstm_cell_14_layer_call_fn_133281�!"#e�b
[�X
�
inputs
9�6
�
states/0 
�
states/1 
p 
� "H�E
�
0 
/�,
�
1/0 
�
1/1 �
-__inference_lstm_cell_14_layer_call_fn_133409�!"#���
���
�
inputs
s�p
6�3	!�
� 
�

jstates/0VariableSpec
6�3	!�
� 
�

jstates/1VariableSpec
p
� "6�3
�	
0
#� 
�
1/0
�
1/1�
-__inference_lstm_cell_14_layer_call_fn_133463�!"#���
���
�
inputs
s�p
6�3	!�
� 
�

jstates/0VariableSpec
6�3	!�
� 
�

jstates/1VariableSpec
p 
� "6�3
�	
0
#� 
�
1/0
�
1/1�
I__inference_sequential_14_layer_call_and_return_conditional_losses_132027d	!C"#D9�6
/�,
"�
lstm_14_input
p

 
� "�
�
0
� �
I__inference_sequential_14_layer_call_and_return_conditional_losses_132052d	!C"#D9�6
/�,
"�
lstm_14_input
p 

 
� "�
�
0
� �
I__inference_sequential_14_layer_call_and_return_conditional_losses_132333]	!C"#D2�/
(�%
�
inputs
p

 
� "�
�
0
� �
I__inference_sequential_14_layer_call_and_return_conditional_losses_132484]	!C"#D2�/
(�%
�
inputs
p 

 
� "�
�
0
� �
.__inference_sequential_14_layer_call_fn_132101W	!C"#D9�6
/�,
"�
lstm_14_input
p

 
� "��
.__inference_sequential_14_layer_call_fn_132149W	!C"#D9�6
/�,
"�
lstm_14_input
p 

 
� "��
.__inference_sequential_14_layer_call_fn_132507P	!C"#D2�/
(�%
�
inputs
p

 
� "��
.__inference_sequential_14_layer_call_fn_132530P	!C"#D2�/
(�%
�
inputs
p 

 
� "��
$__inference_signature_wrapper_132182{	!C"#DB�?
� 
8�5
3
lstm_14_input"�
lstm_14_input"*�'
%
dense_28�
dense_28