mylyrics = \lyricmode {
  yo la
}

\new Score <<
    \new Voice ="voice" {
        \set Staff.instrumentName = \markup { Voice }
        \set Staff.shortInstrumentName = None
		{
            a'1
            a'1
        }
    }
    \new Lyrics \lyricsto voice \mylyrics
    \new PianoStaff <<
        \set PianoStaff.instrumentName = \markup { Piano }
        \set PianoStaff.shortInstrumentName = None
        \new Staff {
            R1
            R1
        }
        \new Staff {
            \clef "bass"
            R1
            R1
        }
    >>
>>