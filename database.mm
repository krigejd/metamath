$( My personal theorem database in metamath $)

$( 
    ------------------------
    Declarations of constants 
    ------------------------
$)

$c |- $.
$c wff $.
$c class $.

$c ( $.
$c ) $.

$c -> $.
$c -. $.

$c = $.
$c A. $.
$c E. $.
$c e. $.

$( 
    ------------------------
    Declarations of variables 
    ------------------------
$)

$v ph $.
$v ps $.
$v ch $.
$v ta $.
$v th $.

$v x $.
$v y $.
$v z $.

$v A $.
$v B $.

$( 
    -----------------------------
    Declarations of variable types 
    -----------------------------
$)

wph $f wff ph $.
wps $f wff ps $.
wch $f wff ch $.
wta $f wff ta $.
wth $f wff th $.

vx $f setvar x $.
vy $f setvar y $.
vz $f setvar z $.

cA $f class A $.
cB $f class B $.

$( 
    --------------------------------------------
    Recursive definitions of well-formed formulas 
    --------------------------------------------
$)

wi $a wff ( ph -> ps ) $.
wn $a wff -. ph $.

weq $a wff A = B $.
we $a wff A e. B $.
wal $a wff A. x ph $.
wex $a wff E. x ph $.

$( 
    --------------------------------
    Recursive definitions of classes
    --------------------------------
$)

cx $a class x $.

$( 
    --------------------------------
    Axioms of Propositional Calculus
    --------------------------------
$)

ax-1 $a |- ( ph -> ( ps -> ph ) ) $.
ax-2 $a |- ( ( ph -> ( ps -> ch ) ) -> ( ( ph -> ps ) -> ( ph -> ch ) ) ) $.
ax-3 $a |- ( ( -. ps -> -. ph ) -> ( ph -> ps ) ) $.

${ 
    ax-mp.1 $e |- ph $.
    ax-mp.2 $e |- ( ph -> ps ) $.
    ax-mp $a |- ps $. 
$}

$( 
    ----------------------------------
    Theorems of Propositional Calculus    
    ----------------------------------
$)

$( 
    -----------------------
    Theorems of Implication
    -----------------------
$)

  ${
    mp2.1 $e |- ph $.
    mp2.2 $e |- ps $.
    mp2.3 $e |- ( ph -> ( ps -> ch ) ) $.
    $( A double modus ponens inference $)
    mp2 $p |- ch $=
      ( wi ax-mp ) BCEABCGDFHH $.
  $}

  ${
    mp2b.1 $e |- ph $.
    mp2b.2 $e |- ( ph -> ps ) $.
    mp2b.3 $e |- ( ps -> ch ) $.
    $( A double modus ponens inference $)
    mp2b $p |- ch $=
      ( ax-mp ) BCABDEGFG $.
  $}

  ${
    a1i.1 $e |- ph $.
    $( Inference introducing an antecedent $)
    a1i $p |- ( ps -> ph ) $=
      ( wi ax-1 ax-mp ) ABADCABEF $.
  $}

  ${
    2a1i.1 $e |- ph $.
    $( Inference introducing two antecedents $)
    2a1i $p |- ( ch -> ( ps -> ph ) ) $=
      ( wi a1i ) BAECABDFF $.
  $}

  ${
    mp1i.1 $e |- ph $.
    mp1i.2 $e |- ( ph -> ps ) $.
    $( Inference detaching an antecedent and introducing a new one $)
    mp1i $p |- ( ch -> ps ) $=
      ( ax-mp a1i ) BCABDEFG $.
  $}

  ${
    a2i.1 $e |- ( ph -> ( ps -> ch ) ) $.
    $( Inference distributing an antecedent $)
    a2i $p |- ( ( ph -> ps ) -> ( ph -> ch ) ) $=
      ( wi ax-2 ax-mp ) ABCEEABEACEEDABCFG $.
  $}

  ${
    mpd.1 $e |- ( ph -> ps ) $.
    mpd.2 $e |- ( ph -> ( ps -> ch ) ) $.
    $( A modus ponens deduction $)
    mpd $p |- ( ph -> ch ) $=
      ( wi a2i ax-mp ) ABFACFDABCEGH $.
  $}

  ${
    imim2i.1 $e |- ( ph -> ps ) $.
    $( Inference adding common antecedents in an implication $)
    imim2i $p |- ( ( ch -> ph ) -> ( ch -> ps ) ) $=
      ( wi a1i a2i ) CABABECDFG $.
  $}

  ${
    syl.1 $e |- ( ph -> ps ) $.
    syl.2 $e |- ( ps -> ch ) $.
    $( Syllogism $)
    syl $p |- ( ph -> ch ) $=
      ( wi a1i mpd ) ABCDBCFAEGH $.
  $}



$( 
    ------------------------------------------
    Axioms of Predicate Calculus with Equality
    ------------------------------------------
$)

  ${
    ax-gen.1 $e |- ph $.
    ax-gen $a |- A. x ph $.
  $}

    ax-4 $a |- ( A. x ( ph -> ps ) -> ( A. x ph -> A. x ps ) ) $.

  ${ 
    $d x ph $. 
    ax-5 $a |- ( ph -> A. x ph ) $.
  $}

    ax-6 $a |- -. A. x -. x = y $.

    ax-7 $a |- ( x = y -> ( x = z -> y = z ) ) $.

    ax-8 $a |- ( x = y -> ( x e. z -> y e. z ) ) $.

    ax-9 $a |- ( x = y -> ( z e. x -> z e. y ) ) $.

