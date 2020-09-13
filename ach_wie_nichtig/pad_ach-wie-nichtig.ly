\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Pad Synth
%%%%%%%%%%%%%%%%%%%%

padRhIn = \relative c'' {
  \time 4/4
  \key e \minor
  
  R1*8
  
  h1
  g
  fis
  h

  g
  e
  e 
  fis

  e
  g
  fis
  d

  h1
  R1
  a( a)

  R1*2
}

padLhIn = \relative c' {
  \time 4/4
  \key e \minor
  \clef bass
  
  R1*12
  h1( h)
  h1( h)
  h1( h)
  a1( h)

  R1*6
}