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
<<
    \new Staff {
      \context Voice {
      \time 8/4
      \omit Score.TimeSignature
      \numericTimeSignature
      \relative b'{e16 es e es e b d c a4}

      }
    }

    \new Staff {
      \context Voice {
      \time 8/4
      \omit Score.TimeSignature
      \numericTimeSignature
      \relative b'{e16 dis e dis e b d c a4}

      }
    }
  >>
  \layout {
}
}
