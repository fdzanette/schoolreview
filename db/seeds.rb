
#School.destroy_all


puts 'Creating Schools...'
  school1 = School.new(
    name:    " Colégio Anglo Morumbi",
    address: "Avenida Marechal Juarez Távora, 570 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837135/AngloMorumbi.jpg",
  )
  school1.save!

  school2 = School.new(
    name:    "Colégio Albert Sabin",
    address: "Avenida Darcy Reis, 1901 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837130/ASabin.gif",
  )
  school2.save!

  school3 = School.new(
    name:    "All Together Bilingual School",
    address: "Avenida Rebouças, 2320 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837130/AllTogether.jpg",
  )
  school3.save!

  school4 = School.new(
    name:    "Colégio Assunção",
    address: "Alameda Lorena, 665 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837128/Assun%C3%A7%C3%A3o.jpg",
  )
  school4.save!

  school5 = School.new(
    name:    "Colégio Dante Alighieri",
    address: "Alameda Jaú, 1061 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837127/Dante.jpg",
  )
  school5.save!

  school6 = School.new(
    name:    "Colégio Decisão",
    address: "Rua Antônio Gil, 904 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837128/Decis%C3%A3o.jpg",
  )
  school6.save!

  school7 = School.new(
    name:    "Colégio dos Santos Anjos",
    address: "Avenida Iraí, 1330 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837131/SantosAnjos.jpg",
  )
  school7.save!

  school8 = School.new(
    name:    "Colégio Equipe",
    address: "Rua São Vicente de Paula, 374 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837131/Equipe.jpg",
  )
  school8.save!

  school9 = School.new(
    name:    "Colégio Franciscano Pio XII",
    address: "Rua Colégio Pio XII, 233 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837135/PioXII.jpg",
  )
  school9.save!

  school10 = School.new(
    name:    "Colégio Franciscano São Miguel Arcanjo",
    address: "Rua Campos Novos, 153 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837126/Arcanjo.jpg",
  )
  school10.save!

  school11 = School.new(
    name:    "Colégio Henrique I",
    address: "Rua Miguel Gonçalves Correia, 415 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837125/Henrique1.jpg",
  )
  school11.save!

  school12 = School.new(
    name:    "Colégio Itatiaia - Morumbi",
    address: "Rua Custódio de Oliveira, 310 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837125/Itatiaia.jpg",
  )
  school12.save!

  school13 = School.new(
    name:    "Colégio Itatiaia - Moema",
    address: "Avenida Jandira, 512 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837125/Itatiaia.jpg",
  )
  school13.save!

  school14 = School.new(
    name:    "Colégio Madre Cabrini",
    address: "Rua Madre Cabrini, 36 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837126/Madre_Cabrini.jpg",
  )
  school14.save!

  school15 = School.new(
    name:    "Colégio Maria Imaculada",
    address: "Avenida Bernardino de Campos, 79 - São Paulo",
    city: "São Paulo",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531837126/MariaImaculadaSp.jpg",
  )
  school15.save!


puts 'Finished!'
