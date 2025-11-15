

(*------------------------------------------------
 *  file_name :                                   
 *  theme :                                       
 *  kw    :                                       
 *  from  :                                       
 *  ref   :                                       
 *------------------------------------------------*)

clearall=ClearAll["Global`*"]; 
(* clear_all=ClearAll["Global`*"]; *)

int=Integrate
lt=LaplaceTransform
laplace=LaplaceTransform
ilt=InverseLaplaceTransform
ilaplace=InverseLaplaceTransform
ft=FourierTransform
fft=Fourier
ifft=InverseFourier
ift=InverseFourierTransform
dft=DiscreteFouierTransforms

(* linear_algebra *)
inv=Inverse
linsolve=LinearSolve
null=NullSpace
lu=LUDecomposition

zeros[a_]:=Table[0,{a}];
zeros[a_,b_]:=Table[0.,{a},{b}];
ones[a_]:=Table[1.,{a},{a}];
ones[a_,b_]:=Table[1.,{a},{b}];
(*inv[aA_]:=Inverse[aA]; *)
eye[a_]:=IdentityMatrix[a];
eye[a_,b_]:=IdentityMatrix[a];
size[aA_]:=Module[{}, a=Dimensions[aA]; Return[a] ];
add[aA1_,aA2_]:=aA1+aA2;
plus[aA1_,aA2_]:=aA1+aA2;
subs[aA1_,aA2_]:=aA1-aA2;
minus[aA1_,aA2_]:=aA1-aA2;
times[aA1_,aA2_]:=aA1 * aA2;
mtimes[aA1_,aA2_]:=aA1.aA2;
divide[aA1_,aA2_]:=aA1/aA2;
sum[aA_]:=Apply[Plus,aA];
prod[aA_]:=Apply[Times,aA];
ceil=Ceiling;
rand[a_]:=Table[ Random[],{i,1,a} ];
rand[a_,b_]:=Table[ Random[],{a},{b} ];
whos=Names["*"];
clc=Module[Return[$Line=0]; ];


(*linspace[i_,j_,n_]:=Module[
      {step,aA},
	  aA=Table[0.,{n}]; 
      aA[[1]]=i;
      aA[[n]]=j;   
      step=(j-i)/(n-2);
      a=aA[[1]];
	  For[i=1,i<=(n-2),i++ , a+=step;, aA[[i+1]]=a;];
      Return[aA];
 ];  *)

linspace[a_,b_,n_Integer?Positive]:=Module[{aA}, 
	step=N[{b-a}/{n-1}][[1]];
	aA=Range[a,b,step];
    Return[aA];   ];


moverhs[feq_]:=Module[(*Function[a,0-a];*)
    {f1,tmp,tmp1,feq1},
   	tmp=Last[feq]-feq[[1]][[1]];
    f=feq/.{feq[[1]][[1]]->0};
    f1=f[[1]];
	(*tmp1=feq[[2]];
		feq1=feq/. { feq[[1]][[1]]-> 0, feq[[2]]-> feq[[2]]-tmp }; 
	 feq1=feq/. { feq[[1]][[1]]-> 0, feq[[2]] -> 0 }; *)
    feq1=f1==tmp;
	Return[feq1];
   ];

movelhs[feq_]:=Module[(*Function[a,0-a];*)
    {f1,tmp,tmp1,feq1},
	tmp=feq[[1]]-feq[[2]][[1]];
	f1=feq[[2]]/.{ feq[[2]][[1]]-> 0};
    feq1=tmp==f1;
	Return[feq1];
   ];

fequation[feq_]:=Module[ {p,p1},
    p=feq//Flatten;
    p1=p[[1]][[2]];
    return[p1];
    
 ];

