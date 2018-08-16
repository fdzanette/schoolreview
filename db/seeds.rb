
#School.destroy_all


puts 'Creating Schools...'
  school1 = School.new(
    name:    "Colégio Sarte COC",
    address: "Rua João Varela, 184 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339505/Sarte.jpg",
  )
  school1.save!

  school2 = School.new(
    name:    "Colégio 2 de Julho",
    address: "Av. Leovigildo Filgueiras, 81  - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339553/2dejulho.jpg",
  )
  school2.save!

  school3 = School.new(
    name:    "Colégio Anchieta",
    address: "Praça Padre Anchieta, 126 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339516/AnchietaSsa.jpg",
  )
  school3.save!

  school4 = School.new(
    name:    "Colégio Antônio Vieira",
    address: "Av. Leovigildo Filgueiras, 683 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339521/ColegioAntonioVieira.jpg",
  )
  school4.save!

  school5 = School.new(
    name:    "Colégio Integral",
    address: "Rua Fernando Menezes de Goes, 570 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339514/Integral.jpg",
  )
  school5.save!

  school6 = School.new(
    name:    "Colégio Gregor Mendel",
    address: "Rua Magno Valente, 571 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339517/Mendel.jpg",
  )
  school6.save!

  school7 = School.new(
    name:    "Colégio Módulo",
    address: "Av. Prof. Magalhães Neto, 1177 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339520/Modulo.jpg",
  )
  school7.save!

  school8 = School.new(
    name:    "Colégio São Paulo",
    address: "Rua Luís Portela da Silva, 628  - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339513/S%C3%A3oPaulo.jpg",
  )
  school8.save!

  school9 = School.new(
    name:    "Escola Pan Americana da Bahia",
    address: "Av. Tamburugy, SN - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339509/Panamericano.jpg",
  )
  school9.save!

  school10 = School.new(
    name:    "Instituto Social Da Bahia Isba",
    address: "Rua Macapá, 128 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339517/ISBA.jpg",
  )
  school10.save!

  school11 = School.new(
    name:    "Colegio Candido Portinari",
    address: "Rua Adelaíde Fernandes da Costa, 487 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339505/Portinari.webp",
  )
  school11.save!

  school12 = School.new(
    name:    "Colégio Oficina",
    address: "Rua Miguel Navarro Y Cañizares, 423 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339521/Oficina.jpg",
  )
  school12.save!

  school13 = School.new(
    name:    "Colégio Nossa Senhora da Luz",
    address: "Rua Ceará, 852 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339515/NossasraLuz.jpg",
  )
  school13.save!

  school14 = School.new(
    name:    "Colégio Anglo-Brasileiro",
    address: "Rua do Mangalô, 156 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339504/Anglo-brasileiro.jpg",
  )
  school14.save!

  school15 = School.new(
    name:    "Colégio Salesiano do Salvador",
    address: "​Praça Conselheiro Almeida Couto, 374 - Salvador",
    city: "Salvador",
    photo: "http://res.cloudinary.com/dmcyzy6ik/image/upload/v1534339520/colegio-salesiano.jpg",
  )
  school15.save!


puts 'Finished!'
