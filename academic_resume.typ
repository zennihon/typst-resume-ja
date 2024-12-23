// Win, mac, Linux フォント
#let english_fonts = ("Times New Roman", "New Computer Modern")
#let gothic_fonts = ("Hiragino Kaku Gothic Pro", "IPAexGothic", "Noto Sans CJK JP", "MS PGothic")
#let mincho_fonts = ("Hiragino Mincho Pro", "IPAexMincho", "Noto Serif CJK JP", "MS PMincho")

#let achievement_document(
  author: "",
  date: "",
  body,
) = {
  // ドキュメント全体の設定
  set document(author: author, title: "業績調書")
  set page(
    paper: "a4",
    margin: (top: 15mm, left: 15mm, right: 15mm, bottom: 10mm),
  )
  
  // フォントとテキストの設定
  set text(
    font: mincho_fonts,
    size: 10pt,
    lang: "ja"
  )
  
  // 見出しのスタイル設定
  show heading: it => block(
    below: 1em,
    {
      set text(font: gothic_fonts, weight: "bold", size: 14pt)
      if it.level == 1 {
        line(length: 100%, stroke: stroke(thickness: 2pt, paint: black, cap: "round"))
        v(2mm)
        set text(size: 16pt)
        it.body
      } else {
        it.body
      }
      if it.level == 1 { v(2mm) }
    }
  )

  // タイトル部分
  align(left)[
    #stack(
      dir: ltr,
      block(text(font: "Hiragino Kaku Gothic StdN", size: 24pt)[
        業績調書
      ]),
      h(1cm),
      align(bottom)[#text(size: 12pt)[#underline(offset: 5pt, stroke: 1.5pt, extent: 2mm)[氏名: #author]]],
      align(end+bottom)[#date]
    )
  ]

  // 本文
  body
}

// 業績エントリー用の補助関数
#let achievement_entry(
  title: "",
  authors: "",
  year: "",
  journal: "",
  volume: "",
  number: "",
  pages: "",
  description: "",
  category: none,
) = {
  set text(font: mincho_fonts)
  show regex("[0-9a-zA-Z]"): set text(font: english_fonts)
  [
    - #text()[#authors:~]
      #text(weight: "bold")["#title"],~
      #text(style: "italic")[#journal],~
      #if volume != "" {
        text(weight: "extrabold")[#volume]
        if number != "" {
          [-#number,~]
        }
      }
      #if pages != "" {
        [#pages]
      }
      ~(#year)
  ]
}
