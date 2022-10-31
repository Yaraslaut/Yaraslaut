#import "@preview/splash:0.3.0": xcolor

// SOME FUNCTIONS

#let Item(duration,title,place,doc,skills) = {
  grid(
  columns: 2,
  gutter: 8pt,
  rect(fill: rgb("e4e5ea"),width:100%)[
             #text(weight: "black")[#title]
             #text(style:"italic")[#place]
  ],
  [#align(right, rect(fill: xcolor.dandelion, width: 100pt)[#align(center)[#duration]])] ,
      [#doc], [],
      [#skills], [],
  )
}

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
I am a theoretical physicist, currently pursuing my Ph.D. in nonlinear optics. I combine theory and numerical calculations to study nonlinear light-matter interaction of different materials. Beyond my academic pursuits, I actively contribute to a few projects that I personally utilize on a daily basis, have some small pet projects that allow me to explore new ideas and continuously expand my knowledge, in the past was working as an algorithm developer in industry to solve real-world problems. I am always open to new opportunities and challenges.

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Skills
#list(
    [Strong knowledge in physics and mathematics],
    [Programming languages: #list(
      [C++ for high performance and desktop applications],
      [Julia for solving differential equations and plotting],
      [Python as a scripting language and user interaction])],
    [Linux user living in terminal and emacs],
    [Other tools: cmake, Qt/QML, git, bash, latex, mathematica, mathcad, slurm, github actions, jira],
)

#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Experience
#Item()[Feb 2019 - Dec 2020][Algorithm developer][EMC Lab, BSUIR, Minsk, Belarus][Development of algorithms for the electromagnetic compatibility  problems for the research and commercial solutions.][skills: #text(weight: "bold")[c++, mathcad, git, jira, latex]]

#Item()[Jan 2021 - Jan 2023][Algorithm developer][Izovac, Minsk, Belarus][Development of algorithms for control of vacuum coating systems.][skills: #text(weight: "bold")[c++, git, mathematica]]


#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Education
#Item()[2015-2020][B.Sc and M.Sc. in Physics][Belarusian State University, Minsk, Belarus][#text(weight: "bold")[
    Theoretical physics and astrophysics department]][
        Thesis: #text(style:"italic")[Analysis of the efficiency of quantum repeaters based on elimination measurements for quantum networks]]

#Item()[2021-present][Ph.D. in Physics][Tampere University, Tampere, Finland][#text(weight: "bold")[Theoretical Optics and Photonics group]][Numerical and analytical calculations of nonlinear optical responses in quantum picture

    skills: #text(weight: "bold")[julia, slurm, c++, git, latex, mathematica]
]


#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
= Open Source Projects
#Item()[Oct 2022 - present][Contour][ Terminal Emulator #link("https://github.com/contour-terminal/contour")[github]][Cross-platform Terminal Emulator written in modern C++ with SIMD acceleration][skills: #text(weight: "bold")[c++, cmake, github, Qt/QML]]


#Item()[Jan 2023 - present][Prop][2D FDTD solver of Maxwell's equations #link("https://github.com/Yaraslaut/prop")[github]][2D FDTD solver with support of parallelisation on CPU and GPU written in C++ and python interface via pybind for user interaction][skills: #text(weight: "bold")[c++, python, cmake, git]]



#box(width: 50em, height: 0.2em, fill: xcolor.dandelion)
#bibliography("list.bib",title: "List of publications")
#cite(<tsyanenka2020computationally>)
#cite(<tamashevich2022inhomogeneous>)
#cite(<robson2021path>)
#cite(<tamashevich2022nonlinear>)
#cite(<tamashevich2023two>)
#cite(<tamashevich2023field>)
