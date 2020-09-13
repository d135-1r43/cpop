\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Bass
%%%%%%%%%%%%%%%%%%%%

bassIn = \relative c {
  \time 4/4
  \key e \minor
  \clef bass
  
  R1*8

  e2. e4
  e2. e4
  d2. d4
  d2. d4
  
  c2. c4
  c2. c4
  h2. h4
  h2. h4

  e2. e4
  e2. e4
  d2. d4
  d2. d4

  e2. e4
  e2. e4
  h2. h4
  h1

  R1*2
}

bassChoOne = \relative c {
  R1*16

  c2. c4
  c2 e4 g

  d2. fis4
  e1(
  e1)
}

bassChoTwo = \relative c {
  e8 e r4 r e8 r
  e1
  e8 e r4 r e8 r8
  e2 r8 e( e) g
  a1
  r8 a8 r4 a2
  d,2 r4 d
  e1 

  h8-^ h h h h h h h 
  a-^ a a a a a a a 
  g-^ g g g g g g g 
  fis-^ fis fis fis fis fis fis fis 
  e-^ e e e e e e e 
  e-^ e e e e e e e 
  h'-^ h h h h h h h 
  e-^ e e e e e e e 
  c1
  c
  d
  e( e)
}

bassSolo = \relative c {
  R1*8

  h1 a g fis

  e2. e4 
  e2. e4 
  h'2. h4
  e,1

  c1(
  c2.) c4
  d2. d4
  e1(
  e)
}