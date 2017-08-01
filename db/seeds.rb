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


Photo.create!(url: "http://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_1440,w_720,f_auto,q_auto/v1/158015/loi_tran_mb4e76.jpg", username: "Loi", likes_count: 7, caption: "Looking good, sir!") 
Photo.create!(url: "http://res.cloudinary.com/hrscywv4p/image/upload/c_limit,f_auto,h_3000,q_90,w_1200/v1/158015/55957aa69ca847bf8474a1b5c0b4f7e6_hcev12.png", username: "Harley", likes_count: 5002, caption: "Act quick, he's getting married soon!")
Photo.create!(url: "http://res.cloudinary.com/hrscywv4p/image/upload/c_limit,f_auto,h_3000,q_90,w_1200/Luvocracy_327_1_x8yw9e.jpg", username: "Charles", likes_count: 4094, caption: "Your Korean badboy with a poodle...")

10.times do
  username = Faker::HowIMetYourMother.character
  caption = Faker::HowIMetYourMother.quote
  url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
  Photo.create!(url: url, username: username,
                caption: caption, likes_count: Faker::Number.number(5))  
end

puts "Seeded #{Photo.count} photos."



