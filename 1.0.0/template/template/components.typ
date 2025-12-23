#import "@preview/fontawesome:0.6.0": *

// MISC
#let icon(color, icon) = text(fill: color)[#icon]
#let vbar(color, size) = text(fill: color, weight: "semibold")[#h(size)|#h(size)]

// HEADER
#let header(color: str, data: list) = {
  grid(
    columns: (2fr, 1fr),
    align: center + horizon,
    column-gutter: 0em,
    grid(
      columns: 1,
      rows: (auto, 1.3em, auto, 0.6em, auto, 1em, auto),
      text(size: 25pt, weight: "bold")[#smallcaps(data.name) #smallcaps(data.last-name-1) #smallcaps(data.last-name-2)],
      [],
      text(size: 12pt)[#icon(color, fa-location-dot()) #data.city / #data.country #vbar(color, 1em) #icon(color, fa-phone()) #link("tel:" + data.phone-number)],
      [],
      text(size: 12pt)[#icon(color, fa-inbox()) #link("mailto:" + data.email)],
      [],
      text(size: 11pt)[
        #icon(color, fa-github()) #link("github.com/" + data.github, data.github) #vbar(color, 1em)
        #icon(color, fa-linkedin()) #link("linkedin.com/" + data.linkedin, data.linkedin) #vbar(color, 1em)
        #icon(color, fa-link()) #link(data.webpage)],
    ),
    grid.cell(rowspan: 1, box(width: 4cm, height: 4cm, radius: 50%, clip: true, data.photo)),
  )
}

// SECTION
#let section(title: str, color: str, body) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.4em,
    align: bottom,
    text(size: 12pt, weight: "bold", fill: color)[#smallcaps(title)], line(length: 100%, stroke: color),
  )
  pad(left: 1em)[#body]
}

// ITEMS
#let item(title: str, subtitle: str, date: str, color: str, body) = {
  text(size: 11pt, weight: "bold")[#smallcaps(title)]
  h(1fr)
  text(size: 10.5pt, fill: color)[_ #date _]
  linebreak()
  pad(left: 0.5em)[#text(size: 10.5pt)[#smallcaps(subtitle)]]
  pad(left: 0.5em)[#body]
  v(0.4em)
}

#let bullet(color: str, body) = {
  set list(marker: text(fill: color)[•])
  text()[- #body]
}

// SKILL
#let skills(color: str, skills: array) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 1em,
    align: (right, left),
    ..skills.flatten(),
  )
}

#let skill(title, desc) = {
  (text(weight: "bold", size: 10pt)[#smallcaps(title)], text(size: 10.5pt)[#desc])
}
