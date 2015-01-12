from abjad import *

import copy

from tools import MathArrangement, rel

math_arrangement = MathArrangement()

# TO DO... 
# - double Sue's pitches in #s
# tempo (slow down in middle)
# key change near end?
# - add arpeggio on Sue G chord
# phrasing
# respell accidentals?
# move Mouse-e-an and Gaussian up?
# rit in curve lines
# check for cautionary accidnetals
# awkward leading into the final intro (maybe put sue piano part here?)
# roll before this nerd...
# would be better to hold after Gaussian
# staff spacing
# remove "engraving by lilypond"
# arppegios
# (maybe) - more complex dynamics
# 8va at eighty-nine

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# here's the music!


 
REST = "R2. R2."

piano_plunk_c = rel("c,", "<c c'>4.(    g'4.-.) ")
piano_plunk_d = rel("c,", "<d d'>4.(    a'4.-.) ")

piano_jive = [
  "c2. ",
  "b4-- b8-.  d4-- e8-. ",
  "f4-- e8-. g,4.-.-> ",
  "c4-.-> r8 r4.",
  ]

piano_jive_mod = [
  piano_jive[0],
  piano_jive[1],
  "f4.-.->  f4.-.-> ",
  "<a cs fs>2.",
  ]

piano_joss = [
  "<g e'>2.", 
  "d4-. f8-. gs4-. b8-.",
  "gs4-. g8-. b4-.-> r8", 
  "<c, c'>4-.-> r8 r4."
]
piano_joss_mod = [
  piano_joss[0], 
  piano_joss[1],
  "gs4.-.-> gs4.-.->", 
  "<fs cs'>2."
]

piano_c_rag = rel("c", "<e g c>4-- <e g c>8-.")

piano_d_rag = rel("c", "<f a d>4-- <f a d>8-.")

piano_c_pickup = rel("c", "r4 <e g c>8-.")

piano_d_pickup = rel("c", "r4 <f a d>8-.")

intro = [
  [REST, "", REST, "", "r4. " + piano_c_pickup + piano_c_rag + "r4. " , piano_plunk_c*2],
  [REST, "", REST, "", "r4. " + piano_d_pickup + piano_d_rag + "r4. " , piano_plunk_d*2],  
  [REST, "", REST, "", rel("c'", piano_jive[0] + piano_jive[1]), rel("c", piano_joss[0] + piano_joss[1])],    
  [REST, "", 
    "R2. r4. c4     c8", 
    "        Though my", 
    rel("c'", piano_jive[2] + "r4." + piano_c_rag), 
    rel("c", piano_joss[2] + piano_joss[3])],  
]

# intro 2 is identical, except different lyrics at end...
intro_2 = copy.deepcopy(intro)
intro_2[3][3] = "Though we"

# same for intro 3
intro_3 = copy.deepcopy(intro)
intro_3[3][3] = "Still I\'d"

# into 4 also has slightly different last measure
intro_4 = copy.deepcopy(intro)
intro_4[3]=[REST, "", 
    "R2. r4. r4     c8", 
    "                So", 
    rel("c", piano_jive[2] + "r4. r4    <e g c>8"), 
    rel("c,", piano_joss[2] + piano_joss[3])]

#intro 5 copies vocal part at end to Sue
intro_5 = copy.deepcopy(intro)
intro_5[3][0] = intro_5[3][2]
intro_5[3][1] = "Though his"

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

aso_line=["c4   c8 ",
          "c4   d8 ",      
          "e4   d8 ",      
          "d4   d8 ",
          #--------
          "d4   d8 ",      
          "d4   e8 ",      
          "f4   e8 ",      
          "r4. "]

