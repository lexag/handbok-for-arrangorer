\version "2.24.0"
\layout {
  \context {
    \Score
    %% Changing the defaults from engraver-init.ly
    measureBarType = ""
    startRepeatBarType = "[|:"
    endRepeatBarType = ":|]"
    doubleRepeatBarType = ":|][|:"
    proportionalNotationDuration = #(ly:make-moment 1/2)

  }
}

\score {
    \new Staff {
      \context Voice {
      \omit Score.TimeSignature
      \omit Score.Clef
      \time 1/4
      s4
      \section
      \sectionLabel \markup { \box { \bold Intro } }
      s4
    \stopStaff
      s1
      \startStaff
      s4
      \bar "|" 
      \sectionLabel \markup { \box { \bold Vers } }
      s4
    \stopStaff
      s1
      \startStaff
      s4
      \section 
      \sectionLabel \markup { \box { \bold A } }
      s4
    \stopStaff
      s1
      \startStaff
      s4
      \section
      \sectionLabel \markup {  \bold Vers  }
      s4
    \stopStaff
      s1
      \startStaff

      s4
      \section
      \sectionLabel \markup {  \box { \bold {Refräng_nummer_fem}  } }
      s4
  }}

  \layout {
}
}
