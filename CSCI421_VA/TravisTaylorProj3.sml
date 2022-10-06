fun mymap1 f L = foldr (fn (a, b) => (f a)::b) [] L;

fun mymap2 f L = if (L = nil) then nil else (f(hd L))::(mymap2 f(tl L));

fun ordlist x = map ord x;

fun mylength L = foldr (fn(a, b) => b+1) 0 L;

fun max L = foldr (fn(a, b) => if a > b then a else b) ~1000 L;

(*
Travis Taylor
CSCI421_VA 
Project 3

D:\CSCI421_VA>REM
Standard ML of New Jersey (32-bit) v110.99 [built: Thu Dec 24 11:01:10 2020]
[opening .\TravisTaylorProj3.sml]
val mymap1 = fn : ('a -> 'b) -> 'a list -> 'b list
.\TravisTaylorProj3.sml:3.24 Warning: calling polyEqual
val mymap2 = fn : (''a -> 'b) -> ''a list -> 'b list
val ordlist = fn : char list -> int list
val mylength = fn : 'a list -> int
val max = fn : int list -> int
- ordlist [#"A", #"b", #"C"];
val it = [65,98,67] : int list
- mylength [9, 1, 4, 2, 3, 8, 7];
val it = 7 : int
- max [8, 2, 5, 9, 4, 7, 1, 3];
val it = 9 : int

*)