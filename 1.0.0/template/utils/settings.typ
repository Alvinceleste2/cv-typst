#let settings(cfg, body) = {
  set document(
    title: cfg.author + " ~ CV",
    author: cfg.author,
    date: auto,
  )
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 1.5cm),
    numbering: "1",
  )
  set par(
    justify: true,
    leading: 0.75em,
    spacing: 1em,
  )
  set text(
    lang: cfg.lang,
    font: "Source Sans Pro",
    size: 12pt,
  )

  body
}
