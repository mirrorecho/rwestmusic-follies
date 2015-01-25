from abjad import * 

import sys
sys.path.append("/Users/randallwest/Code/mirrorecho")

from tools import rel

from calliope.work import Bubble

music = Bubble()
music.add_piano_staff_part(name='piano', instrument=instrumenttools.Piano(instrument_name="", short_instrument_name="."))

sequence = ["C4","Eb4","F","Gb4","F"]
sequence_octaves = [["C4","C5"],["Eb4","Eb5"],["F4","F5"],["Gb4","Gb5"],["F4","F5"]]

lower_bounce = rel("c,", "<c c'>4( g'4-.) ")

music.parts["piano"][0].append("R1")
music.parts["piano"][1].append(lower_bounce * 4)

show(music)