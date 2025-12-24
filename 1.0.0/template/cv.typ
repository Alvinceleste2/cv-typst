#import "template/settings.typ": settings

// Initial Settings and Config
#let cfg = (color: orange, lang: "en", author: "Author")
#show: settings.with(cfg)

#import "content/" + cfg.lang + ".typ": content

#let data = (
  name: "Whisker",
  last-name-1: "Felix",
  last-name-2: "Monroe",
  phone-number: "+33 123456789",
  email: "whisker.felix@gaming.com",
  github: "whiskerfelix",
  linkedin: "whiskerfelix",
  webpage: "whiskerfelix.com",
  photo: image("./assets/photo.jpg"),
  // The following lines can be changed to assess several languages differences. See some examples below
  city: if cfg.lang == "en" { "Madrid" }, // else if cfg.lang == "es" { "Ciudad" },
  country: if cfg.lang == "en" { "Spain" }, // else if cfg.lang == "es" { "País" },
)

#content(cfg, data)
