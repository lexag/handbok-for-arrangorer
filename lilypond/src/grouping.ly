\version "2.24.1"
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
      \numericTimeSignature
      \omit Score.Clef
      \relative b'{c4 4. 8 4 | 4 4~8 8 4 | 4 8~4 8 4}

      }
    }

  \layout {
}
}
