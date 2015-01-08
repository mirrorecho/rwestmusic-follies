from abjad import *

import copy
import subprocess

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

from calliope.work import Arrangement, Project, Part

# TO DO
# - (DONE... although pretty hacky) figure out lyrics
# --- (assume will need to save lilypond strings into files from abjad, then add lyrics manually through lilypond)
# - (DONE) put arrangement on normal size paper

class LoveArrangement(Arrangement):
    def __init__(self):

        super().__init__(name="love_song", title="An Undecided...", project=Project(name="rwestmusic-follies"))
        self.add_part(name='voice', instrument=instrumenttools.MezzoSopranoVoice(instrument_name="Voice", short_instrument_name="."))
        self.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="Piano", short_instrument_name="."))


love_arrangement = LoveArrangement()


blank_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
    ]

lyrics = ""

def extend_lines(lines):
    big_lines = ["", "", "", ""]
    global lyrics
    for l in lines:
        big_lines[0] = big_lines[0] + l[0] + " " 
        big_lines[1] = big_lines[1] + l[1] + " " 
        big_lines[2] = big_lines[2] + l[2] + " " 
        big_lines[3] = big_lines[3] + l[3] + " " 
    love_arrangement.parts["voice"].extend("\\relative c' {" + big_lines[0] + "}")
    lyrics += big_lines[1] + " "
    love_arrangement.parts["piano"][0].extend("\\relative c' {" + big_lines[2] + "}")
    love_arrangement.parts["piano"][1].extend("\\relative c {" + big_lines[3] + "}")


# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
# here's the music!

love_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
    ]


mouse_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "\\times 2/3 { d4(  <a' c>  e }  <g e'>4.)                c8(",
               "a1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "\\times 2/3 { d,4  <a' c>  e }   <g e'>2)                ",
               "f'4              g4              a2",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "f,8[(   d']     e[      c])      f4(             e",
               "d4              c4              a2",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "r2                              f4^\\p          e       ",
               "                                I               once    ",
               "c'2)                            f,8[(   d']     e[      c]",
               "a2                              d4(             <a c>~       ",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { f4   e      g }   g4              r8      f",
               "             lived like   a     mouse                   a-",
               "\\times 2/3 { f,4  <c' e>  g }  <b g'>4.)               f8(",
               "<a c>4          <g e'>4~        <g e'>2)                ",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { e4    g     g}    g4              r4",
               "              lone  in    my    house",
               "\\times 2/3 { e2        g4  }   <b g'>2)        ",
               "\\times 2/3 { <c, a'>4(  g'2~ }  g4..)                    c,16",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              f^\\<           c               r8      c16  c",
               "                when            fate                    in-  ter- ",
               "<c, d f>2                       c8.      e16    c8      c16  c",
               "c4              c4              a4              bf4",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { g'4    g     g}   g4^\\!\\mf      r4",
               "             up-    ted    my    life ",
               "R1",
               "c2                              e,2             ",
        ],
    ]

swept_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "e,1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              g'4^\\mf        \\times 2/3 { bf4   a   f } ",
               "                fate                          swept me  a-    ",
               "r2                              \\times 2/3 { <c f bf>4   <c f a>   <c f> }",
               "e4              f2.                             ",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "f2                              r4              g",
               "way                                             and",
               "<c d f>1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { bf8  a  a4  f4 }  f2 ",
               "              sud- den- ly one  day ",
               "\\times 2/3 { <c f bf>8  <c f a> <c f a>4 <c f> } <c d f>2",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              f               g4.                     f8",
               "                I               found                   my-",
               "R1",
               "r4              a4              bf2",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "f4              r8      a8      \\times 2/3 {  a4     g    f }",
               "self                    in                    charge   of   a ",
               "r2                              \\times 2/3 { <c f a>4     g    <c f> }",
               "bf2                             <a f'>2",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "f2.                                             r4",
               "play",
               "<c d f>1",
               "d1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
    ]

