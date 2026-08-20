// ============================================================
// DESIGN SYSTEM
// ============================================================
// Palette: deep photonics-blue for structure, warm amber as the
// single accent, warm neutral greys for secondary text/hairlines.
#let ink = rgb("1d2b3a")       // primary heading / name
#let ink-soft = rgb("3d4a58")  // body text
#let muted = rgb("6b7280")     // secondary text (places, meta)
#let hairline = rgb("d8dce1")  // rules, separators
#let accent = rgb("b3762c")    // warm amber accent (links, dates)
#let accent-soft = rgb("f4ecdf") // accent tint for tag backgrounds
#let paper = rgb("ffffff")

// Only fonts embedded in the Typst compiler itself are used, so
// this renders identically everywhere — no bundled font files,
// no dependency on what's installed on the machine or CI runner.
#let serif = "New Computer Modern"
#let mono = "DejaVu Sans Mono"

// ============================================================
// LAYOUT PRIMITIVES
// ============================================================

// A thin horizontal rule used between major sections.
#let rule() = line(length: 100%, stroke: 0.6pt + hairline)

// Section heading: small-caps-style label, letter-spaced, accent rule beneath.
#let section(title) = {
  v(16pt)
  text(size: 10.5pt, weight: "bold", fill: ink, tracking: 1.6pt)[#upper(title)]
  v(3pt)
  line(length: 100%, stroke: 1.1pt + accent)
  v(9pt)
}

// A skill tag rendered in the mono face — a small nod to the
// subject's day-to-day medium, used only for skill/tool lists.
#let tag(body) = text(font: mono, size: 8pt, fill: ink-soft)[#body]

// A single CV entry: title/place on the left, date on the right,
// then a description line and an optional skills line.
#let Item(duration, title, place, doc, skills: none) = {
  grid(
    columns: (1fr, auto),
    align(left)[
      #text(weight: "bold", size: 10.5pt, fill: ink)[#title]
      #if place != none and place != [] [ #text(fill: muted, style: "italic", size: 9.5pt)[#sym.dot.c #place]]
    ],
    align(right)[#text(font: mono, size: 8pt, fill: accent, tracking: 0pt)[#duration]],
  )
  v(3pt)
  block(above: 0pt, below: 0pt)[#text(size: 9.3pt, fill: ink-soft)[#doc]]
  if skills != none {
    v(3pt)
    [#text(size: 8.3pt, fill: muted)[Skills ]#tag(skills)]
  }
  v(11pt)
}

// ============================================================
// GLOBAL SETTINGS
// ============================================================
#set page(
  paper: "a4",
  margin: (x: 46pt, y: 38pt),
)
#set text(font: serif, size: 10pt, fill: ink-soft, lang: "en")
#set par(justify: true, leading: 6.2pt)
#show link: name => text(fill: accent)[#name]
#set list(marker: text(fill: accent)[•], indent: 2pt)

// ============================================================
// HEADER
// ============================================================
#text(size: 25pt, weight: "bold", fill: ink)[Yaraslau Tamashevich]
#v(2pt)
#text(size: 10.5pt, fill: muted, tracking: 1pt, style: "italic")[Software Developer #sym.dot.c Ph.D. in Physics]
#v(8pt)
#text(font: mono, size: 8.3pt, fill: ink-soft)[
  #link("mailto:mail@yaraslau.com")[mail\@yaraslau.com] #text(fill: hairline)[ #sym.bar.v ]
  #link("https://github.com/Yaraslaut")[github.com/Yaraslaut] #text(fill: hairline)[ #sym.bar.v ]
  #link("https://www.linkedin.com/in/yaraslau-tamashevich/")[linkedin.com/in/yaraslau-tamashevich]
]
#v(2pt)
#rule()

// ============================================================
// SUMMARY
// ============================================================
#section[Summary]
I am a theoretical physicist turned software developer, holding a Ph.D. in nonlinear optics and now working as a Software Developer building C++ libraries and tools. I combine a strong theoretical background with practical software engineering to design and implement high-performance, type-safe C++ libraries. Beyond my day job, I contribute to open-source projects I personally rely on, run small pet projects to explore new ideas, and occasionally speak at C++ meetups. I am always open to new opportunities and challenges.

// ============================================================
// SKILLS
// ============================================================
#section[Skills]
#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 5pt,
  text(weight: "bold", size: 9.5pt, fill: ink)[Languages], text(size: 9.5pt)[C++ (high-performance & desktop apps), Julia (numerics & plotting), Python (scripting & tooling)],
  text(weight: "bold", size: 9.5pt, fill: ink)[Platform], text(size: 9.5pt)[Linux, living in the terminal and Emacs],
  text(weight: "bold", size: 9.5pt, fill: ink)[Tools], text(size: 9.5pt)[cmake, Qt/QML, SQL/ODBC, git, bash, LaTeX, Mathematica, MathCAD, Slurm, GitHub Actions, Jira],
  text(weight: "bold", size: 9.5pt, fill: ink)[Physics], text(size: 9.5pt)[Strong background in theoretical physics and mathematics],
)

