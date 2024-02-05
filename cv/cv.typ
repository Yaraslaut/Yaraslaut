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
I am a physicist specializing in theoretical physics, currently pursuing my Ph.D. in nonlinear optics. With a strong background in the field, I combine theory and numerical calculations to study the light-matter interaction of different materials. For example, interaction of graphene with structured light and other materials such as Weyl semimetals of different types. Beyond my academic pursuits, I actively contribute to a few projects that I personally utilize on a daily basis. And have some small pet projects that allow me to explore new ideas and continuously expand my knowledge.

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Skills
#list(
    [Strong knowledge in physics and mathematics],
    [Programming languages: C++, Julia, Python],
    [Other tools: cmake, bash, latex, typst, mathematica, mathcad, slurm],
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
  [Solved a lot of differential equations with Julia both local and on clusters],
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
    Implementation and development of algorithms using Mathcad as the initial tool to implement algorithms, followed by C++ to create the final version for production code. This included unit test coverage and following testing/bug fixes.
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
    )
]

#Item()[
  Jan 2023 - present][
  Prop][ 2D FDTD solver of Maxwell's equations #link("https://github.com/Yaraslaut/prop")[Link]][
  #list(
    [Implemented 2D FDTD solver with c++ backend with python wrapper for better user experince via pybind],
    [Can perform calculations using both CPU and GPU],
    )
  ]

#Item()[
  Dec 2023 - present][
  Endo][ Shell #link("https://github.com/contour-terminal/endo")[Link]][
  #list(
    [Updated project structure to use C++20 modules],
    [I am currently working on a JIT compiler using LLVM.],
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
