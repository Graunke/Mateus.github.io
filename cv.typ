#let name = "Mateus Barroso"
#let accent-color = rgb("#26428b")
#let spacing = 1 cm


#set document(author: name, title: name)

#set page(margin: spacing)

#set text(
  lang: "en",
  font: "New Computer Modern",
  size: 10pt,
  // Disable ligatures so ATS systems do not get confused when parsing fonts.
  ligatures: false
)

#set par(justify: true)


#show link: underline
#show link: set text(fill: accent-color)

#show heading: set text(fill: accent-color)

#show heading.where(level: 1): set text(weight: 700, size: 2.5em)

#show heading.where(level: 2): it => {
  pad(top: 0em, bottom: -1em, smallcaps(it.body))
  line(length: 100%, stroke: 1pt)
}


#grid(
  columns: (1fr, auto),
  gutter: spacing,
  [
    #[
      #set align(center)

      = #name

      #let my-link(protocol, destination, body: none) = link(
        protocol + destination,
        if body != none { body } else { destination }
      )
      #(
        box("+55 41 9 9886 3007"),
        box("Ingolstadt, Bayern, Germany"),
        my-link("mailto:", "mateus.barroso1311@gmail.com"),
        my-link("https://", "github.com/Graunke"),
        my-link("https://", "linkedin.com/in/mateus-uriel/"),
      ).join(" | ")
    ]

    == Summary

    AI/Machine Learning engineer pursuing a Master's double degree in Electrical and Automotive
    Engineering, and fascinated by how computers work.  --- I'd be
    very happy to work in a team of talented individuals whose interests line up with mine.

  ],
  box(clip: true, radius: 50%, image("public/me.jpg", width: 18em))
)


== Skills

#strong[Programming languages]:  C++, Python, JavaScript, TypeScript \
#strong[Frontend]: React, React Native\
#strong[Backend]:  Flask \
#strong[Databases]: SQL, Oracle \
#strong[Data processing]: NumPy, Pandas, OpenCV, PyTorch, Tensorflow \
#strong[AI/ML]: Stacking Ensamble Methods, Transformer Based Models, RAG, Time Series Forecasting,  \
#strong[Environment tools]: Linux, Docker, Git, Bash \
#strong[Languages]: Portuguese (native), English (fluent), German (intermediate)

== Experience

#[
  #let job(
    titles: "",
    dates: "",
    company: "",
    location: "",
  ) = [
    #for (title, date) in titles.zip(dates) [
      #strong(title) #h(1fr) #strong(date) \
    ]
    #company #h(1fr) #location \
  ]

  #job(
    titles: (
      [Research Assistant],
    ),
    dates: (
      [April 2026 --- Present],
    ),
    company: [AI Motion - Technische Hochschule Ingolstadt],
    location: [Ingolstadt, Germany],
  )
  - Development of time series forecasting algorithms for reducing the ammount of tests need to calibrat
    a hydrobrake system. This project uses a combination of physics-based models and data-driven models to achieve accurate predictions of the system's behavior,
    which allows to reduce the time and cost of the calibration process.
  - Development of in cabin monitoring system using neuromorphic sensors, spiking neural networks and Reservoir Computing
    for drownsiness detection. This project involves the use of neuromorphic sensors to capture data from the cabin,
    and the development of spiking neural networks and Reservoir Computing models to process this data and detect signs of drownsiness in real-time.
  - Development of a company personal GPT-based assistant for automating the generation of reports and documentation, which allows to save time and reduce the ammount of manual work needed for these tasks.


  #job(
    titles: (
      [Student Assistant],
    ),
    dates: (
      [October 2025 --- April 2026],
    ),
    company: [AI Motion - Technische Hochschule Ingolstadt],
    location: [Ingolstadt, Germany],
  )
  - Development of point cloud processing algorithms for multimodal data processing in sign language recognition.
  - In cabin monitoring system development with VLMs and CNNs for drownsiness detection.

  #job(
    titles: (
      [Data Analyst],
    ),
    dates: (
      [November 2023 --- April 2025],
    ),
    company: [Caterpillar Inc.],
    location: [Campo Largo, Brazil],
  )
  - Analyzed data from shop floor machines to detect anomalies and predict failures.
  - Monitoring of main KPIs of manufacturing and Maintenance processes, such as Overall Equipment Effectiveness (OEE) and Mean Time Between Failures (MTBF).
  - Implementation and automation of data flows and dashboards for data visualization and reporting.
  - improvemento on the data visualization for the Manufacturing Execution System (MES) used in the factory, reducing the time spent by
    operators on when they need to check the machine details and allowing them to avoid mistakes and attend the TAKT time. 
  #job(
    titles: (
      [Manufacturing Engineer Intern],
    ),
    dates: (
      [March 2021 --- November 2023],
    ),
    company: [Caterpillar Inc.],
    location: [Campo Largo, Brazil],
  )
  - In process validation of caterpillar machines' ECU, inclufing ECU flash and Hot test.
  - Work on the implementation of a new type of in process validation inside the  factory,
    which included the use of computer vision algorithm to inscpect the machines' assembly.
  - Automation of data collection using pre-traind CV models at the painting line, which allowed to
    train data-driven models for the prediction of paint quality and the detection of paint defects.
]

== Education

#[
  #let edu(
    institution: "",
    location: "",
    degree: "",
    dates: "",
  ) = [
    #strong(institution) #h(1fr) #strong(location) \
    #degree #h(1fr) #dates
  ]

  #edu(
    institution: [Technische Hochschule Ingolstadt (THI)],
    location: [Ingolstadt, Germany],
    degree: [Master's degree in Automotive Engineering],
    dates: [October 2025 --- Present],
  )

  #edu(
    institution: [Federal University of Paraná (UFPR)],
    location: [Curitiba, Brazil],
    degree: [Master's degree in Electrical Engineering],
    dates: [January 2025 --- Present],
  )

  #edu(
    institution: [Federal University of Paraná (UFPR)],
    location: [Curitiba, Brazil],
    degree: [Bachelor's degree in Electrical Engineering],
    dates: [January 2019 --- december 2023],
  )
  - Machine Learning and Computer Vision 
  - Thesis title: "Development and implementations of a monitoring system using neural networks"
]
