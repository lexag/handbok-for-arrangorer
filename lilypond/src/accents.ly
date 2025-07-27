\version "2.24.1"
\layout {
  \context {
    \Score
    %% Changing the defaults from engraver-init.ly
    measureBarType = " "
    startRepeatBarType = "[|:"
    endRepeatBarType = ":|]"
    doubleRepeatBarType = ":|][|:"
\override SpacingSpanner spacing-increment = 8
  }
}

\score {
    \new Staff {
      \context Voice {
      \omit Score.TimeSignature
      \omit Score.Clef
      \textLengthOn
      \relative c''{\textMark"Staccato" f4^. \textMark"Tenuto"f4^- \textMark"Marcato, svag" f^> \textMark"Marcato, stark" f^^} \bar "|"
      }
    }

  \layout {
}
}
