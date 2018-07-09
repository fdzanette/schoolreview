# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all


puts 'Creating Schools...'
  school1 = School.new(
    name:    "Colégio Mãe de Deus",
    address: "Rua Dr. Mário Totta, 1252",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143571/MaeDeDeus.jpg",
  )
  school1.save!

  school2 = School.new(
    name:    "Colégio Adventista",
    address: "Rua Camaquã, 534",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143562/Adventista.jpg",
  )
  school2.save!

  school3 = School.new(
    name:    "Colegio Marista Ipanema",
    address: "Av. Coronel Marcos, 1959",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143564/MaristaIpanema.jpg",
  )
  school3.save!

  school4 = School.new(
    name:    "Colégio Leonardo Da Vinci",
    address: "Av. Icaraí, 1879",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143564/DaVinci.jpg",
  )
  school4.save!

  school5 = School.new(
    name:    "Colégio Anchieta",
    address: "Av. Nilo Peçanha, 1521,",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143573/Anchieta.png",
  )
  school5.save!

  school6 = School.new(
    name:    "Colégio Dom Bosco",
    address: "Rua Eduardo Chartier, 360",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143552/Bosco.jpg",
  )
  school6.save!

  school7 = School.new(
    name:    "Colégio João XXIII",
    address: "Rua Sepé Tiaraju, 1.013",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143560/JoaoXXIII.jpg",
  )
  school7.save!

  school8 = School.new(
    name:    "Colégio Marista Rosário",
    address: "Praça Dom Sebastião, 2",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143562/Rosario.jpg",
  )
  school8.save!

  school9 = School.new(
    name:    "Colégio Santa Teresa de Jesus",
    address: "Av. da Cavalhada, 2250",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143571/STJesus.jpg",
  )
  school9.save!

  school10 = School.new(
    name:    "Colégio Santa Inês",
    address: "Av. Protásio Alves, 2493",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143565/StInes.jpg",
  )
  school10.save!

  school11 = School.new(
    name:    "Colégio Nossa Senhora da Glória",
    address: "Av. Prof. Oscar Pereira, 3052",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143560/Gloria.jpg",
  )
  school11.save!

  school12 = School.new(
    name:    "Colégio Metodista Americano",
    address: "Rua Dr. Lauro de Oliveira, 71",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143566/Americano.jpg",
  )
  school12.save!

  school13 = School.new(
    name:    "Colégio Pastor Dohms",
    address: "R. Américo Vespúcio, 483",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143574/domhs1.jpg",
  )
  school13.save!

  school14 = School.new(
    name:    "Colégio Maria Imaculada",
    address: "Av. Padre Cacique, 1028",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143574/Imaculada.jpg",
  )
  school14.save!

  school15 = School.new(
    name:    "Colégio La Salle Dores",
    address: "Rua Riachuelo, 800",
    city: "Porto Alegre",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1531143573/LaSalle.jpg",
  )
  school15.save!


puts 'Finished!'
