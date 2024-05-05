#import "@preview/splash:0.3.0": xcolor

// SOME FUNCTIONS

#let Item(duration,title,place,thesis) = {
  grid(
  columns: 2,
  gutter: 8pt,
  rect(fill: rgb("e4e5ea"),width:100%)[
             #text(weight: "black")[#title]
             #text(style:"italic")[#place]
  ],
  [#align(right, rect(fill: xcolor.dandelion, width: 100pt)[#align(center)[#duration]])] ,
  [] ,
  [],
  [#par(first-line-indent: 1em,justify: true)[#thesis]],
)}

#let WorkExperienceItem(duration,title,place,description) = {
  grid(
  columns: 2,
  gutter: 8pt,
  rect(fill: rgb("e4e5ea"),width:100%)[#align(left, text(weight: "black")[#title]) ],
  [#align(right, rect(fill: xcolor.dandelion)[#duration])] ,
  [#align(left,text(style:"italic")[#place])] ,
  [],
  [#par(first-line-indent: 1em,justify: true)[#description]],
)}


// GLOBAL SETTINGS
#set par(
  justify: true,
  leading: 8pt,
)

#set page(
     paper: "a4",
     margin: (x: 50pt, y: 40pt),
)

#set text(size: 10pt)

#show link : name => text(fill: blue)[#name]

// START OF CV
#align(center,text(20pt)[Yaraslau Tamashevich])
#grid(
    rows: 1,
    columns: 4,
    column-gutter: 10pt,
    [Mail: #link("mailto:yaraslau.tamashevich@gmail.com")[yaraslau.tamashevich\@gmail.com]],
    [Github : #link("https://github.com/Yaraslaut")[Yaraslaut]],
    [Linkedin : #link("https://www.linkedin.com/in/yaraslau-tamashevich/")[yaraslau-tamashevich]]
)

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
#set align(left)
= Summary
I am a physicist specializing in theoretical physics, currently pursuing my Ph.D. in nonlinear optics. I combine theory and numerical calculations to study the light-matter interaction of different materials. Beyond my academic pursuits, I actively contribute to a few projects that I personally utilize on a daily basis and have some small pet projects that allow me to explore new ideas and continuously expand my knowledge.

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Skills
#list(
    [Strong knowledge in physics, mathematics and computer science],
    [Programming languages: #list(
      [C++ 14/17/20 standards (6 years)],
      [Julia (4 years)], 
      [Python (7 years)])],
    [ Daily driving linux for 5 years],
    [Other tools: cmake, Qt, git, bash, latex, typst, wolfram mathematica, mathcad, slurm, github actions],
)

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Education
#Item()[
  2015-2020][
  M.Sc. in Physics][
  Belarusian State University, Minsk, Belarus][
#list(
[Theoretical physics and astrophysics department],
[Thesis: #text(style:"italic")[Analysis of the efficiency of quantum repeaters based on elimination measurements]],
)
]

#Item()[
  2021-present][
  Ph.D. in Physics][
  Tampere University, Tampere, Finland][
  Theoretical Optics and Photonics group
#list(
  [Solved a tremendous number of differential equations with Julia both local and on cluster],
  )
  ]

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Experience
#Item()[
  Feb 2019 - Dec 2020][
  Algorithm developer][
  EMC Lab, BSUIR, Minsk, Belarus][
#list(
    [
    Implementation and development of computation algorithms for the electromagnetic compatibility  problems for both research and software solutions.
    ],
)
  ]

#Item()[
  Jan 2021 - Jan 2023][
  Algorithm developer][
  Izovac, Minsk, Belarus][
#list(
    [
    Development of algorithms for vacuum coatings equipment.
    ],
)
  ]


#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Projects
#Item()[
  Oct 2022 - present][
  Contour][ Terminal Emulator #link("https://github.com/contour-terminal/contour")[Link]][
  #list(
    [Partially transfered GUI part of application from QtWidget to QML],
    [Update of configuration loading],
    )
]

#Item()[
  Jan 2023 - present][
  Prop][ 2D FDTD solver of Maxwell's equations #link("https://github.com/Yaraslaut/prop")[Link]][
  #list(
    [Implemented 2D FDTD solver with C++ backend and python interface via pybind],
    [Calculations can be performed on both CPU and GPU],
    )
  ]



#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
#bibliography("list.bib",title: "List of publications")
#cite(<tsyanenka2020computationally>)
#cite(<tamashevich2022inhomogeneous>)
#cite(<robson2021path>)
#cite(<tamashevich2022nonlinear>)
#cite(<tamashevich2023two>)
#cite(<tamashevich2023field>)
