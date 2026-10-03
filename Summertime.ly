\version "2.24.0"


\header {
  title = "Summertime"
  subtitle = "Janis Joplin (Big Brother & The Holding Company Version)"
  arranger = "Arrangement für Gesang & Klavierbegleitung"
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Slow Blues Shuffle" 4 = 75
}

% --- GESANGSMELODIE ---
melody = \relative c'' {
  \global
  \clef treble
  % Intro (4 Takte Pause für den Gesang)
  R1*4 |
  
  % Strophe 1
  r2 r4 g8 a | b4 b8 a b4 r | r2 r4 a8 b | c4 c8 b a4 r |
  r2 r4 g8 a | b4 b8 a b4 r | r2 r4 a8 b | h4 h8 a h4 r |
  r2 r4 g8 a | b4 b8 a b4 r | r2 r4 a8 b | c4 c8 b a4 r |
  r2 r4 b8 h | d4 b8 h a g4. | r4 g8 g a4 c8 b | e1 \bar "||"
  
  % Strophe 2
  r2 r4 g,8 a | b4 b8 a b4 r | r2 r4 a8 b | c4 c8 b a4 r |
  r2 r4 g8 a | b4 b8 a b4 r | r2 r4 a8 b | h4 h8 a h4 r |
  r2 r4 g8 a | b4 b8 a b4 r | r2 r4 a8 b | c4 c8 b a4 r |
  r2 r4 b8 h | d4 b8 h a g4. | r4 g8 g a4 c8 b | e1 \bar "|."
}

% --- SONGTEXT ---
text = \lyricmode {
  % Strophe 1
  Sum- mer- time, __ and the liv- in' is ea- sy.
  Fish are jump- in', __ and the cot- ton is high.
  Oh, your dad- dy's rich, __ and your ma is good- look- in'.
  So hush, ba- by, ba- by, don't __ you cry.
  
  % Strophe 2
  One of these morn- in's, __ you're gon- na rise up sing- in'.
  Then you'll spread your wings, __ and you'll take to the sky.
  But till that morn- in', __ there's a noth- in' can harm you.
  With dad- dy and mam- my stand- in' by.
}

% --- KLAVIER RECHTE HAND ---
pianoRight = \relative c' {
  \global
  \clef treble
  % Intro
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  
  % Strophe 1
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <a c e>1 | <g b e g>1 |
  <a c f>1 | <f' a dis>2 <dis fis a h> |
  <g, b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b d g>1 | <g c e a>2 <a c e a> |
  <a c f>2 <f' a dis> | <g, b e>1 |
  
  % Strophe 2
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <a c e>1 | <g b e g>1 |
  <a c f>1 | <f' a dis>2 <dis fis a h> |
  <g, b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b e>4 <g b e>8. fis'16 g2 | <fis, a c e>1 |
  <g b d g>1 | <g c e a>2 <a c e a> |
  <a c f>2 <f' a dis> | <g, b e>1 |
}

% --- KLAVIER LINKE HAND (BASS) ---
pianoLeft = \relative c {
  \global
  \clef bass
  % Intro
  e,1 | a,1 | e'1 | a,1 |
  
  % Strophe 1
  e1 | a,1 | e'1 | a,1 |
  a1 | e'1 |
  c1 | h2 h |
  e1 | a,1 | e'1 | a,1 |
  g1 | a2 a |
  c2 h | e,1 |
  
  % Strophe 2
  e1 | a,1 | e'1 | a,1 |
  a1 | e'1 |
  c1 | h2 h |
  e1 | a,1 | e'1 | a,1 |
  g1 | a2 a |
  c2 h | e,1 |
}

% --- STRUKTUR ZUSAMMENFÜHRUNG ---
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
  \midi { }
}