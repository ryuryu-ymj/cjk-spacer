#import "/src/lib.typ": cjk-spacer
#show: cjk-spacer

#set text(font: "Noto Sans JP")
#show math.equation: set text(font: ("New Computer Modern Math", "Noto Sans JP"))


こんにちは
世界
あ$x$あ

#[
  #set text(2em)
  あ$x$あ
]

「$x$」
（$x$）
．$x$．

$
  integral x y z dif x
$

$
  x^2 >= 0 "for all" x in RR \
  x^2 >= 0 "ただし" x "は任意の実数" \
$


/ 用語: #[
    こんにちは
    世界
    あ$x$あ
  ]

#figure(
  rect[
    こんにちは
    世界
    あ$x$あ
  ],
  caption: [
    こんにちは
    世界
    あ$x$あ
  ],
)
