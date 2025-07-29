\version "2.24.0"
\layout {
  \context {
    \Score
    %% Changing the defaults from engraver-init.ly
    measureBarType = "|"
    startRepeatBarType = "[|:"
    endRepeatBarType = ":|]"
    doubleRepeatBarType = ":|][|:"
  }
}

\score {
    \new Staff {
      \context Voice {
      \time 12/8
      \numericTimeSignature
      \omit Score.Clef
      \relative b'{c8[ c c] c[ c c] c[ c c] c[ c c]} \bar "|"
    \stopStaff
      s1
      \startStaff
      \time 4/4
      \relative b'{\repeat unfold 4 { \tuplet 3/2 {c8[ c c]}}} \bar "|"

      }
    }

  \layout {
}
}
