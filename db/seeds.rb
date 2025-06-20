# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Question.destroy_all
User.destroy_all
Match.destroy_all
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

Fish.destroy_all;
users = User.all

fish = Fish.create!(name: 'Handsome', fish_description: 'An energetic little guy who never stops exploring his tank. Very friendly and always the first to greet you at feeding time.', color: 'yellow', sex: 'male', length: '5', latitude: 41.374597, longitude: 2.18695, availability: true, user_id: users[0].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '1.jpg')), filename: '1.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Bubbles', fish_description: 'Loves to create a storm of bubbles in the corner of the tank. Calm and graceful, she’s a joy to watch.', color: 'orange', sex: 'female', length: '7', latitude: 41.386, longitude: 2.172, availability: true, user_id: users[1].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '2.jpg')), filename: '2.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Stripey', fish_description: 'This striped fellow has a curious nature and often stares at you like he’s solving a mystery.', color: 'white', sex: 'male', length: '6', latitude: 41.379, longitude: 2.185, availability: true, user_id: users[2].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '3.jpg')), filename: '3.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Flash', fish_description: 'The fastest swimmer in the tank, Flash loves to race across and make dramatic turns at the last second.', color: 'red', sex: 'male', length: '8', latitude: 41.388, longitude: 2.16, availability: true, user_id: users[3].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '4.jpg')), filename: '4.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Pearl', fish_description: 'She glides through the water like a ballerina, calm and beautiful. Always found near the decorative corals.', color: 'purple', sex: 'female', length: '5', latitude: 41.39, longitude: 2.17, availability: true, user_id: users[4].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '5.jpg')), filename: '5.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Shadow', fish_description: 'A stealthy fish who prefers the darker parts of the tank. He blends in perfectly with the background.', color: 'orange', sex: 'male', length: '4', latitude: 41.385, longitude: 2.19, availability: true, user_id: users[5].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '6.jpg')), filename: '6.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Sunny', fish_description: 'Her bright color and constant movement bring life and energy to the whole tank. She never rests!', color: 'blue', sex: 'female', length: '9', latitude: 41.375, longitude: 2.16, availability: true, user_id: users[6].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '7.jpg')), filename: '7.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Twinkle', fish_description: 'This shy beauty sparkles when the light hits her scales just right. Always hanging out near the plants.', color: 'orange', sex: 'female', length: '6', latitude: 41.38, longitude: 2.175, availability: true, user_id: users[7].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '8.jpg')), filename: '8.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Bluefin', fish_description: 'Highly intelligent and loves to follow fingers on the glass. Seems to be leading the other fish like a captain.', color: 'purple', sex: 'male', length: '10', latitude: 41.395, longitude: 2.181, availability: true, user_id: users[8].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '9.jpg')), filename: '9.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Goldie', fish_description: 'The friendliest fish you’ll ever meet. She swims toward you excitedly every time you walk into the room.', color: 'pink', sex: 'female', length: '7', latitude: 41.391, longitude: 2.174, availability: true, user_id: users[9].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '10.jpg')), filename: '10.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Spark', fish_description: 'Full of energy and sparkles in the light. He zips around the tank like he’s training for a championship.', color: 'yellow', sex: 'male', length: '5', latitude: 41.389, longitude: 2.163, availability: true, user_id: users[10].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '11.jpg')), filename: '11.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Jewel', fish_description: 'Her deep colors and slow movements make her look like a moving piece of art. Everyone stops to stare.', color: 'orange', sex: 'female', length: '6', latitude: 41.378, longitude: 2.195, availability: true, user_id: users[11].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '12.jpg')), filename: '12.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Shadowfin', fish_description: 'Rarely seen during the day, but at night he glides through the tank like a phantom. A true mystery.', color: 'yellow', sex: 'male', length: '4', latitude: 41.383, longitude: 2.168, availability: true, user_id: users[12].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '13.jpg')), filename: '13.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Coral', fish_description: 'Always hovering around the artificial corals, mimicking their color and rhythm like she belongs there.', color: 'blue', sex: 'female', length: '5', latitude: 41.372, longitude: 2.187, availability: true, user_id: users[13].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '14.jpg')), filename: '14.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Neon', fish_description: 'A walking disco ball. His scales glow and flicker as he swims, stealing the spotlight wherever he goes.', color: 'blue', sex: 'male', length: '7', latitude: 41.393, longitude: 2.178, availability: true, user_id: users[14].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '15.jpg')), filename: '15.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Bubblegum', fish_description: 'Cute and bubbly with a soft pink hue. She brings joy to anyone who watches her float around.', color: 'yellow', sex: 'female', length: '8', latitude: 41.382, longitude: 2.165, availability: true, user_id: users[15].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '16.jpg')), filename: '16.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Inferno', fish_description: 'His fiery orange-red tones are matched only by his bold personality. Dominates the tank with style.', color: 'orange', sex: 'male', length: '9', latitude: 41.376, longitude: 2.19, availability: true, user_id: users[16].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '17.jpg')), filename: '17.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Moonbeam', fish_description: 'Moves slowly like moonlight reflecting on water. A dreamlike presence in an otherwise busy tank.', color: 'orange', sex: 'female', length: '5', latitude: 41.377, longitude: 2.17, availability: true, user_id: users[17].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '18.jpg')), filename: '18.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Aqua', fish_description: 'Always curious and interactive. He will follow your finger around like a puppy begging for snacks.', color: 'white', sex: 'male', length: '6', latitude: 41.384, longitude: 2.16, availability: true, user_id: users[18].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '19.jpg')), filename: '19.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Crimson', fish_description: 'He swims like a dancer and brings a vibrant flash of color each time he turns. Hard to miss in the tank.', color: 'green', sex: 'male', length: '7', latitude: 41.393, longitude: 2.18, availability: true, user_id: users[19].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '20.jpg')), filename: '20.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Emerald', fish_description: 'Her green shine reminds you of ocean treasures. Elegant, peaceful and always moving with grace.', color: 'orange', sex: 'female', length: '5', latitude: 41.375, longitude: 2.193, availability: true, user_id: users[20].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '21.jpg')), filename: '21.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Ruby', fish_description: 'Bold and fearless, this ruby-colored beauty holds her own among the most aggressive tank mates.', color: 'white', sex: 'female', length: '8', latitude: 41.39, longitude: 2.185, availability: true, user_id: users[21].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '22.jpg')), filename: '22.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Onyx', fish_description: 'Sticks close to the gravel and blends in perfectly. You’ll be surprised how often he watches from below.', color: 'black', sex: 'male', length: '4', latitude: 41.374, longitude: 2.162, availability: true, user_id: users[21].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '23.jpg')), filename: '23.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Flame', fish_description: 'Bright and dramatic, Flame darts across the tank like a firebolt. Never stays in one place for long.', color: 'purple', sex: 'male', length: '7', latitude: 41.386, longitude: 2.167, availability: true, user_id: users[20].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '24.jpg')), filename: '24.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Glitter', fish_description: 'Tiny sparkles follow her wherever she swims. She’s often spotted dancing near the surface.', color: 'white', sex: 'female', length: '5', latitude: 41.381, longitude: 2.18, availability: true, user_id: users[18].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '25.jpg')), filename: '25.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Tornado', fish_description: 'Hyperactive and full of motion, Tornado causes little whirlpools with his constant swimming.', color: 'yellow', sex: 'male', length: '6', latitude: 41.377, longitude: 2.176, availability: true, user_id: users[21].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '26.jpg')), filename: '26.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Rose', fish_description: 'Delicate and soft, her pink hue and smooth glides calm anyone who watches her. A true tank queen.', color: 'blue', sex: 'female', length: '5', latitude: 41.387, longitude: 2.179, availability: true, user_id: users[20].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '27.jpg')), filename: '27.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Mango', fish_description: 'Bright like summer fruit and full of zest. Mango is cheerful and energetic from dawn till dusk.', color: 'blue', sex: 'male', length: '7', latitude: 41.388, longitude: 2.173, availability: true, user_id: users[19].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '28.jpg')), filename: '28.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Frost', fish_description: 'Cool and collected, Frost stays calm no matter what chaos is happening in the tank.', color: 'black', sex: 'female', length: '6', latitude: 41.39, longitude: 2.177, availability: true, user_id: users[18].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '29.jpg')), filename: '29.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Cobalt', fish_description: 'His rich blue shades make him stand out like a sapphire. Strong, steady, and quietly dominant.', color: 'orange', sex: 'male', length: '9', latitude: 41.386, longitude: 2.17, availability: true, user_id: users[19].id)
fish.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', '30.jpg')), filename: '30.jpg', content_type: 'image/jpg')

