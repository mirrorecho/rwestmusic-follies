suelyrics = \lyricmode {                                                               Zer-            o       one one                     two                     three                   five eight!                                                                  This nerd            I       don't           a-      pre-            ci-     ate                  thir-           teen            twen-   ty-     one,                            thir-   ty four!                                                                                   Can an-     y-      one     be      such    a       bore!?                                                                                                 fif-    ty five                                                                            eight-  y nine!                                                                                   Be- sides,          it's    not             for     you             I       pine        Oh  Tim! You're   smart                   but                     so                       mo- ron-                    ic                                              Please try                     to                      keep                    your thoughts                pla-                    ton-                    ic     His  love            is      as-             ymp-    to-             tic                   his pass- ion i- di- o- tic   } 

timlyrics = \lyricmode {           Though my  love            is      as-             ymp-    to-             tic     And             my pass-           ion     i-              di-     o-              tic Sue!                                                                                                                                             to  oth-                    ers                     you                     seem Mous-           e-              ian                                     to me                      your                    cur-                    va-  ture                    is                      Gaus-           si-             an          Though we  have            no      cor-            re-     la-             tion    And     our     dy- na-     mics    are     too             com-    plex Could-   n't     there  be   Could-   n’t     there           be              some                    e- quat-                   ion May-                    be                      some-                    thing short                   of                      sex?          Still I'd  love            some    sa-             tis-    fac-            tion                    A whole           not     just            a       frac-          tion                Let's  ne-   gate this  dis-                    tance                   tween                   our ac-                     tion                                           Cuz             I suff-                   er                      such                    a pri-                    mal             a-      trac-                   tion                          So  let             us      be              bi-     no-             mi-     al              You make            me      feel            Ro-                     meoal            My  love            is      as-             ymp-    to-             tic                   my pass- ion i- di- o- tic   } 

% 2015-01-22 15:39

\version "2.18.2"
\language "english"

#(set-global-staff-size 16)

\header {
	composer = \markup { Randall West }
	title = \markup { An Asymptotic Love Affair }
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
       \new Voice ="suevoice" { \dynamicUp 
			\set Staff.instrumentName = \markup { Sue }
			\set Staff.shortInstrumentName = \markup { S. }
			\tempo 4.=120
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
				r4. -\fermata
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
				gs'4. -\staccato
				r4.
				r4. -\fermata
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
				r4. -\fermata
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
				r4
				c'8
			}
			{
				c'4
				c'8
				c'4
				d'8
				e'4
				d'8
				r4
				e'8
				e'4.
				e'4.
				R2.
				R2.
				c'4 -\fermata
				c'4 -\fermata
				c'4 -\fermata
				c'4. -\fermata
				r4.
				R2.
				R2.
				R2.
				R2.
			}
		}
		\new Lyrics \lyricsto suevoice \suelyrics 
    \new Staff
       \new Voice ="timvoice" {  \dynamicUp
			\clef "bass"
			\set Staff.instrumentName = \markup { Tim }
			\set Staff.shortInstrumentName = \markup { T. }
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
				r4. -\fermata
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
				r2. -\fermata
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
				d8 \fff \>
				d8
				d8 \p
				d8 \fff \>
				d8
				d8 \p
				d4 \ff
				e8 \ppp
				f4. \sfz
				r4.
				{
					g8
					g8
					g8
					g4. ~
					g4.
					r4.
				}
				R2.
				r2. -\fermata
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
				r2. -\fermata
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
				r4. -\fermata
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
				r2. -\fermata
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
				r4
				e8
				e4.
				e4.
				R2.
				R2.
				c4 -\fermata
				c4 -\fermata
				c4 -\fermata
				c4. -\fermata
				r4.
				R2.
				R2.
				R2.
				R2.
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
						g4. -\accent -\staccato
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
						f'4. -\accent -\staccato
						f'4. -\accent -\staccato
						<as' cs'' fs''>2. -\fermata
					}
				}
				{
					as4.
					<gs d'>4.
					<a cs' e'>4 (
					ds'8 )
					<a c' ds'>4.
					<fs a c' d'>2.
					f?4 (
					b8 )
					<b f'>4.
					{
						<b f'>4.
						<as cs' e'>4.
						<bs ds' gs'>4.
						<b f' gs'>4.
					}
					{
						<as cs' fs'>4.
						<a c' fs'>4.
						<a b fs'>2.
					}
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
					<c'' a''>2. -\fermata
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
						g4. -\accent -\staccato
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
						f'4. -\accent -\staccato
						f'4. -\accent -\staccato
						<as' cs'' fs''>2. -\fermata
					}
				}
				{
					as4.
					<gs d'>4.
					<a cs' e'>4 (
					ds'8 )
					<a c' ds'>4.
					<fs a c' d'>2.
					f?4 (
					b8 )
					<b f'>4.
					{
						<b f'>4.
						<as cs' e'>4.
						<bs ds' gs'>4.
						<b f' gs'>4.
					}
					{
						<as cs' fs'>4.
						<a c' fs'>4.
						<a b fs'>2.
					}
				}
				{
					<a b fs'>4.
					<f f'>8 -\accent -\staccato
					r8
					r8
					<g f'>4 -\staccato
					<g f'>8 -\staccato
					<as f'>4. -\staccato
					<f f'>4 -\staccato
					<f f'>8 -\staccato
					r8
					<a a'>8 -\staccato
					<a a'>8 -\staccato
					<a a'>4. -\staccato
					r8
					<as' as''>8 -\staccato
					<as' as''>8 -\staccato
					<as' as''>4. -\staccato
					r4.
					<c'' a''>2. -\fermata
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
						g4. -\accent -\staccato
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
						f'4. -\accent -\staccato
						f'4. -\accent -\staccato
						<as' cs'' fs''>2. -\fermata
					}
				}
				{
					as4.
					<gs d'>4.
					<a cs' e'>4 (
					ds'8 )
					<a c' ds'>4.
					<fs a c' d'>2.
					f?4 (
					b8 )
					<b f'>4.
					{
						<b f'>4.
						<as cs' e'>4.
						<bs ds' gs'>4.
						<b f' gs'>4.
					}
					{
						<as cs' fs'>4.
						<a c' fs'>4.
						<a b fs'>2.
					}
				}
				{
					<a b fs'>4.
					<f f'>8 -\accent -\staccato
					r8
					r8
					<f' f''>4. -\staccato
					r8
					<f' f''>8 -\staccato
					<f' f''>8 -\staccato
					<g' g''>4. -\staccato
					r4.
					<gs' gs''>4. -\staccato
					r8
					<f' f''>8 -\staccato
					<f' f''>8 -\staccato
					<f' f''>4.
					r4.
					<c' a'>2. -\fermata
					<d' a'>4. ~
					<d' a'>4
					b'8
					<e' c''>4
					b'8
					<f' g'>8 -\accent -\staccato
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
						g4. -\accent -\staccato
						r4.
						r4
						<e g c'>8
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
						f'4. -\accent -\staccato
						f'4. -\accent -\staccato
						<as' cs'' fs''>2. -\fermata
					}
				}
				{
					as4.
					<gs d'>4.
					<a cs' e'>4 (
					ds'8 )
					<a c' ds'>4.
					<fs a c' d'>2.
					f?4 (
					b8 )
					<b f'>4.
					{
						<b f'>4.
						<as cs' e'>4.
						<bs ds' gs'>4.
						<b f' gs'>4.
					}
					{
						<as cs' fs'>4.
						<a c' fs'>4.
						<a b fs'>2.
					}
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
						g4. -\accent -\staccato
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
					r4
					<g c' e'>8 -\staccato
					<g c' e'>2. ~
					<g c' e'>4.
					<g b d'>4. -\accent -\staccato
					<e g c'>4. -\accent -\staccato
					r4.
					r2. -\fermata
					r2. -\fermata
					{
						c'2.
						b4 -\tenuto
						b8 -\staccato
						d'4 -\tenuto
						e'8 -\staccato
						f'4 -\tenuto
						e'8 -\staccato
						g4. -\accent -\staccato
						c'4 -\accent -\staccato
						r8
						r4.
					}
				}
			}
			\new Staff {
				\clef "bass"
				{
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
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
							g,4. -\staccato )
						}
						{
							<c, c>4. (
							g,4. -\staccato )
						}
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2. -\fermata
					{
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4. -\accent -\staccato
						gs,4. -\accent -\staccato
						<fs, cs>2. -\fermata
					}
				}
				{
					fs,4 (
					f!8 )
					<b, f>4.
					<cs e>4.
					<fs, ds>4.
					<d, d>2.
					<g, d>2.
					d,4 (
					e8 )
					<g, e>4.
					<gs, ds>4.
					<f, d>4.
					<fs, cs>4.
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
					<a, a>2. -\fermata
					<f, f>2.
					<g, g>4. (
					d8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
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
							g,4. -\staccato )
						}
						{
							<c, c>4. (
							g,4. -\staccato )
						}
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2.
					{
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4. -\accent -\staccato
						gs,4. -\accent -\staccato
						<fs, cs>2. -\fermata
					}
				}
				{
					fs,4 (
					f!8 )
					<b, f>4.
					<cs e>4.
					<fs, ds>4.
					<d, d>2.
					<g, d>2.
					d,4 (
					e8 )
					<g, e>4.
					<gs, ds>4.
					<f, d>4.
					<fs, cs>4.
					<c ds>4.
					<b, ds>2.
				}
				{
					<b, ds>2.
					<c, c>4. -\staccato
					<cs, cs>4. -\staccato
					<cs, cs>4 -\staccato
					<cs, cs>8 -\staccato
					r8
					<f, f>8 -\staccato
					<f, f>8 -\staccato
					<f, f>4. -\staccato
					r8
					<gs, gs>8 -\staccato
					<gs, gs>8 -\staccato
					<gs, gs>4. -\staccato
					r4.
					<a, a>2. -\fermata
					<f, f>2.
					<g, g>4. (
					d8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
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
							g,4. -\staccato )
						}
						{
							<c, c>4. (
							g,4. -\staccato )
						}
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2.
					{
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4. -\accent -\staccato
						gs,4. -\accent -\staccato
						<fs, cs>2. -\fermata
					}
				}
				{
					fs,4 (
					f!8 )
					<b, f>4.
					<cs e>4.
					<fs, ds>4.
					<d, d>2.
					<g, d>2.
					d,4 (
					e8 )
					<g, e>4.
					<gs, ds>4.
					<f, d>4.
					<fs, cs>4.
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
					<a, a>2. -\fermata
					<f, f>2.
					<g, g>4. (
					d8 -\staccato )
					r8
					r8
				}
				{
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
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
							g,4. -\staccato )
						}
						{
							<c, c>4. (
							g,4. -\staccato )
						}
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					<d, d>4. -\tenuto
					r4.
					<g,, d, g,>2.
					{
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
					}
					{
						gs,4. -\accent -\staccato
						gs,4. -\accent -\staccato
						<fs, cs>2. -\fermata
					}
				}
				{
					fs,4 (
					f!8 )
					<b, f>4.
					<cs e>4.
					<fs, ds>4.
					<d, d>2.
					<g, d>2.
					d,4 (
					e8 )
					<g, e>4.
					<gs, ds>4.
					<f, d>4.
					<fs, cs>4.
					<c ds>4.
					<b, ds>2.
				}
				{
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<c, c>4. (
						g,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
					}
					{
						<d, d>4. (
						a,4. -\staccato )
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
							g,4. -\staccato )
						}
						{
							<c, c>4. (
							g,4. -\staccato )
						}
					}
					<g, g>2. ~
					<g, g>4.
					<g, g>4. -\accent -\staccato
					<c, c>4. -\accent -\staccato
					r4.
					r2. -\fermata
					r2. -\fermata
					{
						<g, e>2.
						d,4 -\staccato
						f,8 -\staccato
						gs,4 -\staccato
						b,8 -\staccato
						gs,4 -\staccato
						g,8 -\staccato
						b,4 -\accent -\staccato
						r8
						<c, c>4 -\accent -\staccato
						r8
						r4.
					}
				}
				\bar "|."
			}
		>>
	>>
}