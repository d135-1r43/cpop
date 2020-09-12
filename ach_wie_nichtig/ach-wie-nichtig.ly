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

\parallelMusic pnoInRh, pnoInLhC, pnoInLhB, pnoInLhA {
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
  h1\sustainOn            |

  % 8
  c8 h, h' h, a' h, h' h, |
  r4        g2.           |
  r8 fis8~ fis2.          |
  h1\sustainOn            |
  
  % 9
  h'4. e,8 h' e, c' h     |
  r4       g2.            |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 10
  a4. h,8 e a h, e        |
  r4        g2.           |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 11
  a4. h,8 a' h, e c'      |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |

  % 12
  c8 h, h' h, a' h, e h   |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |

  % 13
  h'4. e,8 h' e, c' h     |
  r4       g2.            |
  r8 fis8~ fis2.          |
  c1\sustainOn            |

  % 14
  a4. h,8 e a h, e        |
  r4        g2.           |
  r8 fis8~ fis2.          |
  c1\sustainOn            |

  % 15
  a4. h,8 a' h, e c'      |
  r4        g2.           |
  r8 fis8~ fis2.          |
  h1\sustainOn            |

  % 16
  c8 h, h' h, a' h, h' h, |
  r4        g2.           |
  r8 fis8~ fis2.          |
  h1\sustainOn            |

  % 9
  h'4. e,8 h' e, c' h     |
  r4       g2.            |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 10
  a4. h,8 e a h, e        |
  r4        g2.           |
  r8 fis8~ fis2.          |
  e1\sustainOn            |

  % 11
  a4. h,8 a' h, e c'      |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |

  % 12
  c8 h, h' h, a' h, e h   |
  r4        g2.           |
  r8 fis8~ fis2.          |
  d1\sustainOn            |
}

\book {
  \bookOutputSuffix "band"
  \score {
    <<
      \new Voice = "Female Vocals" { 
        R1*26
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
            \pnoInLhA
            R1*2
          }
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