fish = Fish.create!(name: 'Puppy', fish_description: 'A stunning specimen with multiple angles. This fish loves the camera and always poses perfectly.', color: 'blue', sex: 'male', length: '6', latitude: 41.385, longitude: 2.175, availability: true, user_id: users[2].id)
fish.photos.attach([ 'sample_1.png', 'sample_2.png', 'sample_3.png' ].map { |img| { io: File.open(Rails.root.join('app', 'assets', 'images', 'fish_pics', img)), filename: img, content_type: 'image/png' } })
puts "Finished! Created #{Fish.count} fish."

Match.create!(
  start_date: Date.today,
  end_date: Date.today + 7,
  created_date: Date.today,
  status: "pending",
  fish_id: Fish.last.id,
  user_id: User.first.id
)

Match.create!(
  start_date: Date.today,
  end_date: Date.today + 3,
  created_date: Date.today,
  status: "confirmed",
  fish_id: Fish.second.id,
  user_id: User.first.id
)

Match.create!(
  start_date: Date.today,
  end_date: Date.today + 3,
  created_date: Date.today - 1,
  status: "declined",
  fish_id: Fish.third.id,
  user_id: User.first.id
)

Match.create!(
  start_date: Date.today - 7,
  end_date: Date.today - 1,
  created_date: Date.today - 8,
  status: "expired",
  fish_id: Fish.fourth.id,
  user_id: User.first.id
)

