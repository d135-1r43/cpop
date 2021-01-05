\version "2.18.2"

#(set-global-staff-size 20)
\include "deutsch.ly"

\layout {
  \context {
    \RemoveEmptyStaffContext
  } 
}

choral =
\relative a' {
  f2 f4 f 
  es2 c 
  f4 g as as
  b2 g 

  g2 as4 b 
  c2 as
  des4 des c c 
  b2 as

  as g4 f 
  es2 c
  es4 es f es 
  des2 c
  c' b4 as
  g2 f
}
vocals = \relative a {
  \time 2/2
  \key f \minor
  \choral
  \bar "|."
}

\book {
  \bookOutputSuffix "leadsheet"
  \score {
    <<
      \new Voice = "melody" { 
        \transpose f e { \vocals }
      }
      \new Lyrics \lyricsto "melody" {
        Herz -- liebs -- ter Je -- su, 
        was hast du ver -- bro -- chen, 

        dass man ein solch scharf
        Ur -- teil hat ge -- spro -- chen?

        Was is die Schuld, in was für
        Mis -- se -- ta -- ten
        bist du ge -- ra -- ten?
      }
    >>
  }
  \header {
    title = "Herzliebster Jesu, was hast du verbrochen"
    subtitle = "EG 81"
    tagline = ""
    poet = "Johann Heermann"
    composer = "Johann Crüger"
    copyright = ""
  }
  \paper {
    #(set-paper-size "a4")
    bottom-margin = 2\cm
    print-page-number = ##t
  }
}
