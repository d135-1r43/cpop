\version "2.20.0"

\include "deutsch.ly"

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}

\include "voc_ach-wie-nichtig.ly"
\include "pno_ach-wie-nichtig.ly"
\include "pad_ach-wie-nichtig.ly"
\include "bass_ach-wie-nichtig.ly"
\include "ld-git_ach-wie-nichtig.ly"

\book {
  \bookOutputSuffix "band"
  \score {
    <<
      \new Voice = "Female Vocals" 
      { 
        \vocChoral 
      }
      \new Lyrics \lyricsto "Female Vocals" { 
        \vocLyricsOne
      }
      \new StaffGroup
        \with {
          instrumentName = "Piano "
          shortInstrumentName = "Pno "
        }
       <<
        \new Staff << 
          \relative c'' {
            \pnoInRh
            R1*2
          }
        >>
        \new Staff <<
          \relative c { 
            \pnoInLhC 
          }\\
          \relative c { 
            \pnoInLhB 
          }\\  
          \relative c {
            \clef bass 
            \key e \minor
            \pnoInLhA
          }
        >>
      >>
      \new StaffGroup 
        \with {
            instrumentName = "Pad Synth "
            shortInstrumentName = "Synth "
        }
        <<
          \new Staff <<
            \relative c' { 
              \padRhIn 
            }
          >>
          \new Staff <<
            \relative c' { 
              \padLhIn 
            }
          >>
        >>
      \new Staff 
        \with {
            instrumentName = "Lead Guitar "
            shortInstrumentName = "Ld Git "
        }
        \relative c { 
          \ldGitIn 
      }
      \new Staff 
        \with {
            instrumentName = "Bass "
            shortInstrumentName = "Bs "
        }
        \relative { 
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