strive_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "r2                              r4              f8^\\p  e",
               "                                                it      be-",
               "R1",
               "R1",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "f4              g               g16  g8.        r8      f",
               "came            my              miss -ion               to",
               "R1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { e4    g     g}    g16  g8.        r4",
               "              save  a   tra-    di- tion",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "f4\\<           e               c'2^\\!\\f",
               "I               must            strive",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "r8      g       g[      g]       \\times 2/3 {  bf4   a    f }",
               "        to      keep    the                    foll- ies    a-",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "f2                              r4              g4",
               "live                                            and ",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "g4             g               a2",
               "help            them            thrive ",
               "R1",
               "R1",
        ],
    ]

throngs_lines = [
        copy.deepcopy(mouse_lines[0]),
        copy.deepcopy(mouse_lines[1]),
        copy.deepcopy(mouse_lines[2]),
           #3 ||-------|------||-------|------||-------|------||-------|------
        [      "r2                              f4(^\\p         e)    ",
               "                                Now             --",
               copy.copy(mouse_lines[3][2]), copy.copy(mouse_lines[3][3]),
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { f4   e      g }   g4              r8      f16   e",
               "              all  of    these  throngs                 need- ed",
               copy.copy(mouse_lines[4][2]), copy.copy(mouse_lines[4][3]),
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      copy.copy(mouse_lines[5][0]),
               "              all  of    these  songs",
               copy.copy(mouse_lines[5][2]), copy.copy(mouse_lines[5][3]),
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              f^\\<           \\times 2/3 { c    c    c }",
               "                and                           won- der- ful",
               "R1",# maybe this should be different to match the vocal line...
               copy.copy(mouse_lines[6][3]),
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      copy.copy(mouse_lines[7][0]),
               "           speech-  es   to     speak",
               copy.copy(mouse_lines[7][2]), copy.copy(mouse_lines[7][3]),
        ],
]

# Bb       A   F   F+
# Written by me, once so meek! 

# (spoken) And then, and then, would you believe….
# Along came a chance for romance
# Along came a Frenchman, 
# A real Frenchman from France!

me_lines = [
        copy.deepcopy(swept_lines[0]),
           #1 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              g'4^\\mf        \\times 2/3 { bf4   a   f } ",
               "                fate                          swept me  a-    ",
               copy.copy(swept_lines[1][2]), copy.copy(swept_lines[1][3]), # maybe match the vocal line?
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "f2                              r4              g",
               "way                                             and",
               copy.copy(swept_lines[2][2]), copy.copy(swept_lines[2][3]),
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "\\times 2/3 { bf8  a  a4  f4 } f2 ",
               "              sud- den- ly one  day ",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "r4              f               g4.                     f8",
               "                I               found                   my-",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "f4              r8      a8      \\times 2/3 {  a4     g    f }",
               "self                    in                    charge   of   a ",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "f2.                                             r4",
               "play",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
]


mouse2_lines = [
        copy.deepcopy(mouse_lines[0]),
        copy.deepcopy(mouse_lines[1]),
        copy.deepcopy(mouse_lines[2]),
        copy.deepcopy(mouse_lines[3]),
        copy.deepcopy(mouse_lines[4]),
        copy.deepcopy(mouse_lines[5]),
           #6 ||-------|------||-------|------||-------|------||-------|------
        [      "r8      f^\\<   f       f       c       c       c4",
               "        and     ne-     ver     thought I`d     be",
               "R1",# maybe this should be different to match the vocal line...
               copy.copy(mouse_lines[6][3]),
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      copy.copy(mouse_lines[7][0]),
               "             an- y- one`s       wife",
               copy.copy(mouse_lines[7][2]), copy.copy(mouse_lines[7][3]),
        ],
]




# (spoken) And then the other Frog turned into a prince
# (spoken) And ever since, though I’ve had hints

# G  A      C          B        G    G
# I don’t know which to choose
# G  A      C           B       G    D
# I don’t know which to lose

choose_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
    ]

# (F)     E          F     G   G        F     E            F       G    G  
#      Which should I chose and which should I lose

