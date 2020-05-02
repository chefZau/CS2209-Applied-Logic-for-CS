last([X],X)./*with thie,the program produces lists that have the last thing*/
last([_|Z],X):-last(Z,X). /*the | denote a tail or the rest of the lists*/
