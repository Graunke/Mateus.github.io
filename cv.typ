#let name = "Mateus Barroso"
#let accent-color = rgb("#26428b")
#let spacing = 0.8cm


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
        box("+55 41 99886 3007"),
        box("Ingolstadt, Germany"),
        my-link("mailto:", "mateus.barroso1311@gmail.com"),
        my-link("https://", "github.com/Graunke"),
        my-link("https://", "linkedin.com/in/mateus-uriel-graunke-barroso/")
      ).join(" | ")
    ]

    == Summary

  Mechatronics engineer specializing in computer vision and machine learning, 
  currently pursuing a double Master’s in Electrical and Automotive Engineering. 
  Experience in industrial data analysis, time-series forecasting, and driver monitoring systems using deep learning and neuromorphic computing.
  Enthusiastic about applying my skills to solve real-world problems and contribute to innovative projects in the industry.
  I'd be very happy to work in a team of talented individuals whose interests line up with mine.
  
  #linebreak()
  #linebreak()
  #linebreak()

  ],
  align(center, box(
    width: 18em,
    height: 18em,
    clip: true,
    radius: 50%,
    align(center, image("public/me.jpg", width: 18em, height: 18em, fit: "cover")),
  ))
)


== Skills

#strong[Programming languages]:  C++, Python, JavaScript, TypeScript \
#strong[Frontend]: React, React Native\
#strong[Backend]:  Flask \
#strong[Databases]: SQL, Oracle, Snowflake \
#strong[Data processing]: NumPy, Pandas, OpenCV, PyTorch, TensorFlow \
#strong[AI/ML]: Stacking Ensemble Methods, Transformer-based Models, RAG, Time Series Forecasting, Computer Vision \
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
  - Development of time series forecasting algorithms for reducing the amount of tests needed to calibrate
    a hydrobrake system. This project uses a combination of physics-based models and data-driven models to achieve accurate predictions of the system's behavior,
    which reduces the time and cost of the calibration process.
  - Development of an in-cabin monitoring system using neuromorphic sensors, spiking neural networks, and Reservoir Computing
    for drowsiness detection. This project involves the use of neuromorphic sensors to capture data from the cabin,
    and the development of spiking neural networks and Reservoir Computing models to process this data and detect signs of drownsiness in real-time.
  - Development of a company GPT-based assistant for automating the generation of reports and documentation, which helps save time and reduce the amount of manual work needed for these tasks.


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
  - In-cabin monitoring system development with VLMs and CNNs for drowsiness detection.

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
  - Monitoring of key KPIs of manufacturing and maintenance processes, such as Overall Equipment Effectiveness (OEE) and Mean Time Between Failures (MTBF).
  - Implementation and automation of data flows and dashboards for data visualization and reporting.
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
  - In-process validation of Caterpillar machines' ECUs, including ECU flashing and hot testing.
  - Work on the implementation of a new type of in-process validation inside the factory,
    which included the use of a computer vision algorithm to inspect the machines' assembly.
  - Automation of data collection using pre-trained CV models at the painting line, which allowed us to
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
    institution: [Pontifical Catholic University of Paraná (PUCPR)],
    location: [Curitiba, Brazil],
    degree: [Bachelor's degree in Mechatronic Engineering],
    dates: [January 2019 --- December 2023],
  )
  - Machine Learning and Computer Vision 
  - Thesis title: "Development and implementation of a monitoring system using neural networks"
]

== Projects

#[
  #let project(
    title: "",
    description: "",
    url: none,
  ) = [
    #if url != none [
      #link(url)[#strong(title)] #h(1fr) \
    ] else [
      #strong(title) #h(1fr) \
    ]
    #description #h(1fr) 
  ]

#project(
  title: [Time-Series-Transformer-TST-For-Energy-Forecasting],
  description: [Development of a Time Series Transformer (TST) model for energy forecasting, which is a deep learning architecture designed to capture temporal dependencies in time series data. This project involves the implementation and training of the TST model on energy consumption data to predict future energy demand, which can be crucial for optimizing energy generation and distribution.],
  url: "https://github.com/Graunke/Time-Series-Transformer-TST-"
)

#project(
  title: [SEL-for-Energy-Generation-Forecasting],
  description: [Manual development of a Stacking Ensemble Learning (SEL) model for energy generation forecasting, which combines multiple machine learning models to improve the accuracy of predictions. This project involves the selection and training of base models, as well as the implementation of a meta-model to combine their outputs and generate final forecasts.],
  url: "https://github.com/Graunke/SEL-for-Energy-Generation-Forecasting"
)

#project(
  title: [PUCPR Formula SAE Team],
  description: [Head of powertrain of the Formula SAE team, responsible for the development and implementation of the powertrain system of the car.],
  url: "https://www.instagram.com/pucpr_racing/"
)

]

== Qualifications

#let course(
  title: "",
  institution: "",
  description: "",
  date: "",
) = [
  #strong(title) #h(1fr) #strong(date) \
  #institution \
  #description \

]

#course(
  title: [Agile Methodologies],
  date: [2025],
  institution: [Caterpillar Inc.],
  description: [Training on Agile methodologies and practices for software development and project management.]

)

#course(
  title: [Data Science and Machine Learning],
  date: [2024],
  institution: [UFPR],
  description: [Training on data science and machine learning, including generative AI, neural networks, and data analysis using Python and its libraries, such as NumPy, Pandas, PyTorch, and TensorFlow.]

)

#course(
  title: [Six Sigma Green Belt],
  date: [2023],
  institution: [Caterpillar Inc.],
  description: [Training on Six Sigma methodologies and tools for process improvement and quality management.]

)

#course(
  title: [Linear Algebra mentoring],
  date: [2019],
  institution: [PUCPR],
  description: [Mentoring on linear algebra for students of the mechatronic engineering course.]

)