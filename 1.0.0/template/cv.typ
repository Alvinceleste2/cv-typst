#import "utils/settings.typ": settings

// Initial Settings and Config
#let cfg = (color: orange, lang: "en", author: "Author")
#show: settings.with(cfg)

#import "content/" + cfg.lang + ".typ": content

#let data = (
  name: "Name",
  last-name-1: "LastName1",
  last-name-2: "LastName2",
  phone-number: "PhoneNumber",
  email: "Email",
  github: "Github",
  linkedin: "Linkedin",
  webpage: "Webpage",
  photo: image("./assets/photo.jpg"),
  city: if cfg.lang == "en" { "City" }, // else if cfg.lang == "es" { "Ciudad" },
  country: if cfg.lang == "en" { "Country" }, // else if cfg.lang == "es" { "País" },
)

#content(cfg, data)