Match.create!(
  start_date: Date.today - 4,
  end_date: Date.today - 1,
  created_date: Date.today - 5,
  status: "completed",
  fish_id: Fish.fifth.id,
  user_id: User.first.id
)

user_first = User.first
fish = Fish.where(user_id: user_first.id).first
another_user = User.where.not(id: user_first.id).first # Find another user

if fish && another_user
  Match.create!(
    start_date: Date.today,
    end_date: Date.today + 7,
    status: "pending",
    created_date: Date.today,
    fish_id: fish.id,
    user_id: another_user.id
  )
  puts "Created a match for a fish owned by User.first, assigned to another user!"
else
  puts "Could not find a suitable fish or another user."
end

puts "Finished! Created #{Match.count} matches."

Review.destroy_all

comments = [
  "Our fish clicked instantly — love at first splash!",
  "Fun experience and very responsive owner!",
  "Lovely match! My fish is swimming happily now.",
  "Such a smooth interaction — would recommend to others.",
  "Great vibes and awesome tank setup.",
  "Owner was kind and helpful throughout.",
  "Fast response, great communication.",
  "Excellent match, fish are thriving!",
  "Absolutely recommend — top fish care!",
  "Felt like a real underwater romance!",
  "Bubbly experience with the perfect match!",
  "Tank was clean and peaceful — 5 stars!",
  "Very respectful and sweet fish!",
  "Swim date went better than expected.",
  "So much fun, fish had a blast!",
  "Definitely matching again!",
  "Sweet and easy-going fish owner!",
  "Best fins in town!",
  "Loved the energy and harmony!",
  "Friendly and helpful match-up.",
  "Top-quality fish and care.",
  "Quick match and clear communication."
]

users = User.all
fishes = Fish.all

fishes.each do |fish|
  reviewers = users.where.not(id: fish.user_id).sample(5)
  reviewers.each do |reviewer|
    match = Match.create!(user: reviewer, fish: fish, start_date: Date.today, end_date: 3.days.from_now)
    Review.create!(
      user: reviewer,
      match: match,
      score: rand(4..5),
      comment: comments.sample
    )
  end
end

puts "✅ Created #{Match.count} matches and #{Review.count} reviews for #{Fish.count} fish."
