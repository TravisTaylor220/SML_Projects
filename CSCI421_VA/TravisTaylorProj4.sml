datatype 'element mylist = NIL | CONS of 'element * 'element mylist;

fun prod NIL = 1 | prod (CONS (x, xs)) = x * (prod xs);

fun append NIL L = L | append (CONS(x, xs)) L = CONS(x, (append xs L));

fun reverse NIL = NIL | reverse (CONS(x, xs)) = append (reverse xs) (CONS(x, NIL));

(*
Travis Taylor 
CSCI_421_VA 
Project 4

D:\CSCI421_VA>REM
Standard ML of New Jersey (32-bit) v110.99 [built: Thu Dec 24 11:01:10 2020]
[opening .\TravisTaylorProj4.sml]
datatype 'a mylist = CONS of 'a * 'a mylist | NIL
val prod = fn : int mylist -> int
val append = fn : 'a mylist -> 'a mylist -> 'a mylist
val reverse = fn : 'a mylist -> 'a mylist
- infixr 5 CONS;
infixr 5 CONS
- val a = 1 CONS 2 CONS 3 CONS NIL;
val a = 1 CONS 2 CONS 3 CONS NIL : int mylist
- val b = 4 CONS 5 CONS NIL;
val b = 4 CONS 5 CONS NIL : int mylist
- val c = append a b;
val c = 1 CONS 2 CONS 3 CONS 4 CONS 5 CONS NIL : int mylist
- val d = prod c;
val d = 120 : int
- val e = reverse c; 
val e = 5 CONS 4 CONS 3 CONS 2 CONS 1 CONS NIL : int mylist

*)