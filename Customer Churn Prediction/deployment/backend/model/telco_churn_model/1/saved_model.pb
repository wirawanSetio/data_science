»ü
Ô
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
 "serve*2.9.22v2.9.1-132-g18960c44ad38¸Ò


Adamax/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/output/bias/v
y
(Adamax/output/bias/v/Read/ReadVariableOpReadVariableOpAdamax/output/bias/v*
_output_shapes
:*
dtype0

Adamax/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamax/output/kernel/v

*Adamax/output/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/output/kernel/v*
_output_shapes

:*
dtype0

Adamax/hidden_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/hidden_3/bias/v
}
*Adamax/hidden_3/bias/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_3/bias/v*
_output_shapes
:*
dtype0

Adamax/hidden_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*)
shared_nameAdamax/hidden_3/kernel/v

,Adamax/hidden_3/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_3/kernel/v*
_output_shapes

:<*
dtype0

Adamax/hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*'
shared_nameAdamax/hidden_2/bias/v
}
*Adamax/hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_2/bias/v*
_output_shapes
:<*
dtype0

Adamax/hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x<*)
shared_nameAdamax/hidden_2/kernel/v

,Adamax/hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_2/kernel/v*
_output_shapes

:x<*
dtype0

Adamax/hidden_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*'
shared_nameAdamax/hidden_1/bias/v
}
*Adamax/hidden_1/bias/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_1/bias/v*
_output_shapes
:x*
dtype0

Adamax/hidden_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ðx*)
shared_nameAdamax/hidden_1/kernel/v

,Adamax/hidden_1/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/hidden_1/kernel/v*
_output_shapes
:	ðx*
dtype0

Adamax/Input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*$
shared_nameAdamax/Input/bias/v
x
'Adamax/Input/bias/v/Read/ReadVariableOpReadVariableOpAdamax/Input/bias/v*
_output_shapes	
:ð*
dtype0

Adamax/Input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	%ð*&
shared_nameAdamax/Input/kernel/v

)Adamax/Input/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/Input/kernel/v*
_output_shapes
:	%ð*
dtype0

Adamax/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/output/bias/m
y
(Adamax/output/bias/m/Read/ReadVariableOpReadVariableOpAdamax/output/bias/m*
_output_shapes
:*
dtype0

Adamax/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamax/output/kernel/m

*Adamax/output/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/output/kernel/m*
_output_shapes

:*
dtype0

Adamax/hidden_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/hidden_3/bias/m
}
*Adamax/hidden_3/bias/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_3/bias/m*
_output_shapes
:*
dtype0

Adamax/hidden_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*)
shared_nameAdamax/hidden_3/kernel/m

,Adamax/hidden_3/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_3/kernel/m*
_output_shapes

:<*
dtype0

Adamax/hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*'
shared_nameAdamax/hidden_2/bias/m
}
*Adamax/hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_2/bias/m*
_output_shapes
:<*
dtype0

Adamax/hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x<*)
shared_nameAdamax/hidden_2/kernel/m

,Adamax/hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_2/kernel/m*
_output_shapes

:x<*
dtype0

Adamax/hidden_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*'
shared_nameAdamax/hidden_1/bias/m
}
*Adamax/hidden_1/bias/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_1/bias/m*
_output_shapes
:x*
dtype0

Adamax/hidden_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ðx*)
shared_nameAdamax/hidden_1/kernel/m

,Adamax/hidden_1/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/hidden_1/kernel/m*
_output_shapes
:	ðx*
dtype0

Adamax/Input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*$
shared_nameAdamax/Input/bias/m
x
'Adamax/Input/bias/m/Read/ReadVariableOpReadVariableOpAdamax/Input/bias/m*
_output_shapes	
:ð*
dtype0

Adamax/Input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	%ð*&
shared_nameAdamax/Input/kernel/m

)Adamax/Input/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/Input/kernel/m*
_output_shapes
:	%ð*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
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
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
dtype0
r
hidden_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namehidden_3/bias
k
!hidden_3/bias/Read/ReadVariableOpReadVariableOphidden_3/bias*
_output_shapes
:*
dtype0
z
hidden_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<* 
shared_namehidden_3/kernel
s
#hidden_3/kernel/Read/ReadVariableOpReadVariableOphidden_3/kernel*
_output_shapes

:<*
dtype0
r
hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namehidden_2/bias
k
!hidden_2/bias/Read/ReadVariableOpReadVariableOphidden_2/bias*
_output_shapes
:<*
dtype0
z
hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x<* 
shared_namehidden_2/kernel
s
#hidden_2/kernel/Read/ReadVariableOpReadVariableOphidden_2/kernel*
_output_shapes

