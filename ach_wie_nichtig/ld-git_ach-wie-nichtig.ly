\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Lead Guitar
%%%%%%%%%%%%%%%%%%%%

ldGitIn = \relative c'{
  \time 4/4
  \key e \minor
  
  R1*14

  
  h'1:8^\markup{with Delay and Reverb}\ppp\<(
  h1:8)
  
  h1:8\!\mf 
  c1:8
  h1:8
  a1:8

  g1:8
  h1:8
  fis1:8
  h1:8

  R1*2
}

ldGitCho = \relative c'{
  h'1:8\mf\<
  a:8
  g:8
  fis:8\!\f

  e:8(
  e:8)
  d:8
  e:8
  
  e:8
  c:8
  d:8\>
  e:8(
  e:8)\pp\!
}

ldGitSolo = \relative c' {
  e2. fis4
  g2 e
  a e
  h' e,
  
  c' h
  a g 
  fis d 
  e1

  h'2 e,
  c' e,
  h' d,
  fis d 
  
  fis h,
  g' h,
  fis'2. fis 4
  e1

  e 
  c2. e4
  d2. d4 
  h1
}