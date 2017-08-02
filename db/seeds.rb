puts "Seeding data"
if Photo.count > 0
  puts "WARNING: there is existing data."
  puts "To re-seed, first go to rails console and type 'Photo.delete_all'"
  puts "For heroku, type 'heroku run rails console'"
  exit
end

  # print "WARNING: there is existing data. Do you want to delete all and seed again? (y/n) "
  # answer = STDIN.gets.chomp
  # if answer == "y" || answer == ""
  #   puts "Deleting photos. New ones will be seeded"
  #   Photo.delete_all
  # else
  #   puts "Your data is safe. Goodbye."
  #   return0
  # end


20.times do
  username = Faker::HowIMetYourMother.character
  caption = Faker::HowIMetYourMother.quote
  url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
  avatar_url = Faker::LoremPixel.image("50x50", false, 'sports', nil, username)
  Photo.create!(url: url, username: username,
                caption: caption, likes_count: Faker::Number.number(5), avatar_url: avatar_url)  
end

puts "Seeded #{Photo.count} photos."



