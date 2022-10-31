#import "@preview/splash:0.3.0": xcolor

// SOME FUNCTIONS

#let EducationItem(duration,title,place,thesis) = {
  grid(
  columns: 2,
  gutter: 8pt,
  rect(fill: rgb("e4e5ea"),width:100%)[#align(left, text(weight: "black")[#title]) ],
  [#align(right, rect(fill: xcolor.dandelion)[#duration])] ,
  [#align(left,text(style:"italic")[#place])] ,
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
    [#link("mailto:yaraslau.tamashevich@gmail.com")[yaraslau.tamashevich\@gmail.com]],
    [Github : #link("https://github.com/Yaraslaut")[Yaraslaut]],
    [Linkedin : #link("https://www.linkedin.com/in/yaraslau-tamashevich/")[yaraslau-tamashevich]]
)

#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)
#set align(left)
= Symmary
I am a physicist specializing in theoretical physics, currently pursuing my Ph.D. in optics. With a strong background in the field, I combine theory and numerical calculations to study the light-matter interaction.

#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)
= Education
#EducationItem()[
  2015-2020][
  B.Sc. in Physics][
  Belarusian State University, Minsk, Belarus][
  Passed with GPA: #text(weight: "bold")[8.3/10]. Thesis: #text(style:"italic")[Analysis of the efficiency of quantum repeaters based on elimination measurements]
  ]
#EducationItem()[
  2021-ongoing][
  Ph.D. in Physics][
  Tampere University, Tampere, Finland][
  Theoretical Optics and Photonics group
  ]
#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)

= Work Experience
#EducationItem()[
  Feb 2019 - Dec 2020][
  Algorithm developer][
  EMC Lab, BSUIR, Minsk, Belarus][
  I have beein involved in the design and implemntation of algorithnms for EMC problems. As well was helping developers with little knowledge in physics.
  ]

#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)
= Skills
#set list(marker: [--])
- Knowledge of a variety of programming languages including C++, Julia, Python, Mathematica.
- Strong knowledge in physics and mathematics with a theoretical bent.

#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)
= Hobbies and interests

#set list(marker: [•])
- I contribute to terminal emulator #link("https://github.com/contour-terminal/contour")[Contour] which I use daily, I especially enjoy the sixel support, thanks to which I have no need to leave the terminal when making plots of any kind.
- I have a small pet project #link("https://github.com/Yaraslaut/prop")[Prop] 2D FDTD solver of Maxwell's equations, it can utilize both CPU and GPU for calculations, while the math part is written in C++, Python wrapper also exist to give users easy access to the software.


#box(width: 40em, height: 0.2em, fill: xcolor.dandelion)
#bibliography("list.bib",title: "List of publications")
#cite("tsyanenka2020computationally", "tamashevich2022inhomogeneous","robson2021path","tamashevich2022nonlinear","tamashevich2023two")
