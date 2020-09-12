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

%%%%%%%%%%%%%%%%%%%%
% Piano
%%%%%%%%%%%%%%%%%%%%

\parallelMusic pnoRh, pnoLhC, pnoLhB, pnoLhA {
  % 1
  h4. e,8 h' e, c' h      |
  r4       g'2.           |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 2
  a4. h,8 e a h, e        |
  r4        g2.           |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 3
  a4. h,8 a' h, e c'      |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |

  % 4
  c8 h, h' h, a' h, e h   |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |

  % 5
  h'4. e,8 h' e, c' h     |
  r4       g2.            |
  r8 fis8~ fis2.          |
  c1\sustainOn            |

  % 6
  a4. h,8 e a h, e        |
  r4        g2.           |
  r8 fis8~ fis2.          |
  c1\sustainOn            |

  % 7
  a4. h,8 a' h, e c'      |
  r4        g2.           |
  r8 fis8~ fis2.          |
  h,1\sustainOn           |

  % 8
  c8 h, h' h, a' h, h' h, |
  r4        g2.           |
  r8 fis8~ fis2.          |
  h,1\sustainOn           |
}

\book {
  \bookOutputSuffix "band"
  \score {
    <<
      \new Voice = "Female Vocals" { \vocChoral }
      \new Lyrics \lyricsto "Female Vocals" { 
        \vocLyricsOne
      }
      \new StaffGroup <<
        \new Staff << 
          \relative c'' \pnoRh 
        >>
        \new Staff <<
          \relative c \pnoLhC \\
          \relative c \pnoLhB \\  
          \relative c \clef bass \pnoLhA 
        >>
      >>
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
