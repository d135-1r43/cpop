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
\include "rh-git_ach-wie-nichtig.ly"
\include "drum_ach-wie-nichtig.ly"

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
      \new GrandStaff
        \with {
          instrumentName = "Piano "
          shortInstrumentName = "Pno "
        }
       <<
        \new Staff << 
          \relative c'' {
            \pnoInRh
            \pnoChorRh
          }
        >>
        \new Staff <<
          \relative c { 
            \pnoInLhC 
            \pnoChorLhC
          }\\
          \relative c { 
            \pnoInLhB 
            \pnoChorLhB 
          }\\  
          \relative c {
            \clef bass 
            \key e \minor
            \pnoInLhA
            \pnoChorLhA
          }
        >>
      >>
      \new GrandStaff 
        \with {
            instrumentName = "Pad Synth "
            shortInstrumentName = "Synth "
        }
        <<
          \new Staff <<
            \relative c' { 
              \padRhIn 
              \padRhCho
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
          \ldGitCho
      }
      \new Staff 
        \with {
            instrumentName = "Rhythm Guitar "
            shortInstrumentName = "R Git "
        }
        \relative c { 
          \rhGitCho
      }
      \new Staff 
        \with {
            instrumentName = "Bass "
            shortInstrumentName = "Bs "
        }
        \relative { 
          \bassIn
          \bassChoOne
          \bassChoTwo
      }
      \new DrumStaff
        \with {
          instrumentName = "Drums "
          shortInstrumentName = "Dr "
        }
        \drummode {
          \drumIn
          \drumChorOne
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
