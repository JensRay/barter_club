# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying all"


Offer.destroy_all

Comment.destroy_all

Item.destroy_all
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
books = Item.new(name: "Old books", category: "Collectibles & Hobbies", description: "Old books in weird language. Maybe from a different planet.", user: martin)
books.photos.attach(io: file, filename: 'books.jpg', content_type: 'image/jpg')
books.save!

file = File.open("app/assets/images/plant.jpg")
plant = Item.new(name: "A plant", category: "Others", description: "Plant", user: alize)
plant.photos.attach(io: file, filename: 'plant.jpg', content_type: 'image/jpg')
plant.save!

file = File.open("app/assets/images/chair.jpg")
chair = Item.new(name: "A chair", category: "Furniture", description: "A chair", user: j)
chair.photos.attach(io: file, filename: 'chair.jpg', content_type: 'image/jpg')
chair.save!

file = File.open("app/assets/images/lamp.jpg")
lamp = Item.new(name: "A lamp", category: "Furniture", description: "A lamp", user: antje)
lamp.photos.attach(io: file, filename: 'lamp.jpg', content_type: 'image/jpg')
lamp.save!

file = File.open("app/assets/images/bread.jpg")
bread = Item.new(name: "Bread", category: "Others", description: "new baked bread from this morning. lovely", user: antje)
bread.photos.attach(io: file, filename: 'bread.jpg', content_type: 'image/jpg')
bread.save!

file = File.open("app/assets/images/husband.jpg")
husband = Item.new(name: "My husband", category: "Collectibles & Hobbies", description: "my annoying husband. We have been married for 25 years and now I'm tired of him ", user: antje)
husband.photos.attach(io: file, filename: 'husband.jpg', content_type: 'image/jpg')
husband.save!


puts "creating comments"

Comment.create(content: "Can I eat it?", user: antje, item: chair)
Comment.create(content: "Do you have move photos?", user: martin, item: bread)
Comment.create(content: "Do you have different colors?", user: alize, item: lamp)
Comment.create(content: "How big is it?", user: j, item: bread)



puts "creating offers"

offer1 = Offer.new(user: j, original_item: plant, my_item: chair )
offer1.save

offer2 = Offer.new(user: martin, original_item: lamp, my_item: books )
offer1.save

offer3 = Offer.new(user: alize, original_item: books, my_item: plant )
offer3.save

offer4 = Offer.new(user: martin, original_item: husband, my_item: books )
offer4.save