// ============================================================
// EXPERIENCE
// ============================================================
#section[Experience]
#Item(
  "Jan 2025 – present", "Software Developer", "Lastrada, Berlin, Germany",
  [Development of C++ libraries and tools, including #link("https://github.com/LASTRADA-Software/Lightweight")[Lightweight], a fast and type-safe ODBC database access library, and #link("https://github.com/LASTRADA-Software/morph")[morph], a header-only library for typed asynchronous UI/business-object binding.],
  skills: [C++, CMake, git, SQL, GitHub Actions],
)
#Item(
  "Jan 2021 – Jan 2023", "Algorithm Developer", "Izovac, Minsk, Belarus",
  [Development of algorithms for control of vacuum coating systems.],
  skills: [C++, git, Mathematica],
)
#Item(
  "Feb 2019 – Dec 2020", "Algorithm Developer", "EMC Lab, BSUIR, Minsk, Belarus",
  [Development of algorithms for electromagnetic compatibility problems, for research and commercial solutions.],
  skills: [C++, MathCAD, git, Jira, LaTeX],
)

// ============================================================
// EDUCATION
// ============================================================
#section[Education]
#Item(
  "2021 – 2025", "Ph.D. in Physics", "Tampere University, Tampere, Finland",
  [
    Theoretical Optics and Photonics group. Numerical and analytical calculations of nonlinear optical responses in the quantum picture. \
    Thesis: #text(style: "italic")[Structured Light-Matter Interaction: Twisted Photons in Graphene]
  ],
  skills: [Julia, Slurm, C++, git, LaTeX, Mathematica],
)
#Item(
  "2015 – 2020", "B.Sc. and M.Sc. in Physics", "Belarusian State University, Minsk, Belarus",
  [
    Theoretical Physics and Astrophysics department. \
    Thesis: #text(style: "italic")[Analysis of the efficiency of quantum repeaters based on elimination measurements for quantum networks]
  ],
)

// ============================================================
// OPEN SOURCE PROJECTS
// ============================================================
#section[Open Source Projects]
#Item(
  "Jan 2025 – present", "Lightweight", [ODBC database access library #sym.dot.c #link("https://github.com/LASTRADA-Software/Lightweight")[github]],
  [Thin, fast, type-safe ODBC API wrapper for modern C++ with a data-mapper/ORM-style API, query builder, schema migrations, and async coroutine support, targeting Microsoft SQL Server, PostgreSQL, and SQLite.],
  skills: [C++, CMake, SQL, GitHub Actions],
)
#Item(
  "Jan 2025 – present", "morph", [Typed UI/business-object bridge #sym.dot.c #link("https://github.com/LASTRADA-Software/morph")[github]],
  [Header-only C++23 library providing a typed, asynchronous bridge between UI and business-object models, so domain models run identically in-process or over the network.],
  skills: [C++, JSON, Qt/QML],
)
#Item(
  "Jan 2023 – present", "Prop", [2D FDTD solver of Maxwell's equations #sym.dot.c #link("https://github.com/Yaraslaut/prop")[github]],
  [2D FDTD solver with CPU/GPU parallelisation, written in C++ with a Python interface via pybind11.],
  skills: [C++, Python, CMake, git],
)
#Item(
  "Oct 2022 – present", "Contour", [Terminal emulator #sym.dot.c #link("https://github.com/contour-terminal/contour")[github]],
  [Cross-platform terminal emulator written in modern C++ with SIMD acceleration.],
  skills: [C++, CMake, GitHub, Qt/QML],
)

// ============================================================
// TALKS
// ============================================================
#section[Talks]
#Item(
  "Jan 2026", "Lightweight: fast yet type safe database access", "Berlin C++ Meetup, Berlin, Germany",
  [Presentation of the Lightweight C++ SQL library covering its API design, performance, type safety, and plans for C++26.],
  skills: [C++, SQL],
)
#Item(
  "Oct 2024", "Reflection: Introduction and Examples", "C++ Helsinki Meetup, Helsinki, Finland",
  [Introduction to the C++ reflection proposal (P2996) with practical integration examples.],
  skills: [C++],
)

// ============================================================
// PUBLICATIONS
// ============================================================
#section[Publications]
#set text(size: 8.7pt)
#bibliography("list.bib", title: none, style: "ieee", full: true)
