\version "2.20.0"

%%%%%%%%%%%%%%%%%%%%
% Rhythm Guitar
%%%%%%%%%%%%%%%%%%%%

rhGitCho = \relative c'{
  R1*42
  \palmMuteOn
  c4\pp\<^\markup { Always Power Chords, \musicglyph "noteheads.u2do"  = palm mute  } c c c 
  c c c c 
  \palmMuteOff
  d1\f\!
  e1( e1)
}