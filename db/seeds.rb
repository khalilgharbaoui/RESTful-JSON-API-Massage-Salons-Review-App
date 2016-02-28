Massagesalon.create!([
  {massage_salon_name: "The best massage 1", massage_salon_description: "greate massge plase", massage_salon_city: "Amsterdam"},
  {massage_salon_name: "The best massage 2", massage_salon_description: "Thai massage", massage_salon_city: "Rotterdam"},
  {massage_salon_name: "The best massage 3", massage_salon_description: "Chino massage", massage_salon_city: "Utrecht"}
])
Review.create!([
  {reviewer_name: "John Doe", review: "This is greate place", rating: 1, massagesalon_id: 1},
  {reviewer_name: "Jane Doe", review: "this plase sucks", rating: 3, massagesalon_id: 2},
  {reviewer_name: "Ahmed mohammer somalia", review: "waw i like it", rating: 3, massagesalon_id: 3}
])
