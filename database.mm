$( My personal theorem database in metamath $)

$( 
    ------------------------
    Declaration of constants 
    ------------------------
$)

$c |- $.
$c wff $.

$c ( $.
$c ) $.

$c -> $.
$c -. $.

$( 
    ------------------------
    Declaration of variables 
    ------------------------
$)

$v ph $.
$v ps $.
$v ch $.
$v ta $.
$v th $.

$( 
    -----------------------------
    Declaration of variable types 
    -----------------------------
$)

wph $f wff ph $.
wps $f wff ps $.
wch $f wff ch $.
wta $f wff ta $.
wth $f wff th $.

$( 
    --------------------------------------------
    Recursive definition of well-formed formulas 
    --------------------------------------------
$)

wi $a wff ph -> ps $.
wn $a wff -. ph $.