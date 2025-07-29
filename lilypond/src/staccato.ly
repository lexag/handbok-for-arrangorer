\version "2.24.0"
\layout {
  \context {
    \Score
    %% Changing the defaults from engraver-init.ly
    measureBarType = " "
    startRepeatBarType = "[|:"
    endRepeatBarType = ":|]"
    doubleRepeatBarType = ":|][|:"
  }
}

\score {
    \new Staff {
      \context Voice {
      \omit Score.TimeSignature
      \omit Score.Clef
      \relative c''{\textMark "Inkorrekt" \repeat unfold 4 {f8 r} \bar "|" \textMark "Korrekt" \repeat unfold 4 {f4^.}}

      }
    }

  \layout {
}
}