#  F        C        C    C        C         G   G     G   G      G
# Tell me which one should be my leading man 

tell_lines = [
           #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #0 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #1 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #2 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #3 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
           #4 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #5 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #6 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ], #7 ||-------|------||-------|------||-------|------||-------|------
        [      "R1",
               "",
               "R1",
               "R1",
        ],
    ]

#extend_lines(love_lines)

extend_lines(mouse_lines)
extend_lines(swept_lines)
extend_lines(strive_lines)

extend_lines(throngs_lines)
extend_lines(me_lines)

extend_lines(mouse2_lines)
extend_lines(choose_lines)

extend_lines(tell_lines)



def full_output():
    love_arrangement.make_score()
    score = love_arrangement.score

    spacing_vector = layouttools.make_spacing_vector(0, 0, 6, 0)
    override(score).vertical_axis_group.staff_staff_spacing = spacing_vector
    override(score).staff_grouper.staff_staff_spacing = spacing_vector
    set_(score).mark_formatter = schemetools.Scheme('format-mark-box-numbers')
    lilypond_file = lilypondfiletools.make_basic_lilypond_file(score)

    # configure the lilypond file...
    lilypond_file.global_staff_size = 16

    context_block = lilypondfiletools.ContextBlock(
        #source_context_name="Staff \RemoveEmptyStaves",
        )
    override(context_block).vertical_axis_group.remove_first = True
    lilypond_file.layout_block.items.append(context_block)

    # assume we can use default dimensions...

    # bottom_margin = lilypondfiletools.LilyPondDimension(0.5, 'in')
    # lilypond_file.paper_block.bottom_margin = bottom_margin

    # top_margin = lilypondfiletools.LilyPondDimension(0.5, 'in')
    # lilypond_file.paper_block.top_margin = top_margin

    # left_margin = lilypondfiletools.LilyPondDimension(0.75, 'in')
    # lilypond_file.paper_block.left_margin = left_margin

    # right_margin = lilypondfiletools.LilyPondDimension(0.5, 'in')
    # lilypond_file.paper_block.right_margin = right_margin

    # paper_width = lilypondfiletools.LilyPondDimension(11, 'in')
    # lilypond_file.paper_block.paper_width = paper_width

    # paper_height = lilypondfiletools.LilyPondDimension(17, 'in')
    # lilypond_file.paper_block.paper_height = paper_height

    system_system_spacing = layouttools.make_spacing_vector(0, 0, 12, 0)
    lilypond_file.paper_block.system_system_spacing = system_system_spacing

    lilypond_file.header_block.composer = markuptools.Markup('Randall West')

    # TO DO... move "for Taiko and Orchestra" to subtitle
    lilypond_file.header_block.title = markuptools.Markup(love_arrangement.title)

    #song_ly = '\\language "english" \n\r\n\r'
    song_ly = ""
    song_ly += "lovelyrics = \\lyricmode {" + lyrics + "} \n\r\n\r"
    song_ly += format(lilypond_file)

    song_ly = song_ly.replace('\\new Staff {', '\\new Staff {\n\r       \\new Voice ="voice" {', 1)

    song_ly = song_ly.replace("\\new PianoStaff <<", "}\n\r    \\new Lyrics \\lyricsto voice \\lovelyrics \n\r    \\new PianoStaff <<")
    
    with open("love_song.ly", "w") as song_file:
        song_file.write(song_ly)
    
    subprocess.call(["lilypond", "love_song.ly"])
    systemtools.IOManager.open_file("love_song.pdf")

    #get_pdf("love_song.ly")
    
full_output()

#love_arrangement.show_pdf()

# l_string = "\\addlyrics { yo la }"
# v_string = "\\relative c' {a'1 | a1 }"
# p_string = "R1 | R1"

# arr = LoveArrangement()
# arr.parts["voice"].extend(v_string)
# arr.parts["piano"][0].extend(p_string)
# arr.parts["piano"][0].extend(p_string)

# arr.make_score()

# print(format(arr.score))

#show(c)


