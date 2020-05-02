:- use_module(library(lists)).   /* that is the library */

 /* the numlist isthe buildin function    */
 /* perm is build in as well, but i perfer to write it out */
 /* the checkDiagonals would check the validity */
 /* when this three functors works the nqueens works */
nQueens(N,Board):-
    numlist(1,N,L),permutation(L,Board),checkDiagonals(Board).

/* this part is  */
permutation([],[]).
permutation([Head|Tail],PermList):-
    permutation(Tail,PermTail),del(Head,PermList,PermTail).

del(A,[A|List],List).
del(A,[B|List],[B|List1]):-
    del(A,List,List1).

checkDiagonals([]).
checkDiagonals([Queen|Others]):-
    checkDiagonals(Others),noattack(Queen,Others,1).


noattack(_,[],_).
noattack(Y,[Y1|Ylist],Xdist):-
    Y1-Y=\=Xdist,
    Y-Y1=\=Xdist,
    Dist1 is Xdist+1,
    noattack(Y,Ylist,Dist1).
