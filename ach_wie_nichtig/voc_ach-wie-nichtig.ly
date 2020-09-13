\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%%%%
% VOCALS
%%%%%%%%%%%%%%%%%%%%%%%

choral = \relative a' 
{
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

vocChoral = \relative a' {
  \time 4/4
  \key e \minor

  R1*26
  \choral
  R1
  \choral
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