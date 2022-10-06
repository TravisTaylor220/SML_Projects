(* Travis Taylor 
   Project 2
   October 5, 2021 *)

fun newQuickSort nil = nil
|   newQuickSort [e] = [e]
|   newQuickSort (head::tail) = 
    let
    fun partition (pivot, nil) = (nil, nil)
    |   partition (pivot, head::tail) =
    let
        val (x, y) = partition (pivot, tail)
    in
        if head < pivot
        then (head::x, y)
        else (x, head::y)
    end;
    val (x, y) = partition (head, tail)
in
    newQuickSort(x) @ [head] @ newQuickSort(y)
end;

(*
D:\CSCI421_VA>REM
Standard ML of New Jersey (32-bit) v110.99 [built: Thu Dec 24 11:01:10 2020]
[opening .\TravisTaylorProj2.sml]
val newQuickSort = fn : int list -> int list
- val x = [3, 1, 4, 8, 9, 5, 7, 6, 2, 0];
val x = [3,1,4,8,9,5,7,6,2,0] : int list
- newQuickSort x;
val it = [0,1,2,3,4,5,6,7,8,9] : int list)
*)

<exp> ::= fn <variable> => <exp>
    | if <exp> then <exp> else <exp>
    | <compexp>
<compexp> ::= <addexp> < <addexp> | <addexp>
<addexp> ::= <addexp> + <mulexp>
    | <addexp> - <mulexp>
    | <mulexp>
<mulexp> ::= <mulexp> * <funexp> | <funexp>
<funexp> ::= <funexp> <rootexp> | <rootexp>
<rootexp> ::= let val <variable> = <exp> in <exp> end
    | (<exp>) | <variable> | <constant>

val3(minus(X,Y),Context,Value) :-
    val3(X,Context,XValue),
    val3(Y,Context,YValue),
    Value is XValue - YValue.

val3(lessthan(X,Y),Context,true) :-
    val3(X,Context,XValue),
    val3(Y,Context,YValue),
    XValue < YValue.

val3(lessthan(X,Y),Context,false) :-
    val3(X,Context,XValue),
    val3(Y,Context,YValue),
    XValue >= YValue.

val3(if(Guard,Then,_),Context,Value) :-
    val3(Guard,Context,true),
    val3(Then,Context,Value).

val3(if(Guard,_,Else),Context,Value) :-
    val3(Guard,Context,false),
    val3(Else,Context,Value).