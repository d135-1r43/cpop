\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Rhythm Guitar
%%%%%%%%%%%%%%%%%%%%

rhGitChoOne = \relative c'{
  R1*42
  \palmMuteOn
  c4\pp\<^\markup { Always Power Chords, \musicglyph "noteheads.u2do"  = palm mute  } c c c 
  c c c c 
  \palmMuteOff
  d1\f\!
  e1( e1)
}

rhGitChoTwo = \relative c'{
  \repeat unfold 4 {
    \palmMuteOff
    e4
    \palmMuteOn
    r8 e r8 e e e 
  }
  \palmMuteOff
  a1
  a1
  d,2. d4
  e1

  e8 \palmMuteOn e e e e e e e \palmMuteOff
  a8 \palmMuteOn a a a a a a a \palmMuteOff
  g8 \palmMuteOn g g g g g g g \palmMuteOff
  d8 \palmMuteOn d d d d d d d \palmMuteOff
  e8 \palmMuteOn e e e e e e e \palmMuteOff
  e8 \palmMuteOn e e e e e e e \palmMuteOff
  h'8 \palmMuteOn h h h h h h h \palmMuteOff
  e8 \palmMuteOn e e e e e e e \palmMuteOff
  c1( 
  c2) c2
  d1
  e1( e1)
}

rhGitSolo = \relative c' {
  h2.^\markup {No Power Chords, with Delay and Reverb} e4
  e2 h 
  e h
  g' h,
  
  a' a 
  e e 
  d a
  h1

  % 80
  g'2 h,
  a' c,
  g' h,
  d a 

  a' e
  h e
  a2. h4
  g1 

  g1
  e2. g4
  fis2. g4
  e1
}