$( My personal theorem database in metamath $)

$( 
    ------------------------
    Declarations of constants 
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
    Declarations of variables 
    ------------------------
$)

$v ph $.
$v ps $.
$v ch $.
$v ta $.
$v th $.

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

$( 
    --------------------------------------------
    Recursive definitions of well-formed formulas 
    --------------------------------------------
$)

wi $a wff ( ph -> ps ) $.
wn $a wff -. ph $.

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
