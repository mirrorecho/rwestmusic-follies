lovelyrics = \lyricmode {                                   I               once                  lived like   a     mouse                   a-               lone  in    my    house                 when            fate                    in-  ter-               up-    ted    my    life                    fate                          swept me  a-     way                                             and               sud- den- ly one  day                  I               found                   my- self                    in                    charge   of   a  play                                                    it      be- came            my              miss -ion               to               save  a   tra-    di- tion I               must            strive         to      keep    the                    foll- ies    a- live                                            and  help            them            thrive                                      Now             --               all  of    these  throngs                 need- ed               all  of    these  songs                 and                           won- der- ful            speech-  es   to     speak                   fate                          swept me  a-     way                                             and               sud- den- ly one  day                  I               found                   my- self                    in                    charge   of   a  play                                      I               once                  lived like   a     mouse                   a-               lone  in    my    house         and     ne-     ver     thought I`d     be              an- y- one`s       wife                    } 

% 2015-01-08 15:00

\version "2.18.2"
\language "english"

#(set-global-staff-size 16)

\header {
	composer = \markup { Randall West }
	title = \markup { An Undecided... }
}

\layout {
	\context {
		\override VerticalAxisGroup #'remove-first = ##t
	}
}

\paper {
	system-system-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 12) (stretchability . 0))
}

