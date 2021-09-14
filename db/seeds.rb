# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Card.destroy_all


puts "begin seed"

headers = {"Authorization": Rails.application.credentials[:pexels][:access_code]}
# binding.pry
response = RestClient.get( "https://api.pexels.com/v1/search?query=people", headers)
# binding.pry
response_body = JSON.parse(response.body) 

response_body["photos"].each do |photo| 
    Card.create({
    image_front: photo["url"],
    image_back: "https://assets.hongkiat.com/uploads/unique-playing-cards/glitch-back.jpg",
    photographer: photo["photographer"],
    avg_color: photo["avg_color"]
})

puts "end seed"
end