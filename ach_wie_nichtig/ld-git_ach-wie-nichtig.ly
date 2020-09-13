\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Lead Guitar
%%%%%%%%%%%%%%%%%%%%

ldGitIn = \relative c'{
  \time 4/4
  \key e \minor
  
  R1*14

  
  h'1:8\ppp\<(
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
  R1*8

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