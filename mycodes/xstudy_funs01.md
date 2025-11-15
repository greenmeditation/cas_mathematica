
```text
(*-----------------------------------------------
 * file_name :                                   
 * theme :   
 * start : 2020, 05
 * last_update :
 * kw    :                                       
 * from  :                                       
 * ref   :                                       
 *-----------------------------------------------*)
``` 

```mathematica
ClearAll["Global`*"];

mysum[a_Integer,b_Integer]:=Module[ {c}, c=a+b; Return[c]];
mysum[a_,b_,c_]:=Module[ {d}, d=a+b+c; Return[d]];
mysum[aA_Array]:=Module[{c},c=aA; Return[c]];
calc[a_,b_]:=Module[ {a1, a2, a3, a4},
                      a1=a+b; a2=a-b; a3=a*b; a4=a/b;
                      Return[a1,a2,a3,a4];
             ]         
                      

```
