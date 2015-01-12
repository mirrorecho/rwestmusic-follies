lovelyrics = \lyricmode {                                                  I               once                  lived like   a     mouse                   a-               lone  in    my    house                 when            fate                    in-  ter-               up-    ted    my    life                    fate                          swept me  a-     way                                             and               sud- den- ly one  day                  I               found                   my- self                    in                    charge   of   a  play                                                    it      be- came            my              miss -ion               to               save  a   tra-    di- tion I               must            strive         to      keep    the                    foll- ies    a- live                                            and  help            them            thrive                                      Now             --               all  of    these  throngs                 need- ed               all  of    these  songs                 and                           won- der- ful            speech-  es   to     speak                                                   writt- en by     me!                                                            ounce so meek!                                          I               once                  lived like   a     mouse                   a-               lone  in    my    house         and     ne-     ver     thought I'd     be              an- y- one's       wife                                                      I       don't               know which to     choose                                                 I       don't               know which to     lose                 Which should I    choose                  and               which  should I   lose                 Tell             me                     which one     should  be      my                    lead- ing man       } 

% 2015-01-12 02:31

\version "2.18.2"
\language "english"

#(set-global-staff-size 16)

\header {
	composer = \markup { Randall West }
	title = \markup { An Undecided Love Song }
}

\layout {
	\context {
		\Staff \RemoveEmptyStaves
		\override VerticalAxisGroup #'remove-first = ##t
	}
}

\paper {
	system-system-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 12) (stretchability . 0))
}

