# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create ([
	{name: "elise", firstname: "Elise", lastname: "Barnes", email: "elise@gmail.com", password: "password"},
	{name: "veronica", firstname: "Veronica", lastname: "Martinez", email: "veronica@gmail.com", password: "password"}
])

Boat.create ([
	{name: "First Boat", container_amount: 10000, location: "China", company_id: 1},
	{name: "Second Boat", container_amount: 15000, location: "New York", company_id: 2}
])

Job.create ([
	{name: "Toy Delivery", description: "Large toy delivery from China to Los Angeles estimating a total cost of $1,500 with 8,000 containers", origin: "China", destination: "Los Angeles", cost: 1500, containers: 8000, company_id: 1},
	{name: "Clothes Delivery", description: "Delivering 14,000 containers of clothes from Italy to New York, cost is $2,000", origin: "Italy", destination: "New York", cost: 2000, containers: 14000, company_id: 2}
])

BoatJob.create ([
	{boat_id: 1, job_id: 1},
	{boat_id: 2, job_id: 2}
])