\score {
	\new Score \with {
		\override StaffGrouper #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 6) (stretchability . 0))
		\override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 6) (stretchability . 0))
		markFormatter = #format-mark-box-numbers
	} <<
		\new Staff {
       \new Voice ="voice" {
			\set Staff.instrumentName = \markup { Voice }
			\set Staff.shortInstrumentName = \markup { . }
			{
				R1
				R1
				R1
				r2
				f'4 \p
				e'4
				\times 2/3 {
					f'4
					e'4
					g'4
				}
				g'4
				r8
				f'8
				\times 2/3 {
					e'4
					g'4
					g'4
				}
				g'4
				r4
				r4
				f'4 ^ \<
				c'4
				r8
				c'16
				c'16
				\times 2/3 {
					g'4
					g'4
					g'4
				}
				g'4 \mf
				r4
			}
			{
				R1
				r4
				g'4 \mf
				\times 2/3 {
					bf'4
					a'4
					f'4
				}
				f'2
				r4
				g'4
				\times 2/3 {
					bf'8
					a'8
					a'4
					f'4
				}
				f'2
				r4
				f'4
				g'4.
				f'8
				f'4
				r8
				a'8
				\times 2/3 {
					a'4
					g'4
					f'4
				}
				f'2.
				r4
				R1
			}
			{
				R1
				r2
				r4
				f'8 \p
				e'8
				f'4
				g'4
				g'16
				g'8.
				r8
				f'8
				\times 2/3 {
					e'4
					g'4
					g'4
				}
				g'16
				g'8.
				r4
				f'4 \<
				e'4
				c''2 \f
				r8
				g'8
				g'8 [
				g'8 ]
				\times 2/3 {
					bf'4
					a'4
					f'4
				}
				f'2
				r4
				g'4
				g'4
				g'4
				a'2
			}
			{
				R1
				R1
				R1
				r2
				f'4 \p (
				e'4 )
				\times 2/3 {
					f'4
					e'4
					g'4
				}
				g'4
				r8
				f'16
				e'16
				\times 2/3 {
					e'4
					g'4
					g'4
				}
				g'4
				r4
				r4
				f'4 ^ \<
				\times 2/3 {
					c'4
					c'4
					c'4
				}
				\times 2/3 {
					g'4
					g'4
					g'4
				}
				g'4 \mf
				r4
			}
			{
				R1
				r4
				g'4 \mf
				\times 2/3 {
					bf'4
					a'4
					f'4
				}
				f'2
				r4
				g'4
				\times 2/3 {
					bf'8
					a'8
					a'4
					f'4
				}
				f'2
				r4
				f'4
				g'4.
				f'8
				f'4
				r8
				a'8
				\times 2/3 {
					a'4
					g'4
					f'4
				}
				f'2.
				r4
				R1
			}
			{
				R1
				R1
				R1
				r2
				f'4 \p
				e'4
				\times 2/3 {
					f'4
					e'4
					g'4
				}
				g'4
				r8
				f'8
				\times 2/3 {
					e'4
					g'4
					g'4
				}
				g'4
				r4
				r8
				f'8 ^ \<
				f'8
				f'8
				c'8
				c'8
				c'4
				\times 2/3 {
					g'4
					g'4
					g'4
				}
				g'4 \mf
				r4
			}
			{
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
			{
				R1
				R1
				R1
				R1
				R1
				R1
				R1
				R1
			}
		}
		}
    \new Lyrics \lyricsto voice \lovelyrics 
    \new PianoStaff <<
			\set PianoStaff.instrumentName = \markup { Piano }
			\set PianoStaff.shortInstrumentName = \markup { . }
			\new Staff {
				{
					\times 2/3 {
						d'4
						<a' c''>4
						e'4
					}
					<g' e''>4.
					c''8
					\times 2/3 {
						d''4
						<a'' c'''>4
						e''4
					}
					<g'' e'''>2
					f'8 [ (
					d''8 ]
					e''8 [
					c''8 ] )
					f''4 (
					e''4
					c'''2 )
					f''8 [ (
					d'''8 ]
					e'''8 [
					c'''8 ]
					\times 2/3 {
						f''4
						<c''' e'''>4
						g''4
					}
					<b'' g'''>4. )
					f''8 (
					\times 2/3 {
						e''2
						g''4
					}
					<b'' g'''>2 )
					<c'' d'' f''>2
					c''8.
					e''16
					c''8
					c''16
					c''16
					R1
				}
				{
					R1
					r2
					\times 2/3 {
						<c' f' bf'>4
						<c' f' a'>4
						<c' f'>4
					}
					<c' d' f'>1
					\times 2/3 {
						<c' f' bf'>8
						<c' f' a'>8
						<c' f' a'>4
						<c' f'>4
					}
					<c' d' f'>2
					R1
					r2
					\times 2/3 {
						<c' f' a'>4
						g4
						<c' f'>4
					}
					<c' d' f'>1
					R1
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
				{
					\times 2/3 {
						d'4
						<a' c''>4
						e'4
					}
					<g' e''>4.
					c''8
					\times 2/3 {
						d''4
						<a'' c'''>4
						e''4
					}
					<g'' e'''>2
					f'8 [ (
					d''8 ]
					e''8 [
					c''8 ] )
					f''4 (
					e''4
					c'''2 )
					f''8 [ (
					d'''8 ]
					e'''8 [
					c'''8 ]
					\times 2/3 {
						f''4
						<c''' e'''>4
						g''4
					}
					<b'' g'''>4. )
					f''8 (
					\times 2/3 {
						e''2
						g''4
					}
					<b'' g'''>2 )
					R1
					R1
				}
				{
					R1
					r2
					\times 2/3 {
						<c' f' bf'>4
						<c' f' a'>4
						<c' f'>4
					}
					<c' d' f'>1
					R1
					R1
					R1
					R1
					R1
				}
				{
					\times 2/3 {
						d'4
						<a' c''>4
						e'4
					}
					<g' e''>4.
					c''8
					\times 2/3 {
						d''4
						<a'' c'''>4
						e''4
					}
					<g'' e'''>2
					f'8 [ (
					d''8 ]
					e''8 [
					c''8 ] )
					f''4 (
					e''4
					c'''2 )
					f''8 [ (
					d'''8 ]
					e'''8 [
					c'''8 ]
					\times 2/3 {
						f''4
						<c''' e'''>4
						g''4
					}
					<b'' g'''>4. )
					f''8 (
					\times 2/3 {
						e''2
						g''4
					}
					<b'' g'''>2 )
					R1
					R1
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
			}
			\new Staff {
				\clef "bass"
				{
					a,1
					f4
					g4
					a2
					d'4
					c'4
					a2
					a2
					d'4 (
					<a c'>4 ~
					<a c'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g4.. )
					c16
					c4
					c4
					a,4
					bf,4
					c2
					e,2
				}
				{
					e,1
					e,4
					f,2.
					R1
					R1
					r4
					a,4
					bf,2
					bf,2
					<a, f>2
					d1
					R1
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
				{
					a,1
					f4
					g4
					a2
					d'4
					c'4
					a2
					a2
					d'4 (
					<a c'>4 ~
					<a c'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g4.. )
					c16
					c4
					c4
					a,4
					bf,4
					c2
					e,2
				}
				{
					e,1
					e,4
					f,2.
					R1
					R1
					R1
					R1
					R1
					R1
				}
				{
					a,1
					f4
					g4
					a2
					d'4
					c'4
					a2
					a2
					d'4 (
					<a c'>4 ~
					<a c'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g4.. )
					c16
					c4
					c4
					a,4
					bf,4
					c2
					e,2
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
				{
					R1
					R1
					R1
					R1
					R1
					R1
					R1
					R1
				}
			}
		>>
	>>
}