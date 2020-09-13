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
        \vocLyricsTwo
        \vocLyricsThree
      }
      \new GrandStaff
        \with {
          instrumentName = "Piano "
          shortInstrumentName = "Pno "
        }
       <<
        \new Staff << 
          \relative c'' {
            \mark "In"
            \pnoInRh 
            \bar "||"
            \mark "Verse 1"
            \pnoChorRh
            R1*44
            \relative c'' {\pnoChorRh}
            \relative c'' {\pnoEndRh}
            \bar "|."
          }
        >>
        \new Staff <<
          \relative c { 
            \pnoInLhC 
            \bar "||"
            \pnoChorLhC
            R1*44
            \pnoChorLhC
            \pnoEndLhC
            \bar "|."
          }\\
          \relative c { 
            \pnoInLhB 
            \bar "||"
            \pnoChorLhB
            R1*44
            \pnoChorLhB 
            \pnoEndLhB 
            \bar "|."
          }\\  
          \relative c {
            \clef bass 
            \key e \minor
            \pnoInLhA
            \bar "||"
            \pnoChorLhA
            R1*44
            \pnoChorLhA
            \pnoEndLhA
            \bar "|."
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
              \bar "||"
              \padRhCho
              \bar "||"
              R1*19
              \padRhSolo
              R1*7
              \padOut
              \bar "|."
            }
          >>
          \new Staff <<
            \relative c' { 
              \padLhIn 
              \bar "||"
              R1*21
              R1*19
              \padLhSolo
              R1*20
              \bar "|."
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
          \bar "||"
          R1*8
          \ldGitCho
          \bar "||"
          R1*8
          \ldGitCho
          \bar "||"
          R1*3
          \ldGitSolo
          R1*7
          \ldGitCho
          \bar "|."
      }
      \new Staff 
        \with {
            instrumentName = "Rhythm Guitar "
            shortInstrumentName = "R Git "
        }
        \relative c { 
          \rhGitChoOne
          \bar "||"
          \rhGitChoTwo
          \bar "||"
          R1*3
          \rhGitSolo
          R1*20
          \bar "|."
      }
      \new Staff 
        \with {
            instrumentName = "Bass "
            shortInstrumentName = "Bs "
        }
        \relative { 
          \bassIn
          \bar "||"
          \bassChoOne
          \bar "||"
          \bassChoTwo
          \bar "||"
          R1*3
          \bassSolo
          R1*19
          \bar "|."
      }
      \new DrumStaff
        \with {
          instrumentName = "Drums "
          shortInstrumentName = "Dr "
        }
        \drummode {
          \drumIn
          \drumChorOne
          \mark "Verse 2"
          \drumChorTwo
          \mark "Guitar Solo"
          \drumSolo
          R1*18
          \drumEnd
          \bar "|."
        }
    >>
  }
  \header {
    title = "Ach wie flüchtig, ach wie nichtig"
    subtitle = "Blackgaze / Post Rock"
    tagline = ""
    poet = "Text und Melodie: Michael Franck 1652"
    composer = "Arrangement: Markus Herhoffer"
    copyright = "2020"
  }
  \paper {
    #(set-paper-size "a4")
    print-page-number = ##t
    left-margin = 20
  }
}
