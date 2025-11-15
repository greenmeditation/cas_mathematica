

# memo


zeros1[1,b_]:=ConstantArray[0.,{1,n}];   
zeros2[a_,b_]:=ConstantArray[0. ,{a,b} ];   


aA={{1,2,3,4,5,6,7,8,10}
aA[[1]] 
error

zeros[a_,b_]:=If[ a==1,zeros1[b],zeros2[a,b] ];   
zeros1[a_,b_]:=ConstantArray[0.,{n}];   
zeros2[a_,b_]:=ConstantArray[0. ,{a,b} ];   
aB={ 1,2,3,4,5,6,7,8,1o}
aB[[1]]        
1.0

```mathematica
feq={ x'[t]==v0*Cos[theta],
      y'[t]==v0*Sin[theta]-g*t, 
      x[0]==0, y[0]==0};	

p1=NDSolve[ feq, {x,y}, {t,0,10 }]   
```


![image](https://user-images.githubusercontent.com/40746581/203718859-b0cf8eec-3894-430b-987b-a3d9ad669176.png)   

```mathematica
Clear["Global`*"];
```
