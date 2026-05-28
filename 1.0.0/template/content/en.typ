#import "../template/components.typ": *

#let content(data) = {
  header(data: data)

  section(title: "Summary")[
    Highly motivated and detail-oriented feline professional with exceptional multitasking capabilities and proven track record in audio design and competitive gaming. Known for impeccable focus during critical moments, superior reflexes, and ability to remain calm under pressure. Passionate about innovative problem-solving and maintaining optimal performance in high-stress environments. Seeking opportunities to leverage specialized skills in dynamic and fast-paced organizations.
  ]

  section(title: "Education")[
    #item(
      title: "M.S. In Competitive Gaming & Esports Management",
      subtitle: "Paw State University",
      date: "2020-2022",
    )[
      #bullet()[
        Focused on reaction time optimization and strategic gameplay mechanics
      ]
      #bullet()[
        Thesis: "Precision in Motion: Advanced Techniques for High-Speed Performance"
      ]
    ]
    #item(
      title: "B.S. In Advanced Audio Engineering",
      subtitle: "Whisker Institute Of Technology",
      date: "2018-2020",
    )[
      #bullet()[
        Specialized in detection of ultrasonic frequencies and environmental sound analysis
      ]
      #bullet()[
        Graduated with honors in spatial awareness and acoustic perception
      ]
    ]
  ]

  section(title: "Experience")[
    #item(
      title: "Professional Gaming Streamer & Content Creator",
      subtitle: "Gaming Headquarters Inc.",
      date: "2019 - Present",
    )[
      #bullet()[
        Maintain consistent 8+ hour daily streaming schedule with high audience engagement rates
      ]
      #bullet()[
        Demonstrate advanced reflexes and tactical decision-making in competitive gaming scenarios
      ]
      #bullet()[
        Manage multi-platform presence and community interaction across digital channels
      ]
    ]
  ]

  section(title: "Skills")[
    #skills(skills: (
      skill(
        [Gaming Platforms],
        [Playstation #vbar(0.2em) Xbox #vbar(0.2em) Nintendo Switch],
      ),
      skill(
        [Streaming Software],
        [OBS Studio #vbar(0.2em) Twitch Studio],
      ),
      skill(
        [Content Creation],
        [Video Editing #vbar(0.2em) Thumbnail Design],
      ),
    ))
  ]
}
