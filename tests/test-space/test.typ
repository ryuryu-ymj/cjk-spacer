#import "/src/lib.typ": cjk-spacer
#show: cjk-spacer

#set text(lang: "ja", font: "Noto Sans JP")

#{
  let list = ("a", ".", "あ", "「", "・", "．", $x$)

  for a in list {
    for b in list {
      a + b
      parbreak()
      a + [ ] + b
      parbreak()
    }
  }
}