aso = [
        [  #0 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               REST, "",
               "".join(aso_line[0:4]),
               "love            is      as-             ymp-    to-             tic     And             my",
               piano_c_rag +           "<e, g c>4--     <e g d'>8-. <e g e'>4--  <e g d'>8-." +  piano_d_pickup,
               rel("c,", piano_plunk_c*2),
        ],[#1 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               REST, "",
               "".join(aso_line[4:8]),
               "pass-           ion     i-              di-     o-              tic",
               piano_d_rag +           "<f a d>4      <f a e'>8  <f a f'>4     <f a e'>8 r4.",
               piano_plunk_d   +                              "<d, d'>4.--             r4.",
        ],[#2 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               'r2.\\fermata^"(ridiculous long fermata)"         R2.                     ', "",
               'g2.\\fermata^"(ridiculous long fermata)"         R2.                     ',
               "Sue!                                                                    ",
               '<g\' b d g>2.\\fermata^"(ridiculous long fermata)" ' + rel("c'",piano_jive[1]), # arpeggiate here (TO DO ... giving error)
               "<g, d' g>2.\\fermata " + rel("c,",piano_joss[1]),
        ],[#3 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
                REST, "",
               "R2.                                             r4.                     fs4.",
               "                                                                        to",
               rel("c'", piano_jive_mod[2] + piano_jive_mod[3]),
               rel("c",piano_joss_mod[2] + piano_joss_mod[3]), # TO DO... adjust for key change
        ],
    ]
# ---------------------------------------------------
aso_2 = copy.deepcopy(aso)  # CORRELATION

aso_line_2 = copy.deepcopy(aso_line)
aso_line_2[3] = "d8\\fff\\> d8 d8^\\p\\! "
aso_line_2[4] = aso_line_2[3]
aso_line_2[5] = "d4\\ff   e8\\ppp "
aso_line_2[6] = "f4.\\sfz "
aso_line_2[7] = "r4. "

aso_2[0][2] = "".join(aso_line_2[0:4])
aso_2[0][3]="have            no      cor-            re-     la-             tion    And     our     dy-"

aso_2[1][2] = "".join(aso_line_2[4:8])
aso_2[1][3]="na-     mics    are     too             com-    plex" 

aso_2[2][0]=REST # get rid of fermata and adjust Tim's line at end
aso_2[2][2]=rel("c'","g8 g g   g4. ~ g2.")
aso_2[2][3]="Could-   n\'t     there  be"
aso_2[2][4]=aso_2[2][4].replace('\\fermata^"(ridiculous long fermata)"', ' ')
aso_2[2][5]=aso_2[2][5].replace('\\fermata', ' ')

aso_2[3][2]=REST # no pickup before the slide down
aso_2[3][3]=""

# ---------------------------------------------------
aso_3 = copy.deepcopy(aso_2)

aso_line_3 = copy.deepcopy(aso_line) # the line is closer to the first time through
aso_line_3[3] = "r4 d8"

aso_3[0][2] = "".join(aso_line_3[0:4])
aso_3[0][3]="love            some    sa-             tis-    fac-            tion                    A"

aso_3[1][2] = "".join(aso_line_3[4:8])
aso_3[1][3]="whole           not     just            a       frac-          tion"

aso_3[2][2]=rel("c'","r4.   g4     g8     g4.    r4.")
aso_3[2][3]="               Let's  ne-   gate"   

aso_3[3] = copy.deepcopy(aso[3]) # bring the pickup back from beginning
aso_3[3][3] = "this"

# ??? change?  the pause after negate is awkward...
# ---------------------------------------------------
aso_4 = copy.deepcopy(aso_2)

aso_line_4 = copy.deepcopy(aso_line) 
aso_line_4[5] = "d4              e8("
aso_line_4[6] = "f4)            e8"

aso_4[0][2] = "".join(aso_line_4[0:4])
aso_4[0][3]="let             us      be              bi-     no-             mi-     al              You"

aso_4[1][0]="R2. r4. r4 g'8" # OK that G's not prepared? (probably OK)
aso_4[1][1]="Oh "  
aso_4[1][2] = "".join(aso_line_4[4:8])
aso_4[1][3]="make            me      feel            Ro-                     meoal"

aso_4[2][0]="g2. R2." 
aso_4[2][1]="Tim!"  
aso_4[2][2]=REST
aso_4[2][3]=""   

aso_4[3][0]="R2. r4. fs4." 
aso_4[3][1]="You're "  
aso_4[3][2]=REST
aso_4[3][3]="" 
# ---------------------------------------------------
blast=[]
blast.append(copy.deepcopy(aso[0])) # use only first two phrases from aso
blast.append(copy.deepcopy(aso[1]))
blast[0][0] = blast[0][2] # copy notes to Sue
blast[1][0] = blast[1][2]
# adjustment to Sue's lyrics
blast[0][1] = "love            is      as-             ymp-    to-             tic     And             his"

