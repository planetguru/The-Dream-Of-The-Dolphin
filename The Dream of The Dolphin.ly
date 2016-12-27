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
  \tempo 4 = 95
  
  gs8 b, e a ~ a  b, e gs | 
  r4 fs8 b, ~ b cs ds ~ ds |
  e  gs, cs ds ~ds cs gs cs ~ | % tie this to next note later
  cs   r a b ~ b cs4. |
  e8 gs, b fs'4 gs,8 b e ~ |
  e b ds fs, ~ fs b  cs ds  |
  e gs, cs ds ~ ds4 e8 cs ~ |
  cs4 e,8 a ~ a b cs b
  
}

lower = \relative c {
  \clef bass
  \key e \major
  \time 4/4

  <e, e'>1  |
  ds8 ds' ~ ds2.  |
  <cs, cs'>2.  cs'4 |
  a,8 a' ~ a2. |
  <e, e'>1  |
  <ds ds'> |
  <cs cs'> |
  <gs gs'> |
  
  
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