\score {
	\new Score \with {
		markFormatter = #format-mark-box-numbers
	} <<
		\new Staff
       \new Voice ="voice" {  \dynamicUp
			\set Staff.instrumentName = \markup { Voice }
			\set Staff.shortInstrumentName = \markup { . }
			\tempo 4=100
			{
				r1 -\fermata
					^ \markup {
						\column
							{
								..........................
								"But Tim,"
								"I've been so"
								"mean to you!"
							}
						}
				R1
				R1 ^ \markup { I love you... }
				R1
				R1
				R1
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
				g'2
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
				r2
				\times 2/3 {
					bf'4
					a'4
					f'4
				}
				f''2.
				r4
				\times 2/3 {
					g'4
					g'4
					g'4
				}
				r2
				r1
					^ \markup {
						\column
							{
								"(spoken) and then, and then, would you believe...?!"
								"Along came a chance for romance, along came a Frenchman..."
								"a REAL Frenchman from France!"
							}
						}
				R1
				R1
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
				r1
					^ \markup {
						\column
							{
								"(spoken excitedly) And then the other"
								"Frog turned into a prince..."
								"and ever since, though I've had hints..."
							}
						}
				R1
				R1
				R1
				r2
				r4
				g'8
				a'8
				\times 2/3 {
					c''4
					b'4
					g'4
				}
				d''2
				r2
				r4
				g'8
				a'8
				\times 2/3 {
					c''4
					b'4
					g'4
				}
				g'2
			}
			{
				r1 -\fermata
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
				f'4
				c'4
				r8
				c'8
				g'8
				g'8
				g'8
				g'8
				\times 2/3 {
					g'4
					g'4
					g'4
				}
				R1
				R1
				R1
				R1
				R1
			}
		}
		\new Lyrics \lyricsto voice \lovelyrics 
    \new PianoStaff <<
			\set PianoStaff.instrumentName = \markup { Piano }
			\set PianoStaff.shortInstrumentName = \markup { . }
			\new Staff {
				{
					r1 ^\fermata ^ \markup { freely, tenderly }
					<bf' a''>1 -\fermata \p
					<c' d' f'>1 -\fermata ~
					<c' d' f'>4
					f''4 (
					e''4
					g''4
					\times 2/3 {
						a''4
						bf''4
						f''4
					}
					<c'' d'' f''>2 -\fermata )
					<c' d' f'>1 -\fermata
					\times 2/3 {
						bf4 (
						a'4
						f'4 )
					}
					<c' d' f'>2 -\fermata ~
					<c' d' f'>2.
					c'4 ~
					c'2 \<
					\times 2/3 {
						c'4 (
						bf'4
						a'4 ~
					}
					a'8
					<f' g'>4
					<e' g'>8 ~
					<e' g'>4 )
					<c' c''>4 ~
					<c' c''>8
					<g' c'' g''>4. \mf
					<c'' f'' a''>4.
					a''8
					\times 2/3 {
						<c'' g'' a''>4
						<c'' g'' a''>4
						<c'' g'' a''>4
					}
					<d'' c'''>4.
					c'''8
					\times 2/3 {
						<e'' g'' c'''>4 \f
						<d'' g'' b''>4
						<d'' g''>4 ~
					}
					<d'' g''>4
					<g'' d'''>4 -\accent ~
					<g'' d'''>1 -\fermata
				}
				{
					c''2 \p ~
					c''4.
					f''8 (
					e''4
					g''4 )
					<b' g''>2
					f'4 (
					e''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4 ~
					}
					g'2 )
					f'4 (
					c''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4
					}
					<b' g''>4. )
					f'8 (
					\times 2/3 {
						e'2
						g'4
					}
					<b' g''>2 )
					<c' d' f'>2
					<c' g'>4
					c'4
					\times 2/3 {
						<d' g'>4
						g'4
						<d' g'>4
					}
					<g g'>2
				}
				{
					<g g'>2
					<g g'>2
					<g g'>4
					<c' g'>4
					\times 2/3 {
						<c' f' bf'>4 (
						<c' f' a'>4
						<c' f'>4
					}
					\times 2/3 {
						<c' d' f'>4
						<c' d' bf'>4
						<c' d' a'>4
					}
					<c' d' f'>4 )
					<c' g'>4
					\times 2/3 {
						<c' f' bf'>8 (
						<c' f' a'>8
						<c' f' a'>4
						<c' f'>4
					}
					\times 2/3 {
						<c' d' a'>4
						<c' d' bf'>4
						<c' d' f'>4
					}
					<c' d' f'>4 )
					<c' f'>4
					<c' g'>4.
					f'8
					<bf d' f'>4.
					a'8
					\times 2/3 {
						<bf a'>4
						g'4
						f'4
					}
					<c' d' f'>2
					f'2
					c'2
					e'4 (
					f'8
					e'8 )
				}
				{
					{
						f'4 (
						e''4
						\times 2/3 {
							f'4
							<c'' e''>4
							g'4 ~
						}
					}
					g'2. )
					f'8
					e''8
					f'8
					<c'' e''>8
					<g' g''>4
					<g' g''>4.
					f'8 (
					\times 2/3 {
						e'2
						g'4
					}
					<b' g''>2 )
					<a c' f'>4
					<g c' e'>4
					<e' c''>2
					{
						<g g'>4
						<c' g'>4
						\times 2/3 {
							<c' f' bf'>4 (
							<c' f' a'>4
							<c' f'>4
						}
					}
					{
						\times 2/3 {
							<c' d' f'>4
							<c' d' bf'>4
							<c' d' a'>4
						}
						<c' d' f'>4 )
						<c' g'>4
					}
					<c' d' g'>2
					<d' f' g'>2
				}
				{
					c''2 \p ~
					c''4.
					f''8 (
					e''4
					g''4 )
					<b' g''>2
					f'4 (
					e''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4 ~
					}
					g'2 )
					f'4 (
					c''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4
					}
					<b' g''>4. )
					f'8 (
					\times 2/3 {
						e'2
						g'4
					}
					<b' g''>2 )
					R1
					\times 2/3 {
						<d'' g''>4
						g''4
						<d'' g''>4
					}
					<g' g''>2
				}
				{
					<g g'>2
					<g g'>2
					<g g'>4
					<c' g'>4
					\times 2/3 {
						<c' f' bf'>4 (
						<c' f' a'>4
						<c' f'>4
					}
					\times 2/3 {
						<c' d' f'>4
						<c' d' bf'>4
						<c' d' a'>4
					}
					<c' d' f'>4 )
					<c' g'>4
					\times 2/3 {
						<c' f' bf'>8 (
						<c' f' a'>8
						<c' f' a'>4
						<c' f'>4
					}
					\times 2/3 {
						<c' d' a'>4
						<c' d' bf'>4
						<c' d' f'>4
					}
					<c' d' f'>4 )
					<c' f'>4
					<c' g'>4.
					f'8
					<bf d' f'>4.
					a'8
					\times 2/3 {
						<bf a'>4
						g'4
						f'4
					}
					<c' d' f'>2
					f'2
					c'2
					e'4 (
					f'8
					e'8 )
				}
				{
					c''2 \p ~
					c''4.
					f''8 (
					e''4
					g''4 )
					<b' g''>2
					f'4 (
					e''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4 ~
					}
					g'2 )
					f'4 (
					c''4
					\times 2/3 {
						f'4
						<c'' e''>4
						g'4
					}
					<b' g''>4. )
					f'8 (
					\times 2/3 {
						e'2
						g'4
					}
					<b' g''>2 )
					<c' d' f'>2
					<c' g'>4
					c'4
					\times 2/3 {
						<d' g'>4
						g'4
						<d' g'>4
					}
					<g g'>2
				}
				{
					<c' d' f'>2.
					c'4 ~
					c'2 \<
					\times 2/3 {
						c'4 (
						bf'4
						a'4 ~
					}
					a'8
					<f' g'>4
					<e' g'>8 ~
					<e' g'>4 )
					<c' c''>4 ~
					<c' c''>8
					<g' c'' g''>4. \mf
					<c'' f'' a''>4.
					a''8
					\times 2/3 {
						<c'' g'' a''>4
						<c'' g'' a''>4
						<c'' g'' a''>4
					}
					<d'' c'''>4.
					c'''8
					\times 2/3 {
						<e'' g'' c'''>4
						<d'' g'' b''>4
						<d'' g''>4
					}
					<g'' d'''>2 -\accent
					\times 2/3 {
						<c'' g'' a''>4
						<c'' g'' a''>4
						<c'' g'' a''>4
					}
					<d'' c'''>4.
					c'''8
					\times 2/3 {
						<e'' g'' c'''>4
						<d'' g'' b''>4
						<d'' g''>4 ~
					}
					<d'' g''>2
				}
				{
					c''1 -\fermata
					\times 2/3 {
						f'4 (
						<c'' e''>4
						g'4
					}
					<b' g''>4. )
					f'8 (
					\times 2/3 {
						e'2
						g'4
					}
					<b' g''>2 )
					<c' d' f'>2
					<c' g'>4
					c'4
					<g g'>1
					<bf a'>1 \>
					<c' d' f'>1
					<bf a'>1
					<c' d' f'>1
					<f'' c'''>1 \pp
				}
			}
			\new Staff {
				\clef "bass"
				{
					r1 -\fermata
					<f c' f'>1 -\fermata
					<bf, f>1 -\fermata ~
					<bf, f>2
					\clef "treble"
					<c' a'>2 (
					<f' c''>2
					<bf f'>2 -\fermata )
					\clef "bass"
					<bf, f>1 -\fermata
					<f, f>2 _ (
					<bf, f>2 -\fermata )
					f,8 (
					bf,8
					c8
					f8
					bf,8
					c8 )
					f,8 (
					bf,8
					c8
					f8
					bf,8
					c8 )
					bf,8 (
					ef8
					f8
					bf8 )
					c8 (
					f8
					g8
					c'8
					f8
					g8 )
					a,8 (
					e8
					a8
					a,8
					e8
					a8 )
					g,8 (
					c8
					f8
					c8 )
					g,8 (
					c8
					f8 -\accent
					g,8 )
					c8 (
					g8 -\accent
					g,8
					d8 )
					g8 -\accent (
					g,8
					d8
					a8 -\accent
					g,8
					d8
					b4 -\accent ~ )
					b1 -\fermata
				}
				{
					<a e'>1
					<c' a'>2
					<e' g'>2
					d'2
					a2 ~
					a2
					d'4 (
					<a e'>4 ~
					<a e'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g2 )
					g4
					c4
					<a, c g>4
					bf,4
					<g, f>4
					c4
					e,2
				}
				{
					e,8 (
					<c f>4. )
					e,2
					e,4
					<f,, f,>4 -\accent (
					f,8
					bf,8
					c8
					f8
					bf,8
					c8 )
					f,8 (
					bf,8
					c8
					f8
					e,8
					c8 )
					f,8 (
					bf,8
					c8
					f8
					bf,8
					c8 )
					f,8 (
					bf,8
					c8
					f8 )
					<a, f>4
					<bf, c f>2
					<bf, d f>2
					<f, f>2
					<bf, f>2
					<d, d>2
					a,2
					g2
				}
				{
					{
						d2
						a,2 ~
					}
					a,2
					d4 (
					<a, c>4 ~
					<a, c>4
					<g, e>4 ~
					<g, e>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g2 )
					<c, c>2
					<a,, a,>2
					{
						e,4
						<f,, f,>4 -\accent (
						f,8
						bf,8
						c8
						f8
					}
					{
						bf,8
						c8 )
						f,8 (
						bf,8
						c8
						f8
						e,8
						c8 )
					}
					f4 (
					g2. )
				}
				{
					<a e'>1
					<c' a'>2
					<e' g'>2
					d'2
					a2 ~
					a2
					d'4 (
					<a e'>4 ~
					<a e'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g2 )
					g4
					c4
					<a, c g>4
					bf,4
					<g, f>4
					c4
					e,2
				}
				{
					e,8 (
					<c f>4. )
					e,2
					e,4
					<f,, f,>4 -\accent (
					f,8
					bf,8
					c8
					f8
					bf,8
					c8 )
					f,8 (
					bf,8
					c8
					f8
					e,8
					c8 )
					f,8 (
					bf,8
					c8
					f8
					bf,8
					c8 )
					f,8 (
					bf,8
					c8
					f8 )
					<a, f>4
					<bf, c f>2
					<bf, d f>2
					<f, f>2
					<bf, f>2
					<d, d>2
					a,2
					g2
				}
				{
					<a e'>1
					<c' a'>2
					<e' g'>2
					d'2
					a2 ~
					a2
					d'4 (
					<a e'>4 ~
					<a e'>4
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g2 )
					g4
					c4
					<a, c g>4
					bf,4
					<g, f>4
					c4
					e,2
				}
				{
					{
						f,8 (
						bf,8
						c8
						f8
						bf,8
						c8 )
						f,8 (
						bf,8
					}
					c8
					f8
					bf,8
					c8 )
					bf,8 (
					ef8
					f8
					bf8 )
					c8 (
					f8
					g8
					c'8
					f8
					g8 )
					a,8 (
					e8
					a8
					a,8
					e8
					a8 )
					g,8 (
					c8
					f8
					c8 )
					g,8 (
					c8
					f8 -\accent
					g,8 )
					c8 (
					g8 -\accent
					g,8
					d8 )
					g,8 -\accent (
					g,,8
					d,8
					a,8 -\accent
					g,,8
					d,8
					b,4 -\accent )
					g,8 (
					c8
					f8 -\accent
					g,8 )
					c8 (
					g8 -\accent
					g,8
					d8 )
					g8 (
					g,8
					d8
					a8
					g,8
					d8
					b4 -\accent )
				}
				{
					<a e'>1 -\fermata
					<a c'>4 (
					<g e'>4 ~
					<g e'>2 )
					\times 2/3 {
						<c a>4 (
						g2 ~
					}
					g2 )
					g4
					c4
					<a, c g>4
					bf,4
					e,1
					<f, c f>1
					<bf, f>1
					<f, c f>1 ~
					<f, c f>1 ~
					<f, c f>1
				}
				\bar "|."
			}
		>>
	>>
}