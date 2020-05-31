\version "2.18.2"

#(set-global-staff-size 20)
\include "deutsch.ly"

\layout {
  \context {
    \RemoveEmptyStaffContext
  } 
}

choral =
\relative a {
  \repeat volta 2 {
    \partial 4 
    d4 f e f g 
    a2 a4 c
    h a a gis
    a2 r4 
  }
  a h c d g, 
  c2 a4 a 
  g f f e 
  f2 r4 a 
  f g a g 
  f2 e4 f 
  g a f e d2.
  \bar "|."
}

vocals = \relative a {
  \time 4/4
  \key c \major
  \compressFullBarRests

  \choral
}

lyr = \lyricmode {
  Be -- fiehl du dei -- ne We -- ge und
  was dein Her -- ze kränkt

  Der Wol -- ken, Luft und 
  Win -- den gib We -- ge, Lauf und Bahn, 
  der wird auch We -- ge fin -- den, 
  da ein Fuß ge -- hen kann.
}

harmonies = \chordmode {
  d1:m6
  b2:6 c

  d1:m6
  b2:6 c

  b2 c
  d1:m

  b2 c
  d1:m

  b2 c
  f4 c
  b2 % Vorhalt 9-8
  a1 % Vorhalt 4-3
}

\book {
  \bookOutputSuffix "voc"
  \score {
    <<
      \new ChordNames \harmonies
      \new Voice = "one" { \vocals }
      \new Lyrics \lyricsto "one" { \lyr }
    >>
  }
  \header {
    title = "Lament"
    subtitle = "Gesang"
    tagline = ""
    poet = "Nacht"
    composer = "Opus Iræ"
    copyright = "{REVISION}"
  }
  \paper {
    #(set-paper-size "a4")
    bottom-margin = 2\cm
    print-page-number = ##t
  }
}