blast.append([
  REST + REST,"",REST + REST,"",
  rel("c'"," ".join(piano_jive)),
  " ".join(piano_joss),
  ])

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

curve = [
        [  #0 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------  
               REST, "",
               "fs4.                    f4.                     e4.                     ds4.",
               "oth-                    ers                     you                     seem",
               "a4.                     <gs d'>4.                <a e'>8 c8      <ds a>  <c ds>  a       <c a'>",
               "fs,8    cs'     f!      <b, f'>4.               <c e>4.                 <fs, ds'>4      ds8",
        ],[#1 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               REST, "",
               "d'?4             d4              d4              r4.                     f,",
               "Mous-           e-              ian                                     to",
               "<b d>4          <fs a c d>4     d'4             f,?8    b       d       f       f,      d'",
               "<d g d'>4.              <d d'>4.                <g d'>2. ",
        # TO DO... RIT HERE...!
        ],[#1 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               REST, "",
               "f4.                     e4.                     ds4.                    d4.",
               "me                      your                    cur-                    va- ",
               "f8      f,      d'       e       as,   <cs as'>  ds      b       gs'     f       b,      <b gs'>",
               "<d d'>4         e'8     <g, e'>4.                <gs ds'>4      f'8      <f, d'>4.",
        ],[#2 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               REST, "",
               "cs4.                    c4.                     b'4              b4              b4",
               "ture                    is                      Gaus-           si-             an",
               "cs8     a       fs'     c       a       <ds fs> <a b fs'>2. ",
               "<fs cs'>4       ds'8    <c ds>4.                 <b ds>2. ",
        ],
    ]
# ---------------------------------------------------
curve_2 = copy.deepcopy(curve)

curve_2[0][2] = "fs8     fs8     fs4             f4              e4.                     ds4."
curve_2[0][3] = "Could-   n’t     there           be              some                    e-"

curve_2[1][2] = "d?4.                     d4.                    R2."
curve_2[1][3] = "quat-                   ion"

curve_2[2][3] = "May-                    be                      some-                    thing"

curve_2[3][2] = "cs4.                    c4.                     b'4.                     r4."
curve_2[3][3] = "short                   of                      sex?"  # spoken??
# ---------------------------------------------------
curve_3 = copy.deepcopy(curve)

curve_3[0][3] = "dis-                    tance                   tween                   our"

curve_3[1][2] = "d?4.                    d4.                    r4.                     f4              f8"
curve_3[1][3] = "ac-                     tion                                           Cuz             I"

curve_3[2][3] = "suff-                   er                      such                    a"

curve_3[3][2] = "cs4.                    c4              c8      b4.                     b4."
curve_3[3][3] = "pri-                    mal             a-      trac-                   tion"
# ---------------------------------------------------
curve_4 = copy.deepcopy(curve)

# now the line moves to Sue... with some minor adjustments
curve_4[0][0] = curve[0][2]
curve_4[0][1] = "smart                   but                     so                       mo-"
curve_4[0][2] = REST
curve_4[0][3] = ""

curve_4[1][0] = "d?4.                    d4.                      r4.                    f"
curve_4[1][1] = "ron-                    ic                                              Please"
curve_4[1][2] = REST
curve_4[1][3] = ""

curve_4[2][0] = curve[2][2]
curve_4[2][1] = "try                     to                      keep                    your"
curve_4[2][2] = REST
curve_4[2][3] = ""

# the last piano line is also different
curve_4[3][0] = "cs4.                    c4.                     b'4.                     b4."
curve_4[3][1] = "thoughts                pla-                    ton-                    ic"
curve_4[3][2] = REST
curve_4[3][3] = ""
curve_4[3][4] = "cs8     a       fs'     ds       c      a'     <d, b'>2."
curve_4[3][5] = "<fs cs'>4       ds'8    a,4      fs'8          <b, f'>2."

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

