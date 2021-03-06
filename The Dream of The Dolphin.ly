%{
Piano Score for The Dream of the Dolphin
%}

\header{
  title = "The Dream of The Dolphin"
  instrument = "Piano"
  composer = "Mihai Crețu"
  arranger = "Christopher Lacy-Hulbert"
}

\paper {
  #(set-paper-size "a4")
}

\language "english"


upper = \relative c''
{
  \key e \major
  \clef treble
  \time 4/4
  \tempo 4 =105

  gs8 b, e a ~ a  b, e gs ~ |
  gs r8 fs8 b, ~ b cs ds ~ ds |
  e  gs, cs ds ~ds r gs,  cs ~ | % tie this to next note later
  cs   r a b ~ b cs4 b8 |
  e gs, b fs'4. b,8 e ~ |
  e r ds fs, ~ fs b  cs ds  |
  e gs, cs ds ~ ds4 e8 cs ~ |
  cs4 e,8 a ~ a b cs b |
  % repeat
  gs'8 b, e a8 ~ a4 b,8  gs'8 ~ |
  gs4 fs8 b, ~ b cs ds ~ ds |  % 10
  e  gs, cs fs4 ~ fs8 gs, e' ~ | % tie this to next note later
  e4 a,8  b8 ~ b  cs ~ cs b8 |  %  this bar needs timing fixed
  e8 gs, b  fs' ~ fs gs, b e |
  e8 ~ e8  fs,8 a8 ~ a8 cs ~ cs fs, |
  e'8 e, a b ~ b ds ~ ds |
  e8 ~ e2 fs e2



}

lower = \relative c {
  \clef bass
  \key e \major
  \time 4/4

  <e, e'>1  |
  ds8 ds' ~ ds2.  |
  <cs, cs'>2 r8  cs'4. |
  a,8 a' ~ a2. |
  e,4 ~ e4. e'8 ~ e4|
  ds,8  ds'2 ~ ds4. |  % <--
  cs,4 ~ cs4. cs'8 ~ cs4|
  a,8  a'2 ~ a4. |

  % repeat
  e'4 ~ e4 r8 e'4.|
  ds,8 ds'2 ~  ds4. |
  cs,4 ~ cs4 r8 cs'4. |
  a,8 a'2 ~  a4. |
  gs, ~ gs4 r8 gs'4 |
  fs,8 fs'2 ~ fs4. |
  b, ~ b4 b'4. |
  e,,8 e'2 ~  e4. |
}


\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

