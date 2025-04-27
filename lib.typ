#let agh(
  titles: (),
  bibliography: none,
  author: [Author],
  supervisor: [Supervisor],
  course: [Course],
  masters: bool,
  body
) = {
  set document(title: titles.join(" "), author: author)
  set page(
    paper: "a4"
  )
  set text(spacing: 3pt)
  set align(center)

  figure(
    image("agh.jpg", width: 15%)
  )

  v(0.5cm)

  text(
    upper("Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie"),
    weight: 900,
    size: 12pt
  )

  v(0cm)

  text(
    "Wydział Elektrotechniki, Automatyki, Informatyki i Inżynierii Biomedycznej",
    weight: 700,
    size: 12pt,
  )

  v(3cm)

  text(
    if masters [Praca dyplomowa] else [Projekt dyplomowy],
    weight: 800,
    size: 16pt,
  )

  v(0cm)

  for c in titles [
    #text(
      c,
      weight: 500,
      size: 16pt,
    )

    #v(0cm)
  ]
    

  align(bottom)[
    #table(
      stroke: (bottom: 0pt, left: 0pt, right: 0pt, top: 0pt),
      align: left,
      columns: 2,
      [Autor pracy:],
      author,
      [Kierunek studiów:],
      course,
      [Opiekun pracy:],
      supervisor,
    )

    #v(3cm)

    #let today = datetime.today()
    Kraków #today.year()
  ]

  pagebreak()

  set page(numbering: "1")

  body
  bibliography
}