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

padRhCho = \relative c' {
  \clef bass
  <e, h'>1( <e h'> <e h'> <e h'>)
  <e c'>1( <e c'>)
  <d a'>
  <e h'>
  <e h'>
  <e c'>
  <d h'>
  <d a'>

  <e a>
  <e a>
  <d a'>
  <e h'>
  <c g'>
  <c g'>
  <d a'>
  <e h'>(
  <e h'>)
}

padRhSolo = \relative c' {
  \clef G
  <h' e,>1(
  <h e,> <h e,> <h e,> <h e,> <h e,> <h e,> <h e,> <h e,>  
  )

  % 76
  <a c e>(
  <a c e>)
  <a d fis>
  <a h e>
  
  % 80
  <h d g>
  <c e a>
  <d g h>
  <d fis a>
  <h e g>(
  <h e g>)

  % 86
  <h d fis>
  <h e g>
  <c e g>(
  <c e g>)
  <d fis a>
  <e g h>
}

padLhSolo = \relative c {
  \clef bass
  e1^\markup{Slow Mod Swell with LP Filter}(
  e\< e e e e e e e\!
  )

  % 76
  a1( 
  a1)
  fis
  e

  R1*12
}

padOut = \relative c' {
  h'1
  a
  g
  fis

  e(
  e)
  d
  e
  
  e
  c
  d\>
  e(
  e)\pp\!
}