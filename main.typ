// main.typ

#import "academic_resume.typ": *

#show: achievement_document.with(
  author: "山田 太郎",
  date: [#datetime.today().display("[year]年[month]月[day]日")],
)

#let 私 = {
  text(weight: "extrabold", fill: black,
    [
      #underline(offset: 1mm, stroke: 1.5pt, [山田])
    ]
  )
}

#let Me = {
  text(weight: "extrabold", fill: black,
    [
      #underline(offset: 1mm, stroke: 1.5pt, [T. Yamada])
    ]
  )
}

= 学術論文

#achievement_entry(
  category: "論文",
  title: "新しい機械学習アルゴリズムの開発と評価",
  authors: [#私, 田中],
  journal: "なんかすごいジャーナル",
  volume: 5,
  number: 4,
  pages: [pp. 302--314],
  year: "2023",
  description: "Journal of Advanced Computing (Vol. 45, pp. 123-134)"
)

#achievement_entry(
  category: "論文",
  title: "なんかすごいアルゴリズムを搭載した4脚移動ロボットの開発",
  authors: [岬, #私, 後藤],
  journal: "あんまりすごくないジャーナル",
  volume: 5,
  number: 4,
  pages: [pp. 302--314],
  year: "2023",
  description: "Journal of Advanced Computing (Vol. 45, pp. 123-134)"
)


#achievement_entry(
  category: "論文",
  title: "The Dynamics of an Asteroid",
  authors: [J. Moriarty, #Me],
  journal: "Journal of Dynamics and Chaos",
  volume: 5,
  number: 4,
  pages: [pp. 333--444],
  year: "2023",
  description: "Journal of Advanced Computing (Vol. 45, pp. 123-134)"
)


= 国際会議（査読付き）


#achievement_entry(
  category: "国際会議",
  title: lorem(5),
  authors: [#Me, M. Hidari, M, Ushiro],
  journal: [Proceedings of #lorem(2)],
  volume: 2022,
  pages: [pp. 200--204],
  year: "2022",
)


= その他

== 講演


#achievement_entry(
  category: "招待講演",
  title: [冬場に食べるアイスクリームのこたつに関する力学について],
  authors: [#私],
  journal: [第23回 冬季食事学会年次大会],
  year: "2032",
)


== 特許

- "人型巨大リーダ・フォロワシステム、およびその制御",~ 特開2044-010101,~ 公知日 2044/03/07
- "人の脳波を利用した小型移動体の遠隔操作システム"~ 特願 2045-332211,~ 出願日 2045/06/20

