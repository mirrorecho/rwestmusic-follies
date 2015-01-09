suelyrics = \lyricmode {                                                             Zer-            o       one one                     two                     three                   five eight!                                                                                  This nerd            I       don`t           a-      pre-            ci-     ate     have            no      cor-            re-     la-             tion    And     our     dy- na-     mics    are     too             com-    plex  g2.                                             R2.  fs8     fs8     fs4             f4              e4.                     ds4.                                             } 

timlyrics = \lyricmode {                                                                         Though          my        love            is      as-             ymp-    to-             tic     And             my pass-           ion     i-              di-     o-              tic Sue!                                                                                                                                             to  oth-                    ers                     you                     seem Mous-           e-              ian                                     to me                      your                    cur-                    va-  ture                    is                      Gaus-           si-             an                                                                                Though          we                                                                                  Could   n’t     there be  Could   n’t     there           be              some                    e- quat-                   ion May-                    be                      some-                    thing short                   of                      sex?                                                                               Still           I`d love            some    sa-             tis-    fac-            tion                    A whole           not     just            a       frac-          tion                                 } 

% 2015-01-09 16:45

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
			\time 6/8
			{
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
				as4 -\staccato
				as'8 -\staccato
				cs''4. -\staccato
				cs''4. -\staccato
				e''4. -\staccato
				ds''4. -\staccato
				ds''4. -\staccato
				gs''4. -\staccato
				r4.
				r4.
				r4
				as''8
				as''4
				as''8
				as''4
				b''8
				cs'''4
				b''8
				as''4.
			}
			{
				R2.
				R2.
				R2.
				R2.
			}
			{
				c'4
				c'8
				c'4
				d'8
				e'4
				d'8
				d'8
				d'8
				d'8
				d'8
				d'8
				d'8
				e'4
				e'8
				f'4.
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
				c'4
				c'8
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
				R2.
				R2.
				R2.
				R2.
				R2.
				R2.
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
				d?4
				d4
				d4
				r4.
				f4.
				f4.
				e4.
				ds4.
				d4.
				cs4.
				c4.
				b,4
				b,4
				b,4
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
				c4
				c8
			}
			{
				R2.
				R2.
				R2.
				R2.
				R2.
				r4.
				g,8
				g,8
				g,8
				R2.
				R2.
			}
			{
				R2.
				R2.
				d?4.
				d4.
				R2.
				f4.
				e4.
				ds4.
				d4.
				cs4.
				c4.
				b,4.
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
				r4.
				c4
				c8
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
				R2.
				R2.
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
					R2.
					R2.
					R2.
					r4.
					<e g c'>4
					<e g c'>8
				}
				{
					<e' g' c''>4
					<e' g' c''>8
					<e' g' c''>4
					<e' g' d''>8
					<e' g' e''>4
					<e' g' d''>8
					<f' a' d''>4
					<f' a' d''>8
					<f' a' d''>4
					<f' a' d''>8
					<f' a' d''>4
					<f' a' e''>8
					<f' a' f''>4
					<f' a' e''>8
					r4.
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
					<e g c'>4
					<e g c'>8
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
					R2.
					R2.
					R2.
					R2.
					R2.
					R2.
				}
			}
			\new Staff {
				\clef "bass"
				{
					R2.
					R2.
					<c, c>4. -\tenuto
					g,4. -\staccato
					<c, c>4. -\tenuto
					g,4. -\staccato
				}
				{
					<c, c>4. -\tenuto
					g,4. -\staccato
					<c, c>4. -\tenuto
					a,4. -\staccato
					<d, d>4. -\tenuto
					a,4. -\staccato
					<d, d>4. -\tenuto
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
					<c, c>4. -\staccato
					<cs, cs>4. -\staccato
					<cs, cs>4. -\staccato
					<d, d>4. -\staccato
					<ds, ds>4. -\staccato
					<es, es>4. -\staccato
					<gs, gs>4. -\staccato
					r4.
					R2.
					R2.
					R2.
				}
				{
					R2.
					R2.
					<c, c>4. -\tenuto
					g,4. -\staccato
					<c, c>4. -\tenuto
					g,4. -\staccato
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
					R2.
					R2.
					R2.
					R2.
					R2.
					R2.
				}
			}
		>>
	>>
}