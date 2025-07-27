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
  <<
    \new Staff {
      \context Voice {
      \numericTimeSignature
      \omit Score.Clef
        
      \relative b'{c4^"Inkorrekt"~8 8 4 4 | r2 c8 8~8 8} 

      }
    }
    \new Staff {
      \context Voice {
      \numericTimeSignature
      \omit Score.Clef
      \relative b'{c4.^"Korrekt" 8 4 4 | r2 c8 4 8} 

      }
    }
  >>
  \layout {
}
}
