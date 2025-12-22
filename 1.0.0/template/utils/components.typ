#import "@preview/fontawesome:0.6.0": *

#let icon(color, icon) = text(fill: color)[#icon]

#let vbar(color) = text(fill: color)[#h(1.5em)|#h(1.5em)]

#let header(color, data) = {
  grid(
    columns: (2fr, 1fr),
    align: center + horizon,
    column-gutter: 0em,
    grid(
      columns: 1,
      rows: (auto, 1.3em, auto, 0.6em, auto, 1em, auto),
      text(size: 23pt, weight: "bold")[#smallcaps(data.name) #smallcaps(data.last-name-1) #smallcaps(data.last-name-2)],
      [],
      text(size: 12pt)[#icon(color, fa-location-dot()) #data.city / #data.country #vbar(color) #icon(color, fa-phone()) #link("tel:" + data.phone-number)],
      [],
      text(size: 12pt)[#icon(color, fa-inbox()) #link("mailto:" + data.email)],
      [],
      text(size: 12pt)[#icon(color, fa-github()) #data.github #vbar(color) #icon(color, fa-linkedin()) #data.linkedin #vbar(color) #icon(color, fa-link()) #data.webpage],
    ),
    grid.cell(rowspan: 1, box(width: 4cm, height: 4cm, radius: 50%, clip: true, data.photo)),
  )
}

#let section(title: str, color, body) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.4em,
    align: bottom,
    text(size: 14pt, weight: "bold", fill: color)[#smallcaps(title)], line(length: 100%, stroke: color),
  )

  pad(left: 1em)[#body]
}

#let item(title: str, subtitle: str, date: str, color, body) = {
  text(size: 13pt, weight: "bold")[#smallcaps(title)]
  h(1fr)
  text(size: 13pt, fill: color)[#date]
  linebreak()
  pad(left: 0.3em)[#text(size: 12pt)[#smallcaps(subtitle)]]

  pad(left: 0.3em)[#body]
}

#let bullet(color, body) = {
  set list(marker: text(fill: color)[•])
  text()[- #body]
}
