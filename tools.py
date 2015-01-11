from abjad import *

import copy
import subprocess

# any way to avoid this sys path part??
import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

import calliope

from calliope.work import Arrangement, Project, Part

class FolliesSongArrangement(Arrangement):
    def __init__(self, name, title):

        super().__init__(name=name, title=title, project=Project(name="rwestmusic-follies"))

    def get_ly_string(self, lilypond_file):
        return format(lilypond_file)

    def arrange_score(self):
        pass

    def play(self):
        self.make_score()
        play(self.score)

    def show_pdf(self):
        self.make_score()

        self.arrange_score()

        spacing_vector = layouttools.make_spacing_vector(0, 0, 6, 0)
        override(self.score).vertical_axis_group.staff_staff_spacing = spacing_vector
        override(self.score).staff_grouper.staff_staff_spacing = spacing_vector
        set_(self.score).mark_formatter = schemetools.Scheme('format-mark-box-numbers')
        lilypond_file = lilypondfiletools.make_basic_lilypond_file(self.score)

        # configure the lilypond file...
        lilypond_file.global_staff_size = 16

        context_block = lilypondfiletools.ContextBlock(
            # source_context_name="Staff \RemoveEmptyStaves",
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

        
        lilypond_file.header_block.title = markuptools.Markup(self.title)
        # TO DO... subtitle?
        # lilypond_file.header_block.subtitle = markuptools.Markup("(voice part with piano sketches)")

        song_ly = self.get_ly_string(lilypond_file)

        with open("pdf/" + self.name + ".ly", "w") as song_file:
            song_file.write(song_ly)
        
        subprocess.call(["lilypond", "pdf/" + self.name + ".ly"])
        systemtools.IOManager.open_file(self.name + ".pdf")

    def combine_lines(self, lines):
        num_parts = len(lines[0])
        big_lines = ["" for i in range(num_parts)]
        global lyrics
        for l in lines:
            for i in range(num_parts):
                big_lines[i] = big_lines[i] + l[i] + " " 
        return big_lines


class LoveArrangement(FolliesSongArrangement):
    def __init__(self):

        super().__init__(name="love_song", title="An Undecided Love Song")
        self.add_part(name='voice', instrument=instrumenttools.MezzoSopranoVoice(instrument_name="Voice", short_instrument_name="."))
        self.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="Piano", short_instrument_name="."))

        # lyrics
        self.lyrics = ""

    def extend_lines(self, lines):
        big_lines = self.combine_lines(lines)
        self.parts["voice"].extend("\\relative c' {" + big_lines[0] + "}")
        self.lyrics += big_lines[1] + " "
        self.parts["piano"][0].extend("\\relative c' {" + big_lines[2] + "}")
        self.parts["piano"][1].extend("\\relative c {" + big_lines[3] + "}")

    def get_ly_string(self, lilypond_file):
        # hacks in here to add the lyrics lilypond code manually...
        song_ly = ""
        song_ly += "lovelyrics = \\lyricmode {" + self.lyrics + "} \n\r\n\r"
        song_ly += format(lilypond_file)

        song_ly = song_ly.replace('\\new Staff {', '\\new Staff\n\r       \\new Voice ="voice" {', 1)

        song_ly = song_ly.replace("\\new PianoStaff <<", "\\new Lyrics \\lyricsto voice \\lovelyrics \n\r    \\new PianoStaff <<")
        
        return song_ly

class MathArrangement(FolliesSongArrangement):
    def __init__(self):

        super().__init__(name="math_song", title="An Asymptotic Love Affair")
        self.add_part(name='sue_voice', instrument=instrumenttools.MezzoSopranoVoice(instrument_name="Mezzo Soprano",short_instrument_name="."))
        self.add_part(name='tim_voice', instrument=instrumenttools.BaritoneVoice(instrument_name="Baritone", allowable_clefs=('bass', ),  short_instrument_name="."))
        self.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="Piano", short_instrument_name="."))

        # lyrics
        self.sue_lyrics = ""
        self.tim_lyrics = ""

    def arrange_score(self):
        attach(Clef('bass'), self.score[1]) # not sure why the part didn't add the staff properly...
        for staff in self.score:
            time_signature = TimeSignature((6,8))
            attach(time_signature, staff)
        tempo = Tempo(Duration(3, 8), 132)
        attach(tempo, self.score[0])

    def extend_lines(self, lines):
        big_lines = self.combine_lines(lines)
        self.parts["sue_voice"].extend("\\relative c' {" + big_lines[0] + "}")
        self.sue_lyrics += big_lines[1] + " "
        self.parts["tim_voice"].extend("\\relative c {" + big_lines[2] + "}")
        self.tim_lyrics += big_lines[3] + " "
        self.parts["piano"][0].extend("\\relative c' {" + big_lines[4] + "}")
        self.parts["piano"][1].extend("\\relative c {" + big_lines[5] + "}")

    def get_ly_string(self, lilypond_file):
        # hacks in here to add the lyrics lilypond code manually...
        song_ly = ""
        song_ly += "suelyrics = \\lyricmode {" + self.sue_lyrics + "} \n\r\n\r"
        song_ly += "timlyrics = \\lyricmode {" + self.tim_lyrics + "} \n\r\n\r"
        song_ly += format(lilypond_file)

        song_ly = song_ly.replace('\\new Staff {', '\\new Staff\n\r       \\new Voice ="suevoice" {', 1)
        song_ly = song_ly.replace('\\new Staff {', '\\new Lyrics \\lyricsto suevoice \\suelyrics \n\r    \\new Staff\n\r       \\new Voice ="timvoice" {', 1)

        song_ly = song_ly.replace("\\new PianoStaff <<", "\n\r    \\new Lyrics \\lyricsto timvoice \\timlyrics \n\r    \\new PianoStaff <<")
        
        return song_ly


class TheatricalArrangement(FolliesSongArrangement):
    def __init__(self):

        super().__init__(name="love_song", title="An Amateur Theatrical")
        self.add_part(name='voice', instrument=instrumenttools.MezzoSopranoVoice(instrument_name="Voice", short_instrument_name="."))
        self.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="Piano", short_instrument_name="."))

        # lyrics
        self.lyrics = ""

    def extend_lines(self, lines):
        big_lines = self.combine_lines(lines)
        self.parts["voice"].extend("\\relative c' {" + big_lines[0] + "}")
        self.lyrics += big_lines[1] + " "
        self.parts["piano"][0].extend("\\relative c' {" + big_lines[2] + "}")
        self.parts["piano"][1].extend("\\relative c {" + big_lines[3] + "}")

    def get_ly_string(self, lilypond_file):
        # hacks in here to add the lyrics lilypond code manually...
        song_ly = ""
        song_ly += "theaterlyrics = \\lyricmode {" + self.lyrics + "} \n\r\n\r"
        song_ly += format(lilypond_file)

        song_ly = song_ly.replace('\\new Staff {', '\\new Staff\n\r       \\new Voice ="voice" {', 1)

        song_ly = song_ly.replace("\\new PianoStaff <<", "\\new Lyrics \\lyricsto voice \\theaterlyrics \n\r    \\new PianoStaff <<")
        
        return song_ly


class DramaArrangement(Arrangement):
    def __init__(self, name, title):

        super().__init__(name=name, title=title, project=Project(name="rwestmusic-follies"))
        self.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="Piano", short_instrument_name="."))


# MISC TESTING STUFF...
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




BLANK_LINES = [
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