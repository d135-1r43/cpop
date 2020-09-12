\version "2.20.0"

\include "deutsch.ly"

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

%%%%%%%%%%%%%%%%%%%%%%%
% VOCALS
%%%%%%%%%%%%%%%%%%%%%%%

vocChoral = \relative a' {
  \time 4/4
  \key e \minor

  R1*26

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

vocLyricsOne = \lyricmode {
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

\include "pno_ach-wie-nichtig.ly"
\include "bass_ach-wie-nichtig.ly"

\book {
  \bookOutputSuffix "band"
  \score {
    <<
      \new Voice = "Female Vocals" { 
        \vocChoral 
      }
      \new Lyrics \lyricsto "Female Vocals" { 
        \vocLyricsOne
      }
      \new StaffGroup <<
        \new Staff << 
          \relative c'' {
            \pnoInRh
            R1*2
          }
        >>
        \new Staff <<
          \relative c { 
            \pnoInLhC 
            R1*2
          }\\
          \relative c { 
            \pnoInLhB 
            R1*2
          }\\  
          \relative c {
            \clef bass 
            \key e \minor
            \pnoInLhA
            R1*2
          }
        >>
      >>
      \new Staff \relative { 
        \bassIn 
      }
    >>
  }
  \header {
    title = "Ach wie flüchtig, ach wie nichtig"
    subtitle = "Post Rock, Shoegazing"
    tagline = ""
    poet = "Text und Melodie: Michael Franck 1652"
    composer = "Arrangement: Markus Herhoffer"
    copyright = "2020"
  }
  \paper {
    #(set-paper-size "a4")
    print-page-number = ##t
  }
}