:x<*
dtype0
r
hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_namehidden_1/bias
k
!hidden_1/bias/Read/ReadVariableOpReadVariableOphidden_1/bias*
_output_shapes
:x*
dtype0
{
hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ðx* 
shared_namehidden_1/kernel
t
#hidden_1/kernel/Read/ReadVariableOpReadVariableOphidden_1/kernel*
_output_shapes
:	ðx*
dtype0
m

Input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*
shared_name
Input/bias
f
Input/bias/Read/ReadVariableOpReadVariableOp
Input/bias*
_output_shapes	
:ð*
dtype0
u
Input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	%ð*
shared_nameInput/kernel
n
 Input/kernel/Read/ReadVariableOpReadVariableOpInput/kernel*
_output_shapes
:	%ð*
dtype0

NoOpNoOp
Å`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*`
valueö_Bó_ Bì_
Þ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
¥
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator* 
¦
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*

:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
¥
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator* 
¦
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias*

O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
¥
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[_random_generator* 
¦
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias*
J
0
1
#2
$3
84
95
M6
N7
b8
c9*
J
0
1
#2
$3
84
95
M6
N7
b8
c9*

d0
e1
f2* 
°
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
* 

titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemÛmÜ#mÝ$mÞ8mß9màMmáNmâbmãcmävåvæ#vç$vè8vé9vêMvëNvìbvícvî*

yserving_default* 

0
1*

0
1*
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUEInput/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Input/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
	
d0* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEhidden_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

80
91*

80
91*
	
e0* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEhidden_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

¤trace_0* 

¥trace_0* 
* 
* 
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

«trace_0
¬trace_1* 

­trace_0
®trace_1* 
* 

M0
N1*

M0
N1*
	
f0* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

´trace_0* 

µtrace_0* 
_Y
VARIABLE_VALUEhidden_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

»trace_0* 

¼trace_0* 
* 
* 
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

Âtrace_0
Ãtrace_1* 

Ätrace_0
Åtrace_1* 
* 

b0
c1*

b0
c1*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ítrace_0* 

Îtrace_0* 

Ïtrace_0* 
* 
R
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
10*

Ð0
Ñ1*
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
NH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
	
d0* 
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
	
e0* 
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
	
f0* 
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
Ò	variables
Ó	keras_api

Ôtotal

Õcount*
`
Ö	variables
×	keras_api
Ø
thresholds
Ùtrue_positives
Úfalse_negatives*

Ô0
Õ1*

Ò	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ù0
Ú1*

Ö	variables*
* 
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdamax/Input/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdamax/Input/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/output/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/output/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdamax/Input/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdamax/Input/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdamax/hidden_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdamax/hidden_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/output/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/output/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
serving_default_Input_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ%
ß
StatefulPartitionedCallStatefulPartitionedCallserving_default_Input_inputInput/kernel
Input/biashidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biashidden_3/kernelhidden_3/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_93744
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Á
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Input/kernel/Read/ReadVariableOpInput/bias/Read/ReadVariableOp#hidden_1/kernel/Read/ReadVariableOp!hidden_1/bias/Read/ReadVariableOp#hidden_2/kernel/Read/ReadVariableOp!hidden_2/bias/Read/ReadVariableOp#hidden_3/kernel/Read/ReadVariableOp!hidden_3/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp)Adamax/Input/kernel/m/Read/ReadVariableOp'Adamax/Input/bias/m/Read/ReadVariableOp,Adamax/hidden_1/kernel/m/Read/ReadVariableOp*Adamax/hidden_1/bias/m/Read/ReadVariableOp,Adamax/hidden_2/kernel/m/Read/ReadVariableOp*Adamax/hidden_2/bias/m/Read/ReadVariableOp,Adamax/hidden_3/kernel/m/Read/ReadVariableOp*Adamax/hidden_3/bias/m/Read/ReadVariableOp*Adamax/output/kernel/m/Read/ReadVariableOp(Adamax/output/bias/m/Read/ReadVariableOp)Adamax/Input/kernel/v/Read/ReadVariableOp'Adamax/Input/bias/v/Read/ReadVariableOp,Adamax/hidden_1/kernel/v/Read/ReadVariableOp*Adamax/hidden_1/bias/v/Read/ReadVariableOp,Adamax/hidden_2/kernel/v/Read/ReadVariableOp*Adamax/hidden_2/bias/v/Read/ReadVariableOp,Adamax/hidden_3/kernel/v/Read/ReadVariableOp*Adamax/hidden_3/bias/v/Read/ReadVariableOp*Adamax/output/kernel/v/Read/ReadVariableOp(Adamax/output/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_94349
°
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameInput/kernel
Input/biashidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biashidden_3/kernelhidden_3/biasoutput/kerneloutput/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttrue_positivesfalse_negativesAdamax/Input/kernel/mAdamax/Input/bias/mAdamax/hidden_1/kernel/mAdamax/hidden_1/bias/mAdamax/hidden_2/kernel/mAdamax/hidden_2/bias/mAdamax/hidden_3/kernel/mAdamax/hidden_3/bias/mAdamax/output/kernel/mAdamax/output/bias/mAdamax/Input/kernel/vAdamax/Input/bias/vAdamax/hidden_1/kernel/vAdamax/hidden_1/bias/vAdamax/hidden_2/kernel/vAdamax/hidden_2/bias/vAdamax/hidden_3/kernel/vAdamax/hidden_3/bias/vAdamax/output/kernel/vAdamax/output/bias/v*3
Tin,
*2(*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_94476Ì	
×
¨
C__inference_hidden_2_layer_call_and_return_conditional_losses_94057

inputs0
matmul_readvariableop_resource:x<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
×
¨
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_3/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs


ô
,__inference_sequential_1_layer_call_fn_93812

inputs
unknown:	%ð
	unknown_0:	ð
	unknown_1:	ðx
	unknown_2:x
	unknown_3:x<
	unknown_4:<
	unknown_5:<
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_93539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
°
Õ
!__inference__traced_restore_94476
file_prefix0
assignvariableop_input_kernel:	%ð,
assignvariableop_1_input_bias:	ð5
"assignvariableop_2_hidden_1_kernel:	ðx.
 assignvariableop_3_hidden_1_bias:x4
"assignvariableop_4_hidden_2_kernel:x<.
 assignvariableop_5_hidden_2_bias:<4
"assignvariableop_6_hidden_3_kernel:<.
 assignvariableop_7_hidden_3_bias:2
 assignvariableop_8_output_kernel:,
assignvariableop_9_output_bias:)
assignvariableop_10_adamax_iter:	 +
!assignvariableop_11_adamax_beta_1: +
!assignvariableop_12_adamax_beta_2: *
 assignvariableop_13_adamax_decay: 2
(assignvariableop_14_adamax_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: 0
"assignvariableop_17_true_positives:1
#assignvariableop_18_false_negatives:<
)assignvariableop_19_adamax_input_kernel_m:	%ð6
'assignvariableop_20_adamax_input_bias_m:	ð?
,assignvariableop_21_adamax_hidden_1_kernel_m:	ðx8
*assignvariableop_22_adamax_hidden_1_bias_m:x>
,assignvariableop_23_adamax_hidden_2_kernel_m:x<8
*assignvariableop_24_adamax_hidden_2_bias_m:<>
,assignvariableop_25_adamax_hidden_3_kernel_m:<8
*assignvariableop_26_adamax_hidden_3_bias_m:<
*assignvariableop_27_adamax_output_kernel_m:6
(assignvariableop_28_adamax_output_bias_m:<
)assignvariableop_29_adamax_input_kernel_v:	%ð6
'assignvariableop_30_adamax_input_bias_v:	ð?
,assignvariableop_31_adamax_hidden_1_kernel_v:	ðx8
*assignvariableop_32_adamax_hidden_1_bias_v:x>
,assignvariableop_33_adamax_hidden_2_kernel_v:x<8
*assignvariableop_34_adamax_hidden_2_bias_v:<>
,assignvariableop_35_adamax_hidden_3_kernel_v:<8
*assignvariableop_36_adamax_hidden_3_bias_v:<
*assignvariableop_37_adamax_output_kernel_v:6
(assignvariableop_38_adamax_output_bias_v:
identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ÿ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*¥
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_input_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_input_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_hidden_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_hidden_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_hidden_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_hidden_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adamax_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_adamax_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp!assignvariableop_12_adamax_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_adamax_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adamax_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp"assignvariableop_17_true_positivesIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_false_negativesIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adamax_input_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adamax_input_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adamax_hidden_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adamax_hidden_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adamax_hidden_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adamax_hidden_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adamax_hidden_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adamax_hidden_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adamax_output_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adamax_output_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adamax_input_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adamax_input_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adamax_hidden_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adamax_hidden_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adamax_hidden_2_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adamax_hidden_2_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adamax_hidden_3_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adamax_hidden_3_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adamax_output_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adamax_output_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
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
É
a
E__inference_activation_layer_call_and_return_conditional_losses_93182

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¶
°
__inference_loss_fn_2_94209L
:hidden_3_kernel_regularizer_square_readvariableop_resource:<
identity¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¬
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:hidden_3_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#hidden_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^hidden_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp
ª

ù
,__inference_sequential_1_layer_call_fn_93587
input_input
unknown:	%ð
	unknown_0:	ð
	unknown_1:	ðx
	unknown_2:x
	unknown_3:x<
	unknown_4:<
	unknown_5:<
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_93539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input
ï
b
)__inference_dropout_1_layer_call_fn_94077

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93391o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
É
a
E__inference_activation_layer_call_and_return_conditional_losses_94005

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Ë
c
G__inference_activation_2_layer_call_and_return_conditional_losses_93254

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ò
A__inference_output_layer_call_and_return_conditional_losses_93274

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

C
'__inference_dropout_layer_call_fn_94010

inputs
identity­
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93189`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
À

(__inference_hidden_2_layer_call_fn_94041

inputs
unknown:x<
	unknown_0:<
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ü	
a
B__inference_dropout_layer_call_and_return_conditional_losses_94032

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
:ÿÿÿÿÿÿÿÿÿxC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Ã

(__inference_hidden_1_layer_call_fn_93979

inputs
unknown:	ðx
	unknown_0:x
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿð: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
 
_user_specified_nameinputs
¹
±
__inference_loss_fn_0_94187M
:hidden_1_kernel_regularizer_square_readvariableop_resource:	ðx
identity¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp­
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:hidden_1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#hidden_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^hidden_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp


ô
,__inference_sequential_1_layer_call_fn_93787

inputs
unknown:	%ð
	unknown_0:	ð
	unknown_1:	ðx
	unknown_2:x
	unknown_3:x<
	unknown_4:<
	unknown_5:<
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_93299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
Ý
©
C__inference_hidden_1_layer_call_and_return_conditional_losses_93995

inputs1
matmul_readvariableop_resource:	ðx-
biasadd_readvariableop_resource:x
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿð: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
 
_user_specified_nameinputs
ë
`
'__inference_dropout_layer_call_fn_94015

inputs
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93430o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ÞG
Ï
G__inference_sequential_1_layer_call_and_return_conditional_losses_93539

inputs
input_93489:	%ð
input_93491:	ð!
hidden_1_93494:	ðx
hidden_1_93496:x 
hidden_2_93501:x<
hidden_2_93503:< 
hidden_3_93508:<
hidden_3_93510:
output_93515:
output_93517:
identity¢Input/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢ hidden_1/StatefulPartitionedCall¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢ hidden_2/StatefulPartitionedCall¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢ hidden_3/StatefulPartitionedCall¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallâ
Input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_93489input_93491*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_Input_layer_call_and_return_conditional_losses_93149
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall&Input/StatefulPartitionedCall:output:0hidden_1_93494hidden_1_93496*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171Þ
activation/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_93182â
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93430
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_2_93501hidden_2_93503*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207â
activation_1/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_93218
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93391
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_3_93508hidden_3_93510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243â
activation_2/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_93254
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93352
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0output_93515output_93517*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_93274
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_1_93494*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_2_93501*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_3_93508*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
NoOpNoOp^Input/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall2^hidden_1/kernel/Regularizer/Square/ReadVariableOp!^hidden_2/StatefulPartitionedCall2^hidden_2/kernel/Regularizer/Square/ReadVariableOp!^hidden_3/StatefulPartitionedCall2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2>
Input/StatefulPartitionedCallInput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
×
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_94144

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_94156

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
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú	
ð
#__inference_signature_wrapper_93744
input_input
unknown:	%ð
	unknown_0:	ð
	unknown_1:	ðx
	unknown_2:x
	unknown_3:x<
	unknown_4:<
	unknown_5:<
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_93132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input
¶
°
__inference_loss_fn_1_94198L
:hidden_2_kernel_regularizer_square_readvariableop_resource:x<
identity¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¬
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:hidden_2_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#hidden_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^hidden_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp
®9
Å	
 __inference__wrapped_model_93132
input_inputD
1sequential_1_input_matmul_readvariableop_resource:	%ðA
2sequential_1_input_biasadd_readvariableop_resource:	ðG
4sequential_1_hidden_1_matmul_readvariableop_resource:	ðxC
5sequential_1_hidden_1_biasadd_readvariableop_resource:xF
4sequential_1_hidden_2_matmul_readvariableop_resource:x<C
5sequential_1_hidden_2_biasadd_readvariableop_resource:<F
4sequential_1_hidden_3_matmul_readvariableop_resource:<C
5sequential_1_hidden_3_biasadd_readvariableop_resource:D
2sequential_1_output_matmul_readvariableop_resource:A
3sequential_1_output_biasadd_readvariableop_resource:
identity¢)sequential_1/Input/BiasAdd/ReadVariableOp¢(sequential_1/Input/MatMul/ReadVariableOp¢,sequential_1/hidden_1/BiasAdd/ReadVariableOp¢+sequential_1/hidden_1/MatMul/ReadVariableOp¢,sequential_1/hidden_2/BiasAdd/ReadVariableOp¢+sequential_1/hidden_2/MatMul/ReadVariableOp¢,sequential_1/hidden_3/BiasAdd/ReadVariableOp¢+sequential_1/hidden_3/MatMul/ReadVariableOp¢*sequential_1/output/BiasAdd/ReadVariableOp¢)sequential_1/output/MatMul/ReadVariableOp
(sequential_1/Input/MatMul/ReadVariableOpReadVariableOp1sequential_1_input_matmul_readvariableop_resource*
_output_shapes
:	%ð*
dtype0
sequential_1/Input/MatMulMatMulinput_input0sequential_1/Input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)sequential_1/Input/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_input_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0°
sequential_1/Input/BiasAddBiasAdd#sequential_1/Input/MatMul:product:01sequential_1/Input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
+sequential_1/hidden_1/MatMul/ReadVariableOpReadVariableOp4sequential_1_hidden_1_matmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0²
sequential_1/hidden_1/MatMulMatMul#sequential_1/Input/BiasAdd:output:03sequential_1/hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
,sequential_1/hidden_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_hidden_1_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0¸
sequential_1/hidden_1/BiasAddBiasAdd&sequential_1/hidden_1/MatMul:product:04sequential_1/hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx~
sequential_1/activation/ReluRelu&sequential_1/hidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_1/dropout/IdentityIdentity*sequential_1/activation/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
+sequential_1/hidden_2/MatMul/ReadVariableOpReadVariableOp4sequential_1_hidden_2_matmul_readvariableop_resource*
_output_shapes

:x<*
dtype0µ
sequential_1/hidden_2/MatMulMatMul&sequential_1/dropout/Identity:output:03sequential_1/hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
,sequential_1/hidden_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_hidden_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0¸
sequential_1/hidden_2/BiasAddBiasAdd&sequential_1/hidden_2/MatMul:product:04sequential_1/hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
sequential_1/activation_1/ReluRelu&sequential_1/hidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
sequential_1/dropout_1/IdentityIdentity,sequential_1/activation_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ< 
+sequential_1/hidden_3/MatMul/ReadVariableOpReadVariableOp4sequential_1_hidden_3_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0·
sequential_1/hidden_3/MatMulMatMul(sequential_1/dropout_1/Identity:output:03sequential_1/hidden_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_1/hidden_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_hidden_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_1/hidden_3/BiasAddBiasAdd&sequential_1/hidden_3/MatMul:product:04sequential_1/hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_1/activation_2/ReluRelu&sequential_1/hidden_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_1/dropout_2/IdentityIdentity,sequential_1/activation_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_1/output/MatMul/ReadVariableOpReadVariableOp2sequential_1_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0³
sequential_1/output/MatMulMatMul(sequential_1/dropout_2/Identity:output:01sequential_1/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_1/output/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
sequential_1/output/BiasAddBiasAdd$sequential_1/output/MatMul:product:02sequential_1/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_1/output/SigmoidSigmoid$sequential_1/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitysequential_1/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp*^sequential_1/Input/BiasAdd/ReadVariableOp)^sequential_1/Input/MatMul/ReadVariableOp-^sequential_1/hidden_1/BiasAdd/ReadVariableOp,^sequential_1/hidden_1/MatMul/ReadVariableOp-^sequential_1/hidden_2/BiasAdd/ReadVariableOp,^sequential_1/hidden_2/MatMul/ReadVariableOp-^sequential_1/hidden_3/BiasAdd/ReadVariableOp,^sequential_1/hidden_3/MatMul/ReadVariableOp+^sequential_1/output/BiasAdd/ReadVariableOp*^sequential_1/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2V
)sequential_1/Input/BiasAdd/ReadVariableOp)sequential_1/Input/BiasAdd/ReadVariableOp2T
(sequential_1/Input/MatMul/ReadVariableOp(sequential_1/Input/MatMul/ReadVariableOp2\
,sequential_1/hidden_1/BiasAdd/ReadVariableOp,sequential_1/hidden_1/BiasAdd/ReadVariableOp2Z
+sequential_1/hidden_1/MatMul/ReadVariableOp+sequential_1/hidden_1/MatMul/ReadVariableOp2\
,sequential_1/hidden_2/BiasAdd/ReadVariableOp,sequential_1/hidden_2/BiasAdd/ReadVariableOp2Z
+sequential_1/hidden_2/MatMul/ReadVariableOp+sequential_1/hidden_2/MatMul/ReadVariableOp2\
,sequential_1/hidden_3/BiasAdd/ReadVariableOp,sequential_1/hidden_3/BiasAdd/ReadVariableOp2Z
+sequential_1/hidden_3/MatMul/ReadVariableOp+sequential_1/hidden_3/MatMul/ReadVariableOp2X
*sequential_1/output/BiasAdd/ReadVariableOp*sequential_1/output/BiasAdd/ReadVariableOp2V
)sequential_1/output/MatMul/ReadVariableOp)sequential_1/output/MatMul/ReadVariableOp:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input
Ê	
ó
@__inference_Input_layer_call_and_return_conditional_losses_93970

inputs1
matmul_readvariableop_resource:	%ð.
biasadd_readvariableop_resource:	ð
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	%ð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
ü	
a
B__inference_dropout_layer_call_and_return_conditional_losses_93430

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
:ÿÿÿÿÿÿÿÿÿxC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Ê	
ó
@__inference_Input_layer_call_and_return_conditional_losses_93149

inputs1
matmul_readvariableop_resource:	%ð.
biasadd_readvariableop_resource:	ð
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	%ð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ%: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
¤Q

__inference__traced_save_94349
file_prefix+
'savev2_input_kernel_read_readvariableop)
%savev2_input_bias_read_readvariableop.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop.
*savev2_hidden_3_kernel_read_readvariableop,
(savev2_hidden_3_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop4
0savev2_adamax_input_kernel_m_read_readvariableop2
.savev2_adamax_input_bias_m_read_readvariableop7
3savev2_adamax_hidden_1_kernel_m_read_readvariableop5
1savev2_adamax_hidden_1_bias_m_read_readvariableop7
3savev2_adamax_hidden_2_kernel_m_read_readvariableop5
1savev2_adamax_hidden_2_bias_m_read_readvariableop7
3savev2_adamax_hidden_3_kernel_m_read_readvariableop5
1savev2_adamax_hidden_3_bias_m_read_readvariableop5
1savev2_adamax_output_kernel_m_read_readvariableop3
/savev2_adamax_output_bias_m_read_readvariableop4
0savev2_adamax_input_kernel_v_read_readvariableop2
.savev2_adamax_input_bias_v_read_readvariableop7
3savev2_adamax_hidden_1_kernel_v_read_readvariableop5
1savev2_adamax_hidden_1_bias_v_read_readvariableop7
3savev2_adamax_hidden_2_kernel_v_read_readvariableop5
1savev2_adamax_hidden_2_bias_v_read_readvariableop7
3savev2_adamax_hidden_3_kernel_v_read_readvariableop5
1savev2_adamax_hidden_3_bias_v_read_readvariableop5
1savev2_adamax_output_kernel_v_read_readvariableop3
/savev2_adamax_output_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: ü
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*¥
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH½
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B è
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_input_kernel_read_readvariableop%savev2_input_bias_read_readvariableop*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop*savev2_hidden_3_kernel_read_readvariableop(savev2_hidden_3_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableop0savev2_adamax_input_kernel_m_read_readvariableop.savev2_adamax_input_bias_m_read_readvariableop3savev2_adamax_hidden_1_kernel_m_read_readvariableop1savev2_adamax_hidden_1_bias_m_read_readvariableop3savev2_adamax_hidden_2_kernel_m_read_readvariableop1savev2_adamax_hidden_2_bias_m_read_readvariableop3savev2_adamax_hidden_3_kernel_m_read_readvariableop1savev2_adamax_hidden_3_bias_m_read_readvariableop1savev2_adamax_output_kernel_m_read_readvariableop/savev2_adamax_output_bias_m_read_readvariableop0savev2_adamax_input_kernel_v_read_readvariableop.savev2_adamax_input_bias_v_read_readvariableop3savev2_adamax_hidden_1_kernel_v_read_readvariableop1savev2_adamax_hidden_1_bias_v_read_readvariableop3savev2_adamax_hidden_2_kernel_v_read_readvariableop1savev2_adamax_hidden_2_bias_v_read_readvariableop3savev2_adamax_hidden_3_kernel_v_read_readvariableop1savev2_adamax_hidden_3_bias_v_read_readvariableop1savev2_adamax_output_kernel_v_read_readvariableop/savev2_adamax_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	
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

identity_1Identity_1:output:0*¬
_input_shapes
: :	%ð:ð:	ðx:x:x<:<:<:::: : : : : : : :::	%ð:ð:	ðx:x:x<:<:<::::	%ð:ð:	ðx:x:x<:<:<:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	%ð:!

_output_shapes	
:ð:%!

_output_shapes
:	ðx: 

_output_shapes
:x:$ 

_output_shapes

:x<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	%ð:!

_output_shapes	
:ð:%!

_output_shapes
:	ðx: 

_output_shapes
:x:$ 

_output_shapes

:x<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	%ð:!

_output_shapes	
:ð:% !

_output_shapes
:	ðx: !

_output_shapes
:x:$" 

_output_shapes

:x<: #

_output_shapes
:<:$$ 

_output_shapes

:<: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
À

(__inference_hidden_3_layer_call_fn_94103

inputs
unknown:<
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs


ò
A__inference_output_layer_call_and_return_conditional_losses_94176

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÂF
ÿ
G__inference_sequential_1_layer_call_and_return_conditional_losses_93871

inputs7
$input_matmul_readvariableop_resource:	%ð4
%input_biasadd_readvariableop_resource:	ð:
'hidden_1_matmul_readvariableop_resource:	ðx6
(hidden_1_biasadd_readvariableop_resource:x9
'hidden_2_matmul_readvariableop_resource:x<6
(hidden_2_biasadd_readvariableop_resource:<9
'hidden_3_matmul_readvariableop_resource:<6
(hidden_3_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢Input/BiasAdd/ReadVariableOp¢Input/MatMul/ReadVariableOp¢hidden_1/BiasAdd/ReadVariableOp¢hidden_1/MatMul/ReadVariableOp¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢hidden_2/BiasAdd/ReadVariableOp¢hidden_2/MatMul/ReadVariableOp¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢hidden_3/BiasAdd/ReadVariableOp¢hidden_3/MatMul/ReadVariableOp¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
Input/MatMul/ReadVariableOpReadVariableOp$input_matmul_readvariableop_resource*
_output_shapes
:	%ð*
dtype0v
Input/MatMulMatMulinputs#Input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
Input/BiasAdd/ReadVariableOpReadVariableOp%input_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
Input/BiasAddBiasAddInput/MatMul:product:0$Input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
hidden_1/MatMulMatMulInput/BiasAdd:output:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxd
activation/ReluReluhidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxm
dropout/IdentityIdentityactivation/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
hidden_2/MatMulMatMuldropout/Identity:output:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
activation_1/ReluReluhidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
dropout_1/IdentityIdentityactivation_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
hidden_3/MatMul/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
hidden_3/MatMulMatMuldropout_1/Identity:output:0&hidden_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
hidden_3/BiasAdd/ReadVariableOpReadVariableOp(hidden_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
hidden_3/BiasAddBiasAddhidden_3/MatMul:product:0'hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
activation_2/ReluReluhidden_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout_2/IdentityIdentityactivation_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMuldropout_2/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^Input/BiasAdd/ReadVariableOp^Input/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp2^hidden_1/kernel/Regularizer/Square/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp2^hidden_2/kernel/Regularizer/Square/ReadVariableOp ^hidden_3/BiasAdd/ReadVariableOp^hidden_3/MatMul/ReadVariableOp2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2<
Input/BiasAdd/ReadVariableOpInput/BiasAdd/ReadVariableOp2:
Input/MatMul/ReadVariableOpInput/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2B
hidden_3/BiasAdd/ReadVariableOphidden_3/BiasAdd/ReadVariableOp2@
hidden_3/MatMul/ReadVariableOphidden_3/MatMul/ReadVariableOp2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
Ë
c
G__inference_activation_2_layer_call_and_return_conditional_losses_94129

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹]
ÿ
G__inference_sequential_1_layer_call_and_return_conditional_losses_93951

inputs7
$input_matmul_readvariableop_resource:	%ð4
%input_biasadd_readvariableop_resource:	ð:
'hidden_1_matmul_readvariableop_resource:	ðx6
(hidden_1_biasadd_readvariableop_resource:x9
'hidden_2_matmul_readvariableop_resource:x<6
(hidden_2_biasadd_readvariableop_resource:<9
'hidden_3_matmul_readvariableop_resource:<6
(hidden_3_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢Input/BiasAdd/ReadVariableOp¢Input/MatMul/ReadVariableOp¢hidden_1/BiasAdd/ReadVariableOp¢hidden_1/MatMul/ReadVariableOp¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢hidden_2/BiasAdd/ReadVariableOp¢hidden_2/MatMul/ReadVariableOp¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢hidden_3/BiasAdd/ReadVariableOp¢hidden_3/MatMul/ReadVariableOp¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
Input/MatMul/ReadVariableOpReadVariableOp$input_matmul_readvariableop_resource*
_output_shapes
:	%ð*
dtype0v
Input/MatMulMatMulinputs#Input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
Input/BiasAdd/ReadVariableOpReadVariableOp%input_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
Input/BiasAddBiasAddInput/MatMul:product:0$Input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
hidden_1/MatMulMatMulInput/BiasAdd:output:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxd
activation/ReluReluhidden_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout/dropout/MulMulactivation/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxb
dropout/dropout/ShapeShapeactivation/Relu:activations:0*
T0*
_output_shapes
:¨
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0*

seedc
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¾
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
hidden_2/MatMulMatMuldropout/dropout/Mul_1:z:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
activation_1/ReluReluhidden_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_1/dropout/MulMulactivation_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
dropout_1/dropout/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:¹
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
dtype0*

seed*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
hidden_3/MatMul/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
hidden_3/MatMulMatMuldropout_1/dropout/Mul_1:z:0&hidden_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
hidden_3/BiasAdd/ReadVariableOpReadVariableOp(hidden_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
hidden_3/BiasAddBiasAddhidden_3/MatMul:product:0'hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
activation_2/ReluReluhidden_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_2/dropout/MulMulactivation_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dropout_2/dropout/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:¹
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*

seed*
seed2e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ä
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMuldropout_2/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp^Input/BiasAdd/ReadVariableOp^Input/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp2^hidden_1/kernel/Regularizer/Square/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp2^hidden_2/kernel/Regularizer/Square/ReadVariableOp ^hidden_3/BiasAdd/ReadVariableOp^hidden_3/MatMul/ReadVariableOp2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2<
Input/BiasAdd/ReadVariableOpInput/BiasAdd/ReadVariableOp2:
Input/MatMul/ReadVariableOpInput/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2B
hidden_3/BiasAdd/ReadVariableOphidden_3/BiasAdd/ReadVariableOp2@
hidden_3/MatMul/ReadVariableOphidden_3/MatMul/ReadVariableOp2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
þ	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_94094

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
:ÿÿÿÿÿÿÿÿÿ<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
×
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_94082

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ë
c
G__inference_activation_1_layer_call_and_return_conditional_losses_94067

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
ª

ù
,__inference_sequential_1_layer_call_fn_93322
input_input
unknown:	%ð
	unknown_0:	ð
	unknown_1:	ðx
	unknown_2:x
	unknown_3:x<
	unknown_4:<
	unknown_5:<
	unknown_6:
	unknown_7:
	unknown_8:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_93299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input
¼

&__inference_output_layer_call_fn_94165

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_93274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

%__inference_Input_layer_call_fn_93960

inputs
unknown:	%ð
	unknown_0:	ð
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_Input_layer_call_and_return_conditional_losses_93149p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ%: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
·C
ê
G__inference_sequential_1_layer_call_and_return_conditional_losses_93640
input_input
input_93590:	%ð
input_93592:	ð!
hidden_1_93595:	ðx
hidden_1_93597:x 
hidden_2_93602:x<
hidden_2_93604:< 
hidden_3_93609:<
hidden_3_93611:
output_93616:
output_93618:
identity¢Input/StatefulPartitionedCall¢ hidden_1/StatefulPartitionedCall¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢ hidden_2/StatefulPartitionedCall¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢ hidden_3/StatefulPartitionedCall¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallç
Input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_93590input_93592*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_Input_layer_call_and_return_conditional_losses_93149
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall&Input/StatefulPartitionedCall:output:0hidden_1_93595hidden_1_93597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171Þ
activation/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_93182Ò
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93189
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_2_93602hidden_2_93604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207â
activation_1/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_93218Ø
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93225
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_3_93609hidden_3_93611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243â
activation_2/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_93254Ø
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93261
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0output_93616output_93618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_93274
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_1_93595*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_2_93602*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_3_93609*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Input/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall2^hidden_1/kernel/Regularizer/Square/ReadVariableOp!^hidden_2/StatefulPartitionedCall2^hidden_2/kernel/Regularizer/Square/ReadVariableOp!^hidden_3/StatefulPartitionedCall2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2>
Input/StatefulPartitionedCallInput/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input
þ	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_93391

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
:ÿÿÿÿÿÿÿÿÿ<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

E
)__inference_dropout_1_layer_call_fn_94072

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93225`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
×
¨
C__inference_hidden_3_layer_call_and_return_conditional_losses_94119

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_3/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
£
H
,__inference_activation_1_layer_call_fn_94062

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_93218`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

F
*__inference_activation_layer_call_fn_94000

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_93182`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
£
H
,__inference_activation_2_layer_call_fn_94124

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_93254`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
`
B__inference_dropout_layer_call_and_return_conditional_losses_93189

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¨C
å
G__inference_sequential_1_layer_call_and_return_conditional_losses_93299

inputs
input_93150:	%ð
input_93152:	ð!
hidden_1_93172:	ðx
hidden_1_93174:x 
hidden_2_93208:x<
hidden_2_93210:< 
hidden_3_93244:<
hidden_3_93246:
output_93275:
output_93277:
identity¢Input/StatefulPartitionedCall¢ hidden_1/StatefulPartitionedCall¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢ hidden_2/StatefulPartitionedCall¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢ hidden_3/StatefulPartitionedCall¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallâ
Input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_93150input_93152*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_Input_layer_call_and_return_conditional_losses_93149
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall&Input/StatefulPartitionedCall:output:0hidden_1_93172hidden_1_93174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171Þ
activation/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_93182Ò
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93189
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_2_93208hidden_2_93210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207â
activation_1/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_93218Ø
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93225
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_3_93244hidden_3_93246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243â
activation_2/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_93254Ø
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93261
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0output_93275output_93277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_93274
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_1_93172*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_2_93208*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_3_93244*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Input/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall2^hidden_1/kernel/Regularizer/Square/ReadVariableOp!^hidden_2/StatefulPartitionedCall2^hidden_2/kernel/Regularizer/Square/ReadVariableOp!^hidden_3/StatefulPartitionedCall2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2>
Input/StatefulPartitionedCallInput/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
 
_user_specified_nameinputs
þ	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_93352

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
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
c
G__inference_activation_1_layer_call_and_return_conditional_losses_93218

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Õ
`
B__inference_dropout_layer_call_and_return_conditional_losses_94020

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿx:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ï
b
)__inference_dropout_2_layer_call_fn_94139

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
©
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171

inputs1
matmul_readvariableop_resource:	ðx-
biasadd_readvariableop_resource:x
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿð: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
 
_user_specified_nameinputs
×
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_93225

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

E
)__inference_dropout_2_layer_call_fn_94134

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93261`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_93261

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
¨
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207

inputs0
matmul_readvariableop_resource:x<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1hidden_2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<«
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^hidden_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
íG
Ô
G__inference_sequential_1_layer_call_and_return_conditional_losses_93693
input_input
input_93643:	%ð
input_93645:	ð!
hidden_1_93648:	ðx
hidden_1_93650:x 
hidden_2_93655:x<
hidden_2_93657:< 
hidden_3_93662:<
hidden_3_93664:
output_93669:
output_93671:
identity¢Input/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢ hidden_1/StatefulPartitionedCall¢1hidden_1/kernel/Regularizer/Square/ReadVariableOp¢ hidden_2/StatefulPartitionedCall¢1hidden_2/kernel/Regularizer/Square/ReadVariableOp¢ hidden_3/StatefulPartitionedCall¢1hidden_3/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallç
Input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_93643input_93645*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_Input_layer_call_and_return_conditional_losses_93149
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall&Input/StatefulPartitionedCall:output:0hidden_1_93648hidden_1_93650*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_1_layer_call_and_return_conditional_losses_93171Þ
activation/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_93182â
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_93430
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_2_93655hidden_2_93657*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_2_layer_call_and_return_conditional_losses_93207â
activation_1/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_93218
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_93391
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_3_93662hidden_3_93664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_hidden_3_layer_call_and_return_conditional_losses_93243â
activation_2/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_93254
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_93352
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0output_93669output_93671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_output_layer_call_and_return_conditional_losses_93274
1hidden_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_1_93648*
_output_shapes
:	ðx*
dtype0
"hidden_1/kernel/Regularizer/SquareSquare9hidden_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ðxr
!hidden_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_1/kernel/Regularizer/SumSum&hidden_1/kernel/Regularizer/Square:y:0*hidden_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_1/kernel/Regularizer/mulMul*hidden_1/kernel/Regularizer/mul/x:output:0(hidden_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_2_93655*
_output_shapes

:x<*
dtype0
"hidden_2/kernel/Regularizer/SquareSquare9hidden_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:x<r
!hidden_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_2/kernel/Regularizer/SumSum&hidden_2/kernel/Regularizer/Square:y:0*hidden_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_2/kernel/Regularizer/mulMul*hidden_2/kernel/Regularizer/mul/x:output:0(hidden_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
1hidden_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_3_93662*
_output_shapes

:<*
dtype0
"hidden_3/kernel/Regularizer/SquareSquare9hidden_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:<r
!hidden_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_3/kernel/Regularizer/SumSum&hidden_3/kernel/Regularizer/Square:y:0*hidden_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!hidden_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
hidden_3/kernel/Regularizer/mulMul*hidden_3/kernel/Regularizer/mul/x:output:0(hidden_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
NoOpNoOp^Input/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall2^hidden_1/kernel/Regularizer/Square/ReadVariableOp!^hidden_2/StatefulPartitionedCall2^hidden_2/kernel/Regularizer/Square/ReadVariableOp!^hidden_3/StatefulPartitionedCall2^hidden_3/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ%: : : : : : : : : : 2>
Input/StatefulPartitionedCallInput/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2f
1hidden_1/kernel/Regularizer/Square/ReadVariableOp1hidden_1/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2f
1hidden_2/kernel/Regularizer/Square/ReadVariableOp1hidden_2/kernel/Regularizer/Square/ReadVariableOp2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall2f
1hidden_3/kernel/Regularizer/Square/ReadVariableOp1hidden_3/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ%
%
_user_specified_nameInput_input"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_default
C
Input_input4
serving_default_Input_input:0ÿÿÿÿÿÿÿÿÿ%:
output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
ø
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator"
_tf_keras_layer
»
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
¥
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator"
_tf_keras_layer
»
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
¥
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses
[_random_generator"
_tf_keras_layer
»
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias"
_tf_keras_layer
f
0
1
#2
$3
84
95
M6
N7
b8
c9"
trackable_list_wrapper
f
0
1
#2
$3
84
95
M6
N7
b8
c9"
trackable_list_wrapper
5
d0
e1
f2"
trackable_list_wrapper
Ê
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
æ
ltrace_0
mtrace_1
ntrace_2
otrace_32û
,__inference_sequential_1_layer_call_fn_93322
,__inference_sequential_1_layer_call_fn_93787
,__inference_sequential_1_layer_call_fn_93812
,__inference_sequential_1_layer_call_fn_93587À
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
kwonlydefaultsª 
annotationsª *
 zltrace_0zmtrace_1zntrace_2zotrace_3
Ò
ptrace_0
qtrace_1
rtrace_2
strace_32ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_93871
G__inference_sequential_1_layer_call_and_return_conditional_losses_93951
G__inference_sequential_1_layer_call_and_return_conditional_losses_93640
G__inference_sequential_1_layer_call_and_return_conditional_losses_93693À
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
kwonlydefaultsª 
annotationsª *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
ÏBÌ
 __inference__wrapped_model_93132Input_input"
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

titer

ubeta_1

vbeta_2
	wdecay
xlearning_ratemÛmÜ#mÝ$mÞ8mß9màMmáNmâbmãcmävåvæ#vç$vè8vé9vêMvëNvìbvícvî"
	optimizer
,
yserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
é
trace_02Ì
%__inference_Input_layer_call_fn_93960¢
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
 ztrace_0

trace_02ç
@__inference_Input_layer_call_and_return_conditional_losses_93970¢
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
 ztrace_0
:	%ð2Input/kernel
:ð2
Input/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ï
(__inference_hidden_1_layer_call_fn_93979¢
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
 ztrace_0

trace_02ê
C__inference_hidden_1_layer_call_and_return_conditional_losses_93995¢
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
 ztrace_0
": 	ðx2hidden_1/kernel
:x2hidden_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ð
trace_02Ñ
*__inference_activation_layer_call_fn_94000¢
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
 ztrace_0

trace_02ì
E__inference_activation_layer_call_and_return_conditional_losses_94005¢
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ä
trace_0
trace_12
'__inference_dropout_layer_call_fn_94010
'__inference_dropout_layer_call_fn_94015´
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
 ztrace_0ztrace_1
ú
trace_0
trace_12¿
B__inference_dropout_layer_call_and_return_conditional_losses_94020
B__inference_dropout_layer_call_and_return_conditional_losses_94032´
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
 ztrace_0ztrace_1
"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ï
(__inference_hidden_2_layer_call_fn_94041¢
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
 ztrace_0

trace_02ê
C__inference_hidden_2_layer_call_and_return_conditional_losses_94057¢
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
 ztrace_0
!:x<2hidden_2/kernel
:<2hidden_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ò
¤trace_02Ó
,__inference_activation_1_layer_call_fn_94062¢
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
 z¤trace_0

¥trace_02î
G__inference_activation_1_layer_call_and_return_conditional_losses_94067¢
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
 z¥trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
È
«trace_0
¬trace_12
)__inference_dropout_1_layer_call_fn_94072
)__inference_dropout_1_layer_call_fn_94077´
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
 z«trace_0z¬trace_1
þ
­trace_0
®trace_12Ã
D__inference_dropout_1_layer_call_and_return_conditional_losses_94082
D__inference_dropout_1_layer_call_and_return_conditional_losses_94094´
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
 z­trace_0z®trace_1
"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
'
f0"
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
î
´trace_02Ï
(__inference_hidden_3_layer_call_fn_94103¢
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
 z´trace_0

µtrace_02ê
C__inference_hidden_3_layer_call_and_return_conditional_losses_94119¢
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
 zµtrace_0
!:<2hidden_3/kernel
:2hidden_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
ò
»trace_02Ó
,__inference_activation_2_layer_call_fn_94124¢
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
 z»trace_0

¼trace_02î
G__inference_activation_2_layer_call_and_return_conditional_losses_94129¢
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
 z¼trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
È
Âtrace_0
Ãtrace_12
)__inference_dropout_2_layer_call_fn_94134
)__inference_dropout_2_layer_call_fn_94139´
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
 zÂtrace_0zÃtrace_1
þ
Ätrace_0
Åtrace_12Ã
D__inference_dropout_2_layer_call_and_return_conditional_losses_94144
D__inference_dropout_2_layer_call_and_return_conditional_losses_94156´
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
 zÄtrace_0zÅtrace_1
"
_generic_user_object
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
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
ì
Ëtrace_02Í
&__inference_output_layer_call_fn_94165¢
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
 zËtrace_0

Ìtrace_02è
A__inference_output_layer_call_and_return_conditional_losses_94176¢
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
 zÌtrace_0
:2output/kernel
:2output/bias
Î
Ítrace_02¯
__inference_loss_fn_0_94187
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
annotationsª *¢ zÍtrace_0
Î
Îtrace_02¯
__inference_loss_fn_1_94198
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
annotationsª *¢ zÎtrace_0
Î
Ïtrace_02¯
__inference_loss_fn_2_94209
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
annotationsª *¢ zÏtrace_0
 "
trackable_list_wrapper
n
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
10"
trackable_list_wrapper
0
Ð0
Ñ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_1_layer_call_fn_93322Input_input"À
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
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_1_layer_call_fn_93787inputs"À
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
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_1_layer_call_fn_93812inputs"À
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
kwonlydefaultsª 
annotationsª *
 
B
,__inference_sequential_1_layer_call_fn_93587Input_input"À
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
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_93871inputs"À
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
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_93951inputs"À
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
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_93640Input_input"À
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
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_93693Input_input"À
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
kwonlydefaultsª 
annotationsª *
 
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
ÎBË
#__inference_signature_wrapper_93744Input_input"
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
ÙBÖ
%__inference_Input_layer_call_fn_93960inputs"¢
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
ôBñ
@__inference_Input_layer_call_and_return_conditional_losses_93970inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_hidden_1_layer_call_fn_93979inputs"¢
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
÷Bô
C__inference_hidden_1_layer_call_and_return_conditional_losses_93995inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
*__inference_activation_layer_call_fn_94000inputs"¢
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
ùBö
E__inference_activation_layer_call_and_return_conditional_losses_94005inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
íBê
'__inference_dropout_layer_call_fn_94010inputs"´
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
íBê
'__inference_dropout_layer_call_fn_94015inputs"´
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
B
B__inference_dropout_layer_call_and_return_conditional_losses_94020inputs"´
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
B
B__inference_dropout_layer_call_and_return_conditional_losses_94032inputs"´
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
'
e0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_hidden_2_layer_call_fn_94041inputs"¢
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
÷Bô
C__inference_hidden_2_layer_call_and_return_conditional_losses_94057inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_activation_1_layer_call_fn_94062inputs"¢
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
ûBø
G__inference_activation_1_layer_call_and_return_conditional_losses_94067inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ïBì
)__inference_dropout_1_layer_call_fn_94072inputs"´
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
ïBì
)__inference_dropout_1_layer_call_fn_94077inputs"´
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
B
D__inference_dropout_1_layer_call_and_return_conditional_losses_94082inputs"´
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
B
D__inference_dropout_1_layer_call_and_return_conditional_losses_94094inputs"´
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
'
f0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_hidden_3_layer_call_fn_94103inputs"¢
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
÷Bô
C__inference_hidden_3_layer_call_and_return_conditional_losses_94119inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_activation_2_layer_call_fn_94124inputs"¢
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
ûBø
G__inference_activation_2_layer_call_and_return_conditional_losses_94129inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ïBì
)__inference_dropout_2_layer_call_fn_94134inputs"´
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
ïBì
)__inference_dropout_2_layer_call_fn_94139inputs"´
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
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_94144inputs"´
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
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_94156inputs"´
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_output_layer_call_fn_94165inputs"¢
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
õBò
A__inference_output_layer_call_and_return_conditional_losses_94176inputs"¢
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
²B¯
__inference_loss_fn_0_94187"
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
²B¯
__inference_loss_fn_1_94198"
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
²B¯
__inference_loss_fn_2_94209"
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
R
Ò	variables
Ó	keras_api

Ôtotal

Õcount"
_tf_keras_metric
v
Ö	variables
×	keras_api
Ø
thresholds
Ùtrue_positives
Úfalse_negatives"
_tf_keras_metric
0
Ô0
Õ1"
trackable_list_wrapper
.
Ò	variables"
_generic_user_object
:  (2total
:  (2count
0
Ù0
Ú1"
trackable_list_wrapper
.
Ö	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
&:$	%ð2Adamax/Input/kernel/m
 :ð2Adamax/Input/bias/m
):'	ðx2Adamax/hidden_1/kernel/m
": x2Adamax/hidden_1/bias/m
(:&x<2Adamax/hidden_2/kernel/m
": <2Adamax/hidden_2/bias/m
(:&<2Adamax/hidden_3/kernel/m
": 2Adamax/hidden_3/bias/m
&:$2Adamax/output/kernel/m
 :2Adamax/output/bias/m
&:$	%ð2Adamax/Input/kernel/v
 :ð2Adamax/Input/bias/v
):'	ðx2Adamax/hidden_1/kernel/v
": x2Adamax/hidden_1/bias/v
(:&x<2Adamax/hidden_2/kernel/v
": <2Adamax/hidden_2/bias/v
(:&<2Adamax/hidden_3/kernel/v
": 2Adamax/hidden_3/bias/v
&:$2Adamax/output/kernel/v
 :2Adamax/output/bias/v¡
@__inference_Input_layer_call_and_return_conditional_losses_93970]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ%
ª "&¢#

0ÿÿÿÿÿÿÿÿÿð
 y
%__inference_Input_layer_call_fn_93960P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ%
ª "ÿÿÿÿÿÿÿÿÿð
 __inference__wrapped_model_93132s
#$89MNbc4¢1
*¢'
%"
Input_inputÿÿÿÿÿÿÿÿÿ%
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ£
G__inference_activation_1_layer_call_and_return_conditional_losses_94067X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 {
,__inference_activation_1_layer_call_fn_94062K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ<£
G__inference_activation_2_layer_call_and_return_conditional_losses_94129X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
,__inference_activation_2_layer_call_fn_94124K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¡
E__inference_activation_layer_call_and_return_conditional_losses_94005X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 y
*__inference_activation_layer_call_fn_94000K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "ÿÿÿÿÿÿÿÿÿx¤
D__inference_dropout_1_layer_call_and_return_conditional_losses_94082\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ<
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 ¤
D__inference_dropout_1_layer_call_and_return_conditional_losses_94094\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ<
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 |
)__inference_dropout_1_layer_call_fn_94072O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ<
p 
ª "ÿÿÿÿÿÿÿÿÿ<|
)__inference_dropout_1_layer_call_fn_94077O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ<
p
ª "ÿÿÿÿÿÿÿÿÿ<¤
D__inference_dropout_2_layer_call_and_return_conditional_losses_94144\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
D__inference_dropout_2_layer_call_and_return_conditional_losses_94156\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dropout_2_layer_call_fn_94134O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
)__inference_dropout_2_layer_call_fn_94139O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_dropout_layer_call_and_return_conditional_losses_94020\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 ¢
B__inference_dropout_layer_call_and_return_conditional_losses_94032\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 z
'__inference_dropout_layer_call_fn_94010O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p 
ª "ÿÿÿÿÿÿÿÿÿxz
'__inference_dropout_layer_call_fn_94015O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿx
p
ª "ÿÿÿÿÿÿÿÿÿx¤
C__inference_hidden_1_layer_call_and_return_conditional_losses_93995]#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿð
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 |
(__inference_hidden_1_layer_call_fn_93979P#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿð
ª "ÿÿÿÿÿÿÿÿÿx£
C__inference_hidden_2_layer_call_and_return_conditional_losses_94057\89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 {
(__inference_hidden_2_layer_call_fn_94041O89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "ÿÿÿÿÿÿÿÿÿ<£
C__inference_hidden_3_layer_call_and_return_conditional_losses_94119\MN/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_hidden_3_layer_call_fn_94103OMN/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ:
__inference_loss_fn_0_94187#¢

¢ 
ª " :
__inference_loss_fn_1_941988¢

¢ 
ª " :
__inference_loss_fn_2_94209M¢

¢ 
ª " ¡
A__inference_output_layer_call_and_return_conditional_losses_94176\bc/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
&__inference_output_layer_call_fn_94165Obc/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¼
G__inference_sequential_1_layer_call_and_return_conditional_losses_93640q
#$89MNbc<¢9
2¢/
%"
Input_inputÿÿÿÿÿÿÿÿÿ%
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
G__inference_sequential_1_layer_call_and_return_conditional_losses_93693q
#$89MNbc<¢9
2¢/
%"
Input_inputÿÿÿÿÿÿÿÿÿ%
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_sequential_1_layer_call_and_return_conditional_losses_93871l
#$89MNbc7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ%
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
G__inference_sequential_1_layer_call_and_return_conditional_losses_93951l
#$89MNbc7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ%
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_sequential_1_layer_call_fn_93322d
#$89MNbc<¢9
2¢/
%"
Input_inputÿÿÿÿÿÿÿÿÿ%
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_1_layer_call_fn_93587d
#$89MNbc<¢9
2¢/
%"
Input_inputÿÿÿÿÿÿÿÿÿ%
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_1_layer_call_fn_93787_
#$89MNbc7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ%
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_1_layer_call_fn_93812_
#$89MNbc7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ%
p

 
ª "ÿÿÿÿÿÿÿÿÿª
#__inference_signature_wrapper_93744
#$89MNbcC¢@
¢ 
9ª6
4
Input_input%"
Input_inputÿÿÿÿÿÿÿÿÿ%"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