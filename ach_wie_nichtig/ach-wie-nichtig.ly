\version "2.20.0"

\include "deutsch.ly"

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

voc.choral = \relative a' {
  \time 4/4
  \key e \minor
  e2. fis4 g2 g 
  a a h h 
  c h a g 
  fis1 e 

  h'2 h c c 
  h h a a 
  a a h h 
  a a g g 
  g2. a4 h2 g 
  fis fis e e 
}

voc.lyrics.one = \lyricmode {
  Ach wie flüch -- tig,
  ach wie nich -- tig
  ist der Men -- schen 
  Le -- ben!

  Wie ein Ne -- bel
  bald ent -- ste -- het
  und auch wie -- der 
  bald ver -- ge -- het,
  so ist un -- ser 
  Le -- ben, se -- het
}


\book {
  \bookOutputSuffix "band"
  \score {
    <<
      \new Voice = "Female Vocals" { \voc.choral }
      \new Lyrics \lyricsto "Female Vocals" { 
        \voc.lyrics.one
      }
    >>
  }
  \header {
    title = "Ach wie flüchtig, ach wie nichtig"
    subtitle = "Arrangement für Post Rock Band"
    tagline = "Rockband"
    poet = "Text und Melodie: Michael Franck 1652"
    composer = "Arrangement: Markus Herhoffer"
    copyright = "2020"
  }
  \paper {
    #(set-paper-size "a4")
    bottom-margin = 2\cm
    print-page-number = ##t
  }
}
