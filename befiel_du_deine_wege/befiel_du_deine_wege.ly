\version "2.18.2"

#(set-global-staff-size 20)
\include "deutsch.ly"

% modify maj9 and 6(add9)
% Exception music is chords with markups
chExceptionMusic = {
  <c e g d'>1-\markup { \super "add9" }
}

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

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

flute = \relative a {
  \partial 4 
  d4 f2. g8 a8(
  a2.) c8 h8(
  h2.) a8 e8(
  e2.)

  d4 f2. h8 a8(
  a2.) d8 cis8(
  c2.) e8 a8(a2.)
}

vocals = \relative a {
  \time 4/4
  \key c \major
  \compressFullBarRests
  <<
    \new CueVoice {
      \flute
    }
    \\
    s^\markup { \italic{Flute Intro} }
  >>
  \choral
}

harmintro = {
    \chordmode {
    \partial 4 
    r4
    d2.:m7
  }
  \set additionalPitchPrefix = #"add"
  <c e g d'>4    % add9
  \chordmode {
    f2.:maj7
  }
  <e g h c'>4
  \chordmode {
    g2.:9 e4:7
    a1:m7

    d2.:m h4:dim
    f2.:maj7 cis4:m
    a1:7 a2.:11
  }
}

harmchoral = {
    \chordmode {
    \partial 4 
    r4
    d2.:m7
  }
  \set additionalPitchPrefix = #"add"
  <c e g d'>4    % add9
  \chordmode {
    f2.:maj7
  }
  <e g h c'>4
  \chordmode {
    g2.:9 e4:7
    a1:m7

    g2.:7 h4:dim
    a2.:7 f4:maj
    g2.:7 a4
    d2.:m7
  }
  \set additionalPitchPrefix = #"add"
  <c e g f' a'>4
  \chordmode {
    d2.:m7
  }
  <e g h c'>4 
  <f a c' >2.
  <a c' e' f'>4 
  \chordmode {
    c2.:maj7 a4:7
    d2.:m7
  }
}

harmonies = { 
  \harmintro
  \harmchoral
}

\book {
  \bookOutputSuffix "leadsheet"
  \score {
    <<
      \new ChordNames {
        \harmonies
      }
      \new Voice = "melody" { \vocals }
      \new Lyrics \lyricsto "melody" {
      <<
        {  
          Be -- fiehl du dei -- ne We -- ge und
          was dein Her -- ze kränkt }
        \new Lyrics {
          \set associatedVoice = "melody"
          der al -- ler -- treus -- ten Pfle -- ge des 
          der den Him -- mel lenkt.
	    }
      >>
        Der Wol -- ken, Luft und 
        Win -- den gib We -- ge, Lauf und Bahn, 
        der wird auch We -- ge fin -- den, 
        da ein Fuß ge -- hen kann.
    }
    >>
  }
  \header {
    title = "Befiel du deine Wege"
    subtitle = "Leadsheet"
    tagline = ""
    poet = "Paul Gerhardt"
    composer = "Bartholomäus Gesius"
    copyright = "Markus Herhoffer"
  }
  \paper {
    #(set-paper-size "a4")
    bottom-margin = 2\cm
    print-page-number = ##t
  }
}
