eightQueens(Board):-
    permutation([1,2,3,4,5,6,7,8],Board),checkDiagonals(Board).

permutation([],[]).
permutation([H|T],PermList):-
    permutation(T,PermTail),del(H,PermList,PermTail).

del(A,[A|List],List).
del(A,[B|List],[B|List1]):-
    del(A,List,List1).

checkDiagonals([]).
checkDiagonals([Queen|Others]):-
    checkDiagonals(Others),noattack(Queen,Others,1).

noattack(_,[],_).
noattack(Y,[Y1|Ylist],Xdist):-
    Y1-Y=\=Xdist,Y-Y1=\=Xdist,Dist1 is Xdist+1,noattack(Y,Ylist,Dist1).

/*
    The task is to place 8 queens on an 8x8 chessboard such that none of the queens is under attack. This means that no two queens share the same row, column or diagonal.

   perm consits of two parts, one is the permutation one is the del,

   the checkdaigonals is the actual part to avoid the crush of two
   queens
*/
