#import "@preview/fontawesome:0.6.0": *
#import "./settings.typ": *

#let icon(color: primary-color, icon) = text(fill: color)[#icon]

#let vbar(color: primary-color, spacing: 0.3em) = text(
  fill: color,
  weight: "bold",
)[#h(spacing)|#h(spacing)]

#let color-link(color: primary-color, url, body) = link(url)[#text(
  fill: url-color,
)[#body]]

#let header(data: list) = {
  v(-1cm)
  grid(
    columns: (2fr, 1fr),
    align: center + horizon,
    grid(
      columns: 1,
      rows: (auto, 1.3em, auto, 0.6em, auto, 1em, auto),
      text(size: 25pt, weight: "bold")[#smallcaps(
          data.name,
        ) #smallcaps(
          data.last-name-1,
        ) #smallcaps(data.last-name-2)],
      [],
      text(
        size: 12pt,
      )[#icon(fa-location-dot()) #h(0.1em) #data.city / #data.country #vbar(spacing: 1em) #icon(fa-phone()) #h(0.1em) #link("tel:" + data.phone-number)],
      [],
      text(size: 12pt)[#icon(fa-inbox()) #h(0.1em) #link(
          "mailto:" + data.email,
        )],
      [],
      text(size: 11pt)[
        #icon(fa-github()) #h(0.3em) #color-link(
          "https://github.com/" + data.github,
          data.github,
        ) #vbar(spacing: 1em)
        #icon(fa-linkedin()) #h(0.3em) #color-link(
          "https://linkedin.com/in/" + data.linkedin,
          data.linkedin,
        ) #vbar(spacing: 1em)
        #icon(fa-link()) #h(0.3em) #color-link(
          "https://" + data.webpage,
          data.webpage,
        )],
    ),
    grid.cell(rowspan: 1, box(
      width: 4cm,
      height: 4cm,
      radius: 50%,
      clip: true,
      data.photo,
    )),
  )
}

#let item(title: str, subtitle: str, date: str, body) = {
  block(breakable: false, above: 0.8em, below: 0.9em)[
    #text(size: 1.05em, weight: "bold")[#smallcaps(title)]
    #h(1fr)
    #text(size: 1em, fill: primary-color)[#date]
    #pad(left: 1.5em)[#text(size: 1em)[#smallcaps(subtitle)]]
    #pad(left: 1.5em)[#body]
  ]
}

#let skills(skills: array) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 1em,
    align: (right, left),
    ..skills.flatten(),
  )
}

#let skill(title, desc) = {
  (
    text(weight: "bold", size: 1em)[#smallcaps(title)],
    text(size: 0.95em)[#desc],
  )
}
