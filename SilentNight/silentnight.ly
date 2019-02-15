\header {
  title = "Silent Night"
  composer = "by Franz Gruber"
  arranger = "arr. Sibylle Kuder"
}

\paper {
  after-title-space = 10\mm
  left-margin = 15\mm
  between-system-space = 30\mm
  between-system-pading = 8\mm
}

global= {
  \time 3/4
  \key d \major
  \tempo 4 = 88
}

celloOne = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello 1 "
  \set Staff.shortInstrumentName = #"Vc.1 "
  \set midiInstrument = #"cello"
  \clef bass

  a4. b8 a4 fis2. a4. b8 a4 fis2. e'2 e4 cis2. d2 d4 a2.  
  b2 b4 d4. cis8 b4 a4. b8 a4 fis2.
  b2 b4 d4. cis8 b4 a4. b8 a4 fis2.
  \clef treble e'2\< e4 g4. e8 cis4\! \clef bass
  d2.\> fis2.\! d4 a4 fis4 a4. g8 e4 d2.~ d2.~ d2.~ d2.

  \bar "|."
  
}

celloTwo = \new Voice \relative c {
  \set Staff.instrumentName = #"Cello 2 "
  \set Staff.shortInstrumentName = #"Vc.2 "
  \set midiInstrument = #"cello"
  \clef bass

  fis4. g8 fis4 d2. fis4. g8 fis4 d2. g2 g4 g2. fis2 fis4 fis2. 
  g2 g4 b4. a8 g4 fis4. g8 fis4 d2.
  g2 g4 b4. a8 g4 fis4. g8 fis4 d2.
  cis'2 cis4 e4. \autoBeamOff cis8 \autoBeamOn a8 g8
  fis4 g4 a4 b2. a2 d,4 e4 d4 cis4 \clef treble a''4.\pp b8 a4 fis2. a4. b8 a4 fis2.

  \bar "|."

}

celloThree = \new Voice \relative c {
  \set Staff.instrumentName = #"Cello 3 "
  \set Staff.shortInstrumentName = #"Vc.3 "
  \set midiInstrument = #"cello"
  \clef bass

  d2. a4. b8 a4 d2. a4. b8 a4 cis2. a4. b8 a4 d2. d4 e4 fis4 
  d2. d2 cis4 d2. a4. b8 a4
  d2. d2 cis4 d2. a4. b8 a4
  a2. a4 e'4 a,4
  d4. e8 d4 d2. a2. cis2 a4 \clef treble fis''4.\pp g8 fis4 d2. fis4. g8 fis4 d2.

  \bar "|."

}

celloFour = \new Voice \relative c, {
  \set Staff.instrumentName = #"Cello 4"
  \set Staff.shortInstrumentName = #"Vc.4 "
  \set midiInstrument = #"cello"
  \clef bass

  d2.~ d2. d2.~ d2. a'2. e2. d2. d2. 
  g2. e2. a2. d,4 e4 fis4
  g2. e2. a2. d,4 e4 fis4
  g2. e2.
  fis2. gis2. a2.~ a2. d,2.~ d2.~ d2.~ d2.

  \bar "|."

}

\score {
    \new StaffGroup <<
      \new Staff << \global \celloOne >>
      \new Staff << \global \celloTwo >>
      \new Staff << \global \celloThree >>
      \new Staff << \global \celloFour >>
    >>
  \layout { }
  \midi { }
}
\header { }

\version "2.18.2-1"
