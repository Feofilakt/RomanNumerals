:- use_module(library(clpfd)).

symbol(I,A,d1) --> [S], { nth0(I,['I'-1,'X'-10,'C'-100,'M'-1000],S-A) }.
symbol(I,A,d5) --> [S], { nth0(I,['V'-5,'L'-50,'D'-500],S-A) }.

subtraction(A2-A1) --> symbol(I1,A1,d1), ({ I is I1+1 }, symbol(I,A2,d1); symbol(I1,A2,d5)).

sequence(I,A1+A2,N) --> symbol(I,A1,d1),
	([], { A2=0, N=1 }; { N in 1..3, N #= N1+1}, sequence(I,A2,N1)).

addition(A) --> symbol(_,A,d5).
addition(A) --> sequence(_,A,_).
addition(A1+A2) --> symbol(I,A1,d5), sequence(I,A2,_).

roman(0) --> [].
roman(A) --> (addition(A1); subtraction(A1)),
	{ A #= A1+A2, M is 10^truncate(log10(A1)), A2 #>= 0, A2 #< M }, roman(A2).