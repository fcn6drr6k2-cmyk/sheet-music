\version "2.24.0"

\language "deutsch"

\header {
  title = "Summertime"
  subtitle = "Janis Joplin (Big Brother & The Holding Company Version)"
  arranger = "Musikalisch korrekte Fassung für Klavier & Gesang"
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Slow Blues" 4 = 70
}

% --- DIE ECHTE GANGSMELODIE ---
melody = \relative c'' {
  \global
  \clef treble
  % Intro (4 Takte Piano solo)
  R1*4 |
  
  % Strophe 1
  h4 g8 a h2 | r4 g8 a h4 a8 g | a1 | r2 r4 a8 h |
  c4 a8 h c2 | r4 c8 d c4 h8 a | h1 | r2 r4 h8 h |
  d4 h8 h d2 | r4 h8 h d4 h8 a | g1 | r2 r4 e8 g |
  a4 g8 e a4 g8 e | a4 h8 c h4 a | g1 ~ | g2 r \bar "||"
}

text = \lyricmode {
  Sum- mer- time, __ and the liv- in' is ea- sy.
  Fish are jump- in', __ and the cot- ton is high.
  Oh, your dad- dy's rich, __ and your ma is good- look- in'.
  So hush, lit- tle ba- by, don't __ you cry.
}

% --- DIE ECHTE BEGLEITUNG (Rechte Hand) ---
pianoRight = \relative c' {
  \global
  \clef treble
  % Intro (Der typische e-Moll / a-Moll6 Groove)
  <g h e>2 <fis a c> | <g h e>2 <fis a c> |
  <g h e>2 <fis a c> | <g h e>2 <fis a c> |
  
  % Strophe 1
  <g h e>2 <fis a c> | <g h e>2 <fis a c> |
  <a c e>2 <a c f> | <a c e>2 <h dis fis> |
  <g h e>2 <fis a c> | <g h e>2 <fis a c> |
  <g h d>2 <g h e> | <fis a dis>1 |
  <g h e>2 <fis a c> | <g h e>2 <fis a c> |
  <g h d>2 <g c e> | <g c e>2 <fis a dis> |
  <g h e>2 <fis a c> | <g h e>1 |
}

% --- DIE ECHTE BEGLEITUNG (Linke Hand / Bass) ---
pianoLeft = \relative c {
  \global
  \clef bass
  % Intro
  e,2 a, | e'2 a, | e'2 a, | e'2 a, |
  
  % Strophe 1
  e2 a, | e'2 a, |
  a2 c | a2 h |
  e2 a, | e'2 a, |
  g2 e | h'1 |
  e2 a, | e'2 a, |
  g2 a | c2 h |
  e,2 a, | e'1 |
}

\score {
  <<
    \new Staff \new Voice = "singing" \melody
    \new Lyrics \lyricsto "singing" \text
    
    \new PianoStaff <<
      \new Staff = "right" \pianoRight
      \new Staff = "left" \pianoLeft
    >>
  >>
  \layout { }
}