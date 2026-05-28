#let settings(cfg, body) = {
  set document(
    title: cfg.author + " ~ CV",
    author: cfg.author,
    date: auto,
  )
  set page(
    paper: "a4",
    margin: (x: 2cm, top: 1cm, bottom: 2cm),
    numbering: "1",
  )
  set par(
    justify: true,
    leading: 0.6em,
    spacing: 0.7em,
  )
  set text(
    lang: cfg.lang,
    font: "Source Sans Pro",
    size: 10.5pt,
  )

  body
}

// THEME SETTINGS

#let primary-color = orange // Used for headings and bullets
#let url-color = blue // Used for links and urls inside the document. Should be used with #color-link()
