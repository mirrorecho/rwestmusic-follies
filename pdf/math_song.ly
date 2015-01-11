suelyrics = \lyricmode {                                                               Zer-            o       one one                     two                     three                   five eight!                                                                  This nerd            I       don`t           a-      pre-            ci-     ate                  thir-           teen            twen-   ty-     one,                            thir-   ty four!                                                                                   Can an-     y-      one     be      such    a       bore!?                                                                                                 fif-    ty five                                                                            eight-  y nine!                                                                                   Be- sides,          it`s    not             for     you             I       pine        Oh  Tim! You're   smart                   but                     so                       mo- ron-                    ic                                              Please try                     to                      keep                    your thoughts                pla-                    ton-                    ic     Though his  love            is      as-             ymp-    to-             tic     And             his   } 

timlyrics = \lyricmode {           Though my  love            is      as-             ymp-    to-             tic     And             my pass-           ion     i-              di-     o-              tic Sue!                                                                                                                                             to  oth-                    ers                     you                     seem Mous-           e-              ian                                     to me                      your                    cur-                    va-  ture                    is                      Gaus-           si-             an          Though we  have            no      cor-            re-     la-             tion    And     our     dy- na-     mics    are     too             com-    plex Could-   n`t     there  be   Could-   n’t     there           be              some                    e- quat-                   ion May-                    be                      some-                    thing short                   of                      sex?          Still I`d  love            some    sa-             tis-    fac-            tion                    A whole           not     just            a       frac-          tion                Let's  ne-   gate this  dis-                    tance                   tween                   our ac-                     tion                                           Cuz             I suff-                   er                      such                    a pri-                    mal             a-      trac-                   tion                          So  let             us      be              bi-     no-             mi-     al              You make            me      feel            Ro-                     meoal                    Though my  love            is      as-             ymp-    to-             tic     And             my pass-           ion     i-              di-     o-              tic  } 

% 2015-01-11 02:29

\version "2.18.2"
\language "english"

#(set-global-staff-size 16)

\header {
	composer = \markup { Randall West }
	title = \markup { An Asymptotic Love Affair }
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
		\new Staff
       \new Voice ="suevoice" {
			\set Staff.instrumentName = \markup { Mezzo Soprano }
			\set Staff.shortInstrumentName = \markup { . }
			\tempo 4.=132
			\time 6/8
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				r2. -\fermata ^ \markup { (ridiculous long fermata) }
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				f'4 -\staccato
				f'8 -\staccato
				f'4. -\staccato
				f'4. -\staccato
				f'4. -\staccato
				f'4. -\staccato
				gs'4. -\staccato
				b'4. -\staccato
				r4.
				r4.
				a'4.
				a'4 -\accent
				a'8
				a'4
				b'8
				c''4
				b'8
				g'4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				f'4 -\staccato
				f'8 -\staccato
				r8
				f'8 -\staccato
				f'8 -\staccato
				f'4. -\staccato
				r8
				gs'8 -\staccato
				gs'8 -\staccato
				b'4. -\staccato
				r4.
				r4.
				r4
				a'8
				a'8
				a'8
				a'8
				a'8
				a'8
				b'8
				c''4.
				r4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				r4.
				r8
				f'8 -\staccato
				f'8 -\staccato
				f'4. -\staccato
				r4.
				r4.
				r8
				gs'8 -\staccato
				gs'8 -\staccato
				b'4. -\staccato
				r4.
				r4.
				a'4.
				a'4 -\accent
				a'8
				a'4
				b'8
				c''4
				b'8
				g'4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				r4.
				r4
				g'8
				g'2.
				R2.
				R2.
				r4.
				fs'4.
			}
			{
				fs'4.
				f'4.
				e'4.
				ds'4.
				d'?4.
				d'4.
				r4.
				f'4.
				f'4.
				e'4.
				ds'4.
				d'4.
				cs'4.
				c'4.
				b'4.
				b'4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				c'4
				c'8
			}
			{
				c'4
				c'8
				c'4
				d'8
				e'4
				d'8
				d'4
				d'8
				d'4
				d'8
				d'4
				e'8
				f'4
				e'8
				r4.
			}
		}
		\new Lyrics \lyricsto suevoice \suelyrics 
    \new Staff
       \new Voice ="timvoice" {
			\clef "bass"
			\set Staff.instrumentName = \markup { Baritone }
			\set Staff.shortInstrumentName = \markup { . }
			\time 6/8
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				c4
				c8
			}
			{
				c4
				c8
				c4
				d8
				e4
				d8
				d4
				d8
				d4
				d8
				d4
				e8
				f4
				e8
				r4.
				g2. -\fermata ^ \markup { (ridiculous long fermata) }
				R2.
				R2.
				r4.
				fs4.
			}
			{
				fs4.
				f4.
				e4.
				ds4.
				d'?4
				d'4
				d'4
				r4.
				f4.
				f4.
				e4.
				ds4.
				d4.
				cs4.
				c4.
				b4
				b4
				b4
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				c4
				c8
			}
			{
				c4
				c8
				c4
				d8
				e4
				d8
				d8
				d8
				d8
				d8
				d8
				d8
				d4
				e8
				f4.
				r4.
				{
					g8
					g8
					g8
					g4. ~
					g2.
				}
				R2.
				R2.
			}
			{
				fs8
				fs8
				fs4
				f4
				e4.
				ds4.
				d?4.
				d4.
				R2.
				f4.
				e4.
				ds4.
				d4.
				cs4.
				c4.
				b4.
				r4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				c4
				c8
			}
			{
				c4
				c8
				c4
				d8
				e4
				d8
				r4
				d8
				d4
				d8
				d4
				e8
				f4
				e8
				r4.
				{
					r4.
					g4
					g8
					g4.
					r4.
				}
				R2.
				r4.
				fs4.
			}
			{
				fs4.
				f4.
				e4.
				ds4.
				d?4.
				d4.
				r4.
				f4
				f8
				f4.
				e4.
				ds4.
				d4.
				cs4.
				c4
				c8
				b,4.
				b,4.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				r4
				c8
			}
			{
				c4
				c8
				c4
				d8
				e4
				d8
				d4
				d8
				d4
				d8
				d4
				e8 (
				f4 )
				e8
				r4.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				c4
				c8
			}
			{
				c4
				c8
				c4
				d8
				e4
				d8
				d4
				d8
				d4
				d8
				d4
				e8
				f4
				e8
				r4.
			}
		}
		
    \new Lyrics \lyricsto timvoice \timlyrics 
    \new PianoStaff <<
			%%% \time 6/8 %%%
			\set PianoStaff.instrumentName = \markup { Piano }
			\set PianoStaff.shortInstrumentName = \markup { . }
			\new Staff {
				{
					r4.
					{
						r4
						<e g c'>8 -\staccato
					}
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					r4.
					r4.
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					r4.
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						g4 -\accent -\staccato
						r8
						r4.
						{
							<e g c'>4 -\tenuto
							<e g c'>8 -\staccato
						}
					}
				}
				{
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					<e g c'>4 -\tenuto
					<e g d'>8 -\staccato
					<e g e'>4 -\tenuto
					<e g d'>8 -\staccato
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					<f a d'>4
					<f a e'>8
					<f a f'>4
					<f a e'>8
					r4.
					<g' b' d'' g''>2. -\fermata ^ \markup { (ridiculous long fermata) }
					{
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						cs'4 -\accent -\staccato
						r8
						<a cs' fs'>2.
					}
				}
				{
					a4.
					<gs d'>4.
					<a e'>8
					c'8
					<a ds'>8
					<c' ds'>8
					a8
					<c' a'>8
					<b d'>4
					<fs a c' d'>4
					d'4
					f?8
					b8
					d'8
					f'8
					f8
					d'8
					f'8
					f8
					d'8
					e'8
					as8
					<cs' as'>8
					ds'8
					b8
					gs'8
					f'8
					b8
					<b gs'>8
					cs'8
					a8
					fs'8
					c'8
					a8
					<ds' fs'>8
					<a b fs'>2.
				}
				{
					<a b fs'>4.
					<f f'>8 -\accent -\staccato
					r8
					r8
					<g f'>4 -\staccato
					<g f'>8 -\staccato
					<as f'>4. -\staccato
					<as' f''>4. -\staccato
					<f' f''>4. -\staccato
					<f' f''>4. -\staccato
					<gs' gs''>4. -\staccato
					<b' b''>4. -\staccato
					r4.
					<c'' a''>2.
					<d'' a''>4. ~
					<d'' a''>4
					b''8
					<e'' c'''>4
					b''8
					<f'' g''>8 -\accent -\staccato
					r8
					r8
				}
				{
					r4.
					{
						r4
						<e g c'>8 -\staccato
					}
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					r4.
					r4.
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					r4.
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						g4 -\accent -\staccato
						r8
						r4.
						{
							<e g c'>4 -\tenuto
							<e g c'>8 -\staccato
						}
					}
				}
				{
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					<e g c'>4 -\tenuto
					<e g d'>8 -\staccato
					<e g e'>4 -\tenuto
					<e g d'>8 -\staccato
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					<f a d'>4
					<f a e'>8
					<f a f'>4
					<f a e'>8
					r4.
					<g' b' d'' g''>2.
					{
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						cs'4 -\accent -\staccato
						r8
						<a cs' fs'>2.
					}
				}
				{
					a4.
					<gs d'>4.
					<a e'>8
					c'8
					<a ds'>8
					<c' ds'>8
					a8
					<c' a'>8
					<b d'>4
					<fs a c' d'>4
					d'4
					f?8
					b8
					d'8
					f'8
					f8
					d'8
					f'8
					f8
					d'8
					e'8
					as8
					<cs' as'>8
					ds'8
					b8
					gs'8
					f'8
					b8
					<b gs'>8
					cs'8
					a8
					fs'8
					c'8
					a8
					<ds' fs'>8
					<a b fs'>2.
				}
				{
					<a b fs'>4.
					<f f'>8 -\accent -\staccato
					r8
					r8
					<g f'>4 -\staccato
					<g f'>8 -\staccato
					<as f'>4. -\staccato
					r4.
					r8
					<a a'>8
					<a a'>8
					<a a'>4.
					r8
					<as' as''>8
					<as' as''>8
					<as' as''>4.
					r4.
					<c'' a''>2.
					<d'' a''>4. ~
					<d'' a''>4
					b''8
					<e'' c'''>4
					b''8
					<f'' g''>8 -\accent -\staccato
					r8
					r8
				}
				{
					r4.
					{
						r4
						<e g c'>8 -\staccato
					}
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					r4.
					r4.
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					r4.
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						g4 -\accent -\staccato
						r8
						r4.
						{
							<e g c'>4 -\tenuto
							<e g c'>8 -\staccato
						}
					}
				}
				{
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					<e g c'>4 -\tenuto
					<e g d'>8 -\staccato
					<e g e'>4 -\tenuto
					<e g d'>8 -\staccato
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					<f a d'>4
					<f a e'>8
					<f a f'>4
					<f a e'>8
					r4.
					<g' b' d'' g''>2.
					{
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						cs'4 -\accent -\staccato
						r8
						<a cs' fs'>2.
					}
				}
				{
					a4.
					<gs d'>4.
					<a e'>8
					c'8
					<a ds'>8
					<c' ds'>8
					a8
					<c' a'>8
					<b d'>4
					<fs a c' d'>4
					d'4
					f?8
					b8
					d'8
					f'8
					f8
					d'8
					f'8
					f8
					d'8
					e'8
					as8
					<cs' as'>8
					ds'8
					b8
					gs'8
					f'8
					b8
					<b gs'>8
					cs'8
					a8
					fs'8
					c'8
					a8
					<ds' fs'>8
					<a b fs'>2.
				}
				{
					R2.
					r4.
					r8
					<g'' g'''>8
					<g'' g'''>8
					<g'' g'''>4.
					r4.
					r4.
					r8
					<f''' f''''>8
					<f''' f''''>8
					<f''' f''''>4.
					r4.
					<c'' a''>2.
					<d'' a''>4. ~
					<d'' a''>4
					b''8
					<e'' c'''>4
					b''8
					<f'' g''>8 -\accent -\staccato
					r8
					r8
				}
				{
					r4.
					{
						r4
						<e g c'>8 -\staccato
					}
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					r4.
					r4.
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					r4.
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f4 -\tenuto
						e8 -\staccato
						g,4 -\accent -\staccato
						r8
						r4.
						r4
						<e, g, c>8
					}
				}
				{
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					<e g c'>4 -\tenuto
					<e g d'>8 -\staccato
					<e g e'>4 -\tenuto
					<e g d'>8 -\staccato
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					<f a d'>4
					<f a e'>8
					<f a f'>4
					<f a e'>8
					r4.
					<g' b' d'' g''>2.
					{
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						cs'4 -\accent -\staccato
						r8
						<a cs' fs'>2.
					}
				}
				{
					a4.
					<gs d'>4.
					<a e'>8
					c'8
					<a ds'>8
					<c' ds'>8
					a8
					<c' a'>8
					<b d'>4
					<fs a c' d'>4
					d'4
					f?8
					b8
					d'8
					f'8
					f8
					d'8
					f'8
					f8
					d'8
					e'8
					as8
					<cs' as'>8
					ds'8
					b8
					gs'8
					f'8
					b8
					<b gs'>8
					cs'8
					a8
					fs'8
					ds'8
					c'8
					a'8
					<d' b'>2.
				}
				{
					r4.
					{
						r4
						<e g c'>8 -\staccato
					}
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					r4.
					r4.
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					r4.
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
					}
					{
						f'4 -\tenuto
						e'8 -\staccato
						g4 -\accent -\staccato
						r8
						r4.
						{
							<e g c'>4 -\tenuto
							<e g c'>8 -\staccato
						}
					}
				}
				{
					{
						<e g c'>4 -\tenuto
						<e g c'>8 -\staccato
					}
					<e g c'>4 -\tenuto
					<e g d'>8 -\staccato
					<e g e'>4 -\tenuto
					<e g d'>8 -\staccato
					{
						r4
						<f a d'>8 -\staccato
					}
					{
						<f a d'>4 -\tenuto
						<f a d'>8 -\staccato
					}
					<f a d'>4
					<f a e'>8
					<f a f'>4
					<f a e'>8
					r4.
				}
			}
			\new Staff {
				\clef "bass"
				{
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4 -\staccato
						g,8 -\staccato
						b,4 -\accent -\staccato
						r8
						<c, c>4 -\accent -\staccato
						r8
						r4.
					}
				}
				{
					{
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2. -\fermata
					{
						d4 -\staccato
						f8 -\staccato
						gs4 -\staccato
						b8 -\staccato
					}
					{
						gs,4 -\staccato
						f,8 -\staccato
						gs,4 -\accent -\staccato
						r8
						<fs, cs>2.
					}
				}
				{
					fs,8
					cs8
					f!8
					<b, f>4.
					<c e>4.
					<fs, ds>4
					ds,8
					<d, g, d>4.
					<d, d>4.
					<g, d>2.
					<d, d>4
					e8
					<g, e>4.
					<gs, ds>4
					f8
					<f, d>4.
					<fs, cs>4
					ds8
					<c ds>4.
					<b, ds>2.
				}
				{
					<b, ds>2.
					<c, c>4. -\staccato
					<cs, cs>4. -\staccato
					<cs, cs>4. -\staccato
					<d, d>4. -\staccato
					<ds, ds>4. -\staccato
					<es, es>4. -\staccato
					<gs, gs>4. -\staccato
					r4.
					<a, a>2.
					<f, f>2.
					<g, g>4. (
					d8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4 -\staccato
						g,8 -\staccato
						b,4 -\accent -\staccato
						r8
						<c, c>4 -\accent -\staccato
						r8
						r4.
					}
				}
				{
					{
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2. -\fermata
					{
						d4 -\staccato
						f8 -\staccato
						gs4 -\staccato
						b8 -\staccato
					}
					{
						gs,4 -\staccato
						f,8 -\staccato
						gs,4 -\accent -\staccato
						r8
						<fs, cs>2.
					}
				}
				{
					fs,8
					cs8
					f!8
					<b, f>4.
					<c e>4.
					<fs, ds>4
					ds,8
					<d, g, d>4.
					<d, d>4.
					<g, d>2.
					<d, d>4
					e8
					<g, e>4.
					<gs, ds>4
					f8
					<f, d>4.
					<fs, cs>4
					ds8
					<c ds>4.
					<b, ds>2.
				}
				{
					<b, ds>2.
					<c, c>4. -\staccato
					<cs, cs>4. -\staccato
					<cs, cs>4
					<cs, cs>8
					r4.
					R2.
					<gs,, gs,>4. -\staccato
					r4.
					<a,, a,>2.
					<f,, f,>2.
					<g,, g,>4. (
					d,8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4 -\staccato
						g,8 -\staccato
						b,4 -\accent -\staccato
						r8
						<c, c>4 -\accent -\staccato
						r8
						r4.
					}
				}
				{
					{
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2. -\fermata
					{
						d4 -\staccato
						f8 -\staccato
						gs4 -\staccato
						b8 -\staccato
					}
					{
						gs,4 -\staccato
						f,8 -\staccato
						gs,4 -\accent -\staccato
						r8
						<fs, cs>2.
					}
				}
				{
					fs,8
					cs8
					f!8
					<b, f>4.
					<c e>4.
					<fs, ds>4
					ds,8
					<d, g, d>4.
					<d, d>4.
					<g, d>2.
					<d, d>4
					e8
					<g, e>4.
					<gs, ds>4
					f8
					<f, d>4.
					<fs, cs>4
					ds8
					<c ds>4.
					<b, ds>2.
				}
				{
					<b, ds>2.
					<c, c>4. -\staccato
					<cs, cs>4. -\staccato
					<cs, cs>4. -\staccato
					<d, d>4. -\staccato
					<ds, ds>4. -\staccato
					<es, es>4. -\staccato
					<gs, gs>4. -\staccato
					r4.
					<a, a>2.
					<f, f>2.
					<g, g>4. (
					d8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,,4 -\staccato
						g,,8 -\staccato
						b,,4 -\accent -\staccato
						r8
						<c,, c,>4 -\accent -\staccato
						r8
						r4.
					}
				}
				{
					{
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2. -\fermata
					{
						d4 -\staccato
						f8 -\staccato
						gs4 -\staccato
						b8 -\staccato
					}
					{
						gs,4 -\staccato
						f,8 -\staccato
						gs,4 -\accent -\staccato
						r8
						<fs, cs>2.
					}
				}
				{
					fs,8
					cs8
					f!8
					<b, f>4.
					<c e>4.
					<fs, ds>4
					ds,8
					<d, g, d>4.
					<d, d>4.
					<g, d>2.
					<d, d>4
					e8
					<g, e>4.
					<gs, ds>4
					f8
					<f, d>4.
					<fs, cs>4
					ds8
					a,,4
					fs,8
					<b,, f,>2.
				}
				{
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<c, c>4. (
						g,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4 -\staccato
						g,8 -\staccato
						b,4 -\accent -\staccato
						r8
						<c, c>4 -\accent -\staccato
						r8
						r4.
					}
				}
				{
					{
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
						{
							<c, c>4. (
							g,4 -\staccato )
							r8
						}
					}
					{
						<d, d>4. (
						a,4 -\staccato )
						r8
					}
					<d, d>4. -\tenuto
					r4.
				}
			}
		>>
	>>
}