#import "../utils/components.typ": *

#let content(cfg, data) = {
  header(color: cfg.color, data: data)

  section(title: "Summary", color: cfg.color)[
    Highly motivated and detail-oriented feline professional with exceptional multitasking capabilities and proven track record in audio design and competitive gaming. Known for impeccable focus during critical moments, superior reflexes, and ability to remain calm under pressure. Passionate about innovative problem-solving and maintaining optimal performance in high-stress environments. Seeking opportunities to leverage specialized skills in dynamic and fast-paced organizations.
  ]

  section(title: "Education", color: cfg.color)[
    #item(title: "M.S. In Competitive Gaming & Esports Management", subtitle: "Paw State University", date: "2020-2022", color: cfg.color)[
      #bullet(color: cfg.color)[
        Focused on reaction time optimization and strategic gameplay mechanics
      ]
      #bullet(color: cfg.color)[
        Thesis: "Precision in Motion: Advanced Techniques for High-Speed Performance"
      ]
    ]
    #item(title: "B.S. In Advanced Audio Engineering", subtitle: "Whisker Institute Of Technology", date: "2018-2020", color: cfg.color)[
      #bullet(color: cfg.color)[
        Specialized in detection of ultrasonic frequencies and environmental sound analysis
      ]
      #bullet(color: cfg.color)[
        Graduated with honors in spatial awareness and acoustic perception
      ]
    ]
  ]

  section(title: "Experience", color: cfg.color)[
    #item(title: "Professional Gaming Streamer & Content Creator", subtitle: "Gaming Headquarters Inc.", date: "2019 - Present", color: cfg.color)[
      #bullet(color: cfg.color)[
        Maintain consistent 8+ hour daily streaming schedule with high audience engagement rates
      ]
      #bullet(color: cfg.color)[
        Demonstrate advanced reflexes and tactical decision-making in competitive gaming scenarios
      ]
      #bullet(color: cfg.color)[
        Manage multi-platform presence and community interaction across digital channels
      ]
    ]
  ]

  section(title: "Skills", color: cfg.color)[
    #skills(color: cfg.color, skills: (
      skill([Gaming Platforms], [Playstation #vbar(cfg.color, 0.2em) Xbox #vbar(cfg.color, 0.2em) Nintendo Switch]),
      skill([Streaming Software], [OBS Studio #vbar(cfg.color, 0.2em) Twitch Studio]),
      skill([Content Creation], [Video Editing #vbar(cfg.color, 0.2em) Thumbnail Design]),
    ))
  ]
}
