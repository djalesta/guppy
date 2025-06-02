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

user = User.create!(username: 'fishABC', email: 'fishABC@gmail.com', password: '123456', user_bio: 'I am a super nerdy fish hobbyist. Been doing this for 12 years')
user.photo.attach(io: file, filename: '01.png', content_type: 'image/png')
