# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all files.."
User.destroy_all
Venue.destroy_all
Collection.destroy_all
Artwork.destroy_all

puts "Creating new files..."
mathilde = User.create!(first_name: "Mathilde", last_name: "Peiffer", address: "4 Good Street, Prahran", is_artist: true, email: "mathilde@hotmail.com", password: "password")
alastair = User.create!(first_name: "Alastair", last_name: "Tooth", address: "10 Nice Street, Richmond", is_artist: true, email: "alastair@hotmail.com", password: "password")
jason = User.create!(first_name: "Jason", last_name: "Jun", address: "8 Wow Street, St Kilda", is_artist: true, email: "jason@hotmail.com", password: "password")
charlie = User.create!(first_name: "Charlie", last_name: "Song", address: "4 Chichon Street, Festi", is_artist: false, email: "charlie@hotmail.com", password: "password")
george = User.create!(first_name: "George", last_name: "Kettle", address: "20 Farm Street, Sydney", is_artist: false, email: "george@hotmail.com", password: "password")

coolgallery = Venue.new(name: "Cool Gallery", address: "45 Cool Street, Richmond", type_of_venue: "Gallery", venue_url: "www.coolgallery.com")
coolgallery.user = charlie
coolgallery.save

farmrestaurant = Venue.new(name: "Farm Co", address: "45 Farm Street, Sydney", type_of_venue: "Restaurant", venue_url: "www.farmrestaurant.com")
farmrestaurant.user = george
farmrestaurant.save

emotions = Collection.new(title: "Emotions")
emotions.user = mathilde
emotions.save!

sadpainting = Artwork.new(title: "Sad painting", description: "The ocean is crying", price: 450, size: "440x560", available: true, medium: "Painting", style: "Modern")
sadpainting.collection = emotions
sadpainting.save

goingcrazy = Collection.new(title: "Going Crazy")
goingcrazy.user = alastair
goingcrazy.save!

cuttingmyear = Artwork.new(title: "Cutting my ear off", description: "Someone already did that I think", price: 3600, size: "600x433", available: true, medium: "Sculpture", style: "Contemporain")
cuttingmyear.collection = goingcrazy
cuttingmyear.save

calming = Collection.new(title: "Calming")
calming.user = jason
calming.save!

listentotheocean = Artwork.new(title: "Listen to the Ocean", description: "Nothing else calms me", price: 2000, size: "450x500", available: true, medium: "Painting", style: "Classic")
listentotheocean.collection = calming
listentotheocean.save

puts "Finished"
