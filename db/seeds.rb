# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying all"

Item.destroy_all
# Offer.destroy_all
User.destroy_all

puts "creating users"

file = File.open("app/assets/images/martin.png")
martin = User.create!(name: "martin", address: "Slottsbacken 1, 111 30 Stockholm, Sweden", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", email: "martin@martin.com", password: "123456")
martin.photo.attach(io: file, filename: 'martin.png', content_type: 'image/png')
martin.save!

file = File.open("app/assets/images/j.jpg")
j = User.create!(name: "j", address: "Holmbladsgade 94, Copenhagen Municipality, denmark", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "j@j.com", password: "123456")
j.photo.attach(io: file, filename: 'j.png', content_type: 'image/jpg')
j.save!

file = File.open("app/assets/images/alize.png")
alize = User.create!(name: "alize", address: "99 Yulgok-ro, Waryong-dong, Jongno-gu, Seoul, South Korea", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "alize@alize.com", password: "123456")
alize.photo.attach(io: file, filename: 'alize.png', content_type: 'image/png')
alize.save!

file = File.open("app/assets/images/antje.png")
antje = User.create!(name: "antje", address: "Museumsplatz 1, 45128 Essen, Germany", bio: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", email: "antje@antje.com", password: "123456")
antje.photo.attach(io: file, filename: 'antje.png', content_type: 'image/png')
antje.save!



puts "creating items"

file = File.open("app/assets/images/books.jpg")
books = Item.new(name: "Old books", category: "collectible & hobbies", description: "Old books in weird language. Maybe from a different planet.", user: martin)
books.photo.attach(io: file, filename: 'books.jpg', content_type: 'image/jpg')
books.save!

file = File.open("app/assets/images/plant.jpg")
plant = Item.new(name: "A plant", category: "other", description: "Plant", user: alize)
plant.photo.attach(io: file, filename: 'plant.jpg', content_type: 'image/jpg')
plant.save!

file = File.open("app/assets/images/chair.jpg")
chair = Item.new(name: "A chair", category: "furniture", description: "A chair", user: j)
chair.photo.attach(io: file, filename: 'chair.jpg', content_type: 'image/jpg')
chair.save!

file = File.open("app/assets/images/lamp.jpg")
lamp = Item.new(name: "A lamp", category: "furniture", description: "A lamp", user: antje)
lamp.photo.attach(io: file, filename: 'lamp.jpg', content_type: 'image/jpg')
lamp.save!

file = File.open("app/assets/images/bread.jpg")
lamp = Item.new(name: "Bread", category: "food", description: "new baked bread from this morning. lovely", user: antje)
lamp.photo.attach(io: file, filename: 'bread.jpg', content_type: 'image/jpg')
lamp.save!

file = File.open("app/assets/images/husband.jpg")
lamp = Item.new(name: "My husband", category: "other", description: "my annoying husband. We have been married for 25 years and now I'm tired of him ", user: antje)
lamp.photo.attach(io: file, filename: 'husband.jpg', content_type: 'image/jpg')
lamp.save!

