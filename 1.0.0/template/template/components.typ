#import "@preview/fontawesome:0.6.0": *

#import "./settings.typ": primary-color, url-color

// MISC
#let icon(color: primary-color, icon) = text(fill: color)[#icon]
#let vbar(color: primary-color, size) = text(
  fill: color,
  weight: "semibold",
)[#h(size)|#h(size)]
#let color-link(color: primary-color, url, body) = link(url)[#text(
  fill: url-color,
)[#body]]

// HEADER
#let header(data: list) = {
  v(-1cm)
  grid(
    columns: (2fr, 1fr),
    align: center + horizon,
    column-gutter: 0em,
    grid(
      columns: 1,
      rows: (auto, 1.3em, auto, 0.6em, auto, 1em, auto),
      text(size: 25pt, weight: "bold")[#smallcaps(data.name) #smallcaps(
          data.last-name-1,
        ) #smallcaps(data.last-name-2)],
      [],
      text(
        size: 12pt,
      )[#icon(fa-location-dot()) #data.city / #data.country #vbar(1em) #icon(fa-phone()) #link("tel:" + data.phone-number)],
      [],
      text(size: 12pt)[#icon(fa-inbox()) #link(
          "mailto:" + data.email,
        )],
      [],
      text(size: 11pt)[
        #icon(fa-github()) #h(0.2em) #color-link(
          "https://github.com/" + data.github,
          data.github,
        ) #vbar(1em)
        #icon(fa-linkedin()) #h(0.2em) #color-link(
          "https://linkedin.com/in/" + data.linkedin,
          data.linkedin,
        ) #vbar(1em)
        #icon(fa-link()) #h(0.2em) #color-link(
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

// SECTION
#let section(title: str, body) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.4em,
    align: bottom,
    text(size: 12pt, weight: "bold", fill: primary-color)[#smallcaps(title)],
    line(length: 100%, stroke: primary-color),
  )
  pad(left: 1em)[#body]
}

// ITEMS
#let item(title: str, subtitle: str, date: str, body) = {
  block(breakable: false)[
    #text(size: 11pt, weight: "bold")[#smallcaps(title)]
    #h(1fr)
    #text(size: 10.5pt, fill: primary-color)[_ #date _]
    #linebreak()
    #pad(left: 0.5em)[#text(size: 10.5pt)[#smallcaps(subtitle)]]
    #pad(left: 0.5em)[#body]
    #v(0.4em)
  ]
}

// BULLET
#let bullet(body) = {
  set list(marker: text(fill: primary-color)[•])
  text(size: 10pt)[- #body]
}

// SKILLS
#let skills(skills: array) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 1em,
    align: (right, left),
    ..skills.flatten(),
  )
}

// SKILL
#let skill(title, desc) = {
  (
    text(weight: "bold", size: 10pt)[#smallcaps(title)],
    text(size: 10.5pt)[#desc],
  )
}
