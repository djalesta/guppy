# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
require "open-uri"
path = Rails.root.join('app', 'assets', 'images', 'user_pics', '01.png')
file = URI.open("#{path}")

User.create!(username: 'AquaExplorer', email: 'aqua01@example.com', password: '123456', user_bio: 'Diving deep into marine mysteries!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '01.png')), filename: '01.png', content_type: 'image/png')

User.create!(username: 'CoralSeeker', email: 'coral02@example.com', password: '123456', user_bio: 'Love collecting rare corals and learning about reefs.')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '02.jpg')), filename: '02.jpg', content_type: 'image/jpeg')

User.create!(username: 'OceanDrifter', email: 'drift03@example.com', password: '123456', user_bio: 'I flow with the tides, exploring marine ecosystems!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '03.jpg')), filename: '03.jpg', content_type: 'image/jpeg')

User.create!(username: 'WaveSurfer', email: 'wave04@example.com', password: '123456', user_bio: 'Surfing waves and studying ocean currents!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '04.jpg')), filename: '04.jpg', content_type: 'image/jpeg')

User.create!(username: 'DeepSeaDiver', email: 'deep05@example.com', password: '123456', user_bio: 'Passionate about deep-sea creatures and mysteries!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '05.jpg')), filename: '05.jpg', content_type: 'image/jpeg')

User.create!(username: 'MantaRayFan', email: 'manta06@example.com', password: '123456', user_bio: 'Obsessed with majestic manta rays!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '06.jpg')), filename: '06.jpg', content_type: 'image/jpeg')

User.create!(username: 'NemoHunter', email: 'nemo07@example.com', password: '123456', user_bio: 'Tracking clownfish across the reefs!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '07.jpg')), filename: '07.jpg', content_type: 'image/jpeg')

User.create!(username: 'DolphinTalks', email: 'dolphin08@example.com', password: '123456', user_bio: 'Communicating with dolphins, or at least trying!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '08.jpg')), filename: '08.jpg', content_type: 'image/jpeg')

User.create!(username: 'SeahorseRider', email: 'seahorse09@example.com', password: '123456', user_bio: 'Fascinated by tiny sea dragons!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '09.jpg')), filename: '09.jpg', content_type: 'image/jpeg')

User.create!(username: 'SharkWatcher', email: 'shark10@example.com', password: '123456', user_bio: 'Studying sharks and their misunderstood nature!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '10.jpg')), filename: '10.jpg', content_type: 'image/jpeg')

User.create!(username: 'JellyfishDreamer', email: 'jelly11@example.com', password: '123456', user_bio: 'Floating along with jellyfish vibes!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '11.jpg')), filename: '11.jpg', content_type: 'image/jpeg')

User.create!(username: 'TideFollower', email: 'tide12@example.com', password: '123456', user_bio: 'Following the moon’s pull on the tides.')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '12.jpg')), filename: '12.jpg', content_type: 'image/jpeg')

User.create!(username: 'ReefGuardian', email: 'reef13@example.com', password: '123456', user_bio: 'Protecting coral reefs, one dive at a time.')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '13.jpg')), filename: '13.jpg', content_type: 'image/jpeg')

User.create!(username: 'KelpExplorer', email: 'kelp14@example.com', password: '123456', user_bio: 'Exploring kelp forests and their rich ecosystems.')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '14.jpg')), filename: '14.jpg', content_type: 'image/jpeg')

User.create!(username: 'MarineMystic', email: 'mystic15@example.com', password: '123456', user_bio: 'Inspired by the ocean’s secrets!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '15.jpg')), filename: '15.jpg', content_type: 'image/jpeg')

User.create!(username: 'OctoFriend', email: 'octo16@example.com', password: '123456', user_bio: 'Bonding with intelligent octopuses!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '16.jpg')), filename: '16.jpg', content_type: 'image/jpeg')

User.create!(username: 'BlueWhaleLover', email: 'whale18@example.com', password: '123456', user_bio: 'Following whale migration patterns!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '18.png')), filename: '18.png', content_type: 'image/png')

User.create!(username: 'MarlinTracker', email: 'marlin19@example.com', password: '123456', user_bio: 'Chasing elusive marlins on fishing trips!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '19.png')), filename: '19.png', content_type: 'image/png')

User.create!(username: 'AquaticBiologist', email: 'bio20@example.com', password: '123456', user_bio: 'Studying marine life up close!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '20.png')), filename: '20.png', content_type: 'image/png')

User.create!(username: 'CoralPainter', email: 'paint21@example.com', password: '123456', user_bio: 'Capturing reef beauty through art!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '21.png')), filename: '21.png', content_type: 'image/png')

User.create!(username: 'SquidScientist', email: 'squid22@example.com', password: '123456', user_bio: 'Analyzing bioluminescent squid signals!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '22.png')), filename: '22.png', content_type: 'image/png')

User.create!(username: 'WaterEcho', email: 'echo29@example.com', password: '123456', user_bio: 'Listening to the ocean’s echoes!')
.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user_pics', '29.png')), filename: '29.png', content_type: 'image/png')

puts "Finished! Created #{User.count} users."
