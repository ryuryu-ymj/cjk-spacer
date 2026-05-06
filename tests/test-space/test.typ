#import "/src/lib.typ": cjk-spacer

#set text(lang: "ja", font: "Noto Sans JP")
#show math.equation: set text(font: ("New Computer Modern Math", "Noto Sans JP"))
#show: cjk-spacer

#let test(expected, actual) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: -100%,
    rows: 1,
    text(fill: red, expected), actual,
    // none, actual,
  )
}


#test(
  { [hello world] },
  { [hello] + [ ] + [world] },
)

#test(
  { [こんにちは世界] },
  { [こんにちは] + [ ] + [世界] },
)

#test(
  { [こんにちはTypstの世界] },
  { [こんにちは] + [ ] + [Typst] + [ ] + [の世界] },
)

#test(
  { [こんにちは*タイプスト*の世界] },
  { [こんにちは] + [ ] + [*タイプスト*] + [ ] + [の世界] },
)

#test(
  { [*こんにちは世界*] },
  { [*こんにちは*] + [ ] + [*世界*] },
)

// Apply cjk-latin-spacing to western punctuation marks.
#test(
  { [あ] + h(0.25em) + [(abc)] + h(0.25em) + [あ] },
  { [あ(abc)あ] },
)
#test(
  { [あ] + h(0.25em) + [(abc)] + h(0.25em) + [あ] },
  { [あ] + [ ] + [(abc)] + [ ] + [あ] },
)
#test(
  { [あ] + h(0.25em) + [(あ] + h(0.25em) + [(ああ)] + h(0.25em) + [あ)] + h(0.25em) + [あ] },
  { [あ(あ(ああ)あ)あ] },
)
#test(
  { [abc.] + h(0.25em) + [あ] },
  { [abc.あ] },
)
#test(
  { [abc.] + h(0.25em) + [あ] },
  { [abc.] + [ ] + [あ] },
)

// Apply cjk-latin-spacing to math.equation.
#test(
  { [あ] + h(0.25em) + [$x + y$] + h(0.25em) + [あ] },
  { [あ$x + y$あ] },
)
#test(
  { [あ] + h(0.25em) + [$x + y$] + h(0.25em) + [あ] },
  { [あ] + [ ] + [$x + y$] + [ ] + [あ] },
)
#test(
  { [「] + h(0em) + [$x + y$] + h(0em) + [」] },
  { [「$x + y$」] },
)
#test(
  { [「] + h(0em) + [$x + y$] + h(0em) + [」] },
  { [「] + [ ] + [$x + y$] + [ ] + [」] },
)