sue_1 = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::||::::::::::::::::::::::::::::::::::::::::::::
        [  #0 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------  
               "R2.                                             f4-.            f8-.    f4.-.", 
               "                                                Zer-            o       one",
               REST, "",
               "<a b fs'>4.             <f f'>8-.-> r8  r8       <g f'>4-.      <g f'>8-. <as f'>4.-.",
               "<b ds>2.                                         <c, c'>4.-.             <cs cs'>4.-.",
        ],[#1 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               "f4.-.                  f4.-.                   f4.-.                  gs4.-.",
               "one                     two                     three                   five",
               REST, "",
               "<as' f'>4.-.            <f f'>4.-.              <f f'>4.-.              <gs gs'>4.-.",
               "<cs cs'>4.-.            <d d'>4.-.              <ds ds'>4.-.            <es es'>4.-.",  # or just use f?
        ],[#1 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               "b4.-.                  r4.                     r4.                      a4.",
               "eight!                                                                  This",
               REST, "",
               "<b b'>4.-.              r4.                     <c a'>2.",
               "<gs gs'>4.-.            r4.                     <a a'>2.",
        ],[#2 ||-------|-------|------||-------|-------|------||-------|-------|------||-------|-------|------ 
               "a4->           a8       a4              b8      c4             b8       g4.",
               "nerd            I       don\'t           a-      pre-            ci-     ate",
               REST, "",
               "<d a'>4. ~              <d a'>4         b'8      <e, c'>4        b'8      <f g>8-.-> r8   r8",
               "<f f'>2.                                         <g g'>4.(               d'8-.)    r8   r8",
        ],
    ]
sue_2 = copy.deepcopy(sue_1)

sue_2[0][0]= REST
sue_2[0][1]=""

# TO DO... change these pitches
sue_2[1][0]="f4-.            f8 -.   r8      f8-.    f8-.    f4.-.                   r8      gs8-.   gs8-."
sue_2[1][1]="thir-           teen            twen-   ty-     one,                            thir-   ty"
# these changes are needed for the fib sequence...
sue_2[1][4]="<f f'>4-.        <f f'>8-.     r8  <a a'>8-. <a a'>8-. <a a'>4.-.      r8    <as' as'>8-. <as as'>8-."
sue_2[1][5]="<cs cs'>4-.       <cs cs'>8-.  r8  <f f'>8-. <f f'>8-. <f f'>4.-.      r8    <gs gs'>8-. <gs gs'>8-."

# TO DO... change these pitches
sue_2[2][0]="gs4.-.                   r4.                     r4.                     r4              a8"
sue_2[2][1]="four!                                                                                   Can"
# this change are needed for the fib sequence... OK?
sue_2[2][4]="<as as'>4.-.            r4.                     <c a'! >2."
sue_2[2][5]="<gs gs'>4.-.            r4.                     <a a' >2."

sue_2[3][0]="a8      a8      a 8     a8      a8      b8      c4.                    r4."
sue_2[3][1]="an-     y-      one     be      such    a       bore!?"
# ---------------------------------------------------
# TO DO... ALL OK?
sue_3 = copy.deepcopy(sue_1)

sue_3[0][0]="R2.                                             r4.                     r8      f8-.   f8-."
sue_3[0][1]="                                                                                fif-    ty"
sue_3[0][4]="<a b fs'>4.             <f f'>8-.-> r8  r8      <f' f'>4.-.             r8      <g' g'>8-.    <g g'>8"

sue_3[1][0]="f4.-.                  r4.                     r4.                     r8       gs8-.   gs8-."
sue_3[1][1]="five                                                                            eight-  y"
sue_3[1][4]="<g g'>4.               r4.                     <gs, gs'>4.-.               r8       <f'' f'>8-.  <f f'>8-."

sue_3[2][1]="nine!                                                                                   Be-"
sue_3[2][4]="<f f'>4.                r4.                     <c, a'>2."

sue_3[3][1]="sides,          it\'s    not             for     you             I       pine"

# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

math_arrangement.extend_lines(intro)
math_arrangement.extend_lines(aso)
math_arrangement.extend_lines(curve)
math_arrangement.extend_lines(sue_1)

math_arrangement.extend_lines(intro_2)
math_arrangement.extend_lines(aso_2)
math_arrangement.extend_lines(curve_2)
math_arrangement.extend_lines(sue_2)

math_arrangement.extend_lines(intro_3)
math_arrangement.extend_lines(aso_3)
math_arrangement.extend_lines(curve_3)
math_arrangement.extend_lines(sue_3)

math_arrangement.extend_lines(intro_4)
math_arrangement.extend_lines(aso_4)
math_arrangement.extend_lines(curve_4)

math_arrangement.extend_lines(intro_5)
math_arrangement.extend_lines(blast)

math_arrangement.show_pdf()
#math_arrangement.play()
