puts "destroying all"


Message.destroy_all
Offer.destroy_all
Comment.destroy_all
Chatroom.destroy_all
Item.destroy_all


User.destroy_all
puts "destroyed all"


puts "creating users"

file = File.open("app/assets/images/martin.png")
martin = User.create!(name: "martin", address: "Slottsbacken 1, 111 30 Stockholm, Sweden", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", email: "martin@martin.com", nickname: "martin", password: "123456")
martin.photo.attach(io: file, filename: 'martin.png', content_type: 'image/png')
martin.save!

file = File.open("app/assets/images/j.jpg")
j = User.create!(name: "j", address: "Holmbladsgade 94, Copenhagen Municipality, denmark", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "j@j.com", nickname: "jensray", password: "123456")
j.photo.attach(io: file, filename: 'j.png', content_type: 'image/jpg')
j.save!

file = File.open("app/assets/images/alize.png")
alize = User.create!(name: "alize", address: "Götgatan 65, 116 21 Stockholm, Sweden", bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ", email: "alize@alize.com", nickname: "alize", password: "123456")
alize.photo.attach(io: file, filename: 'alize.png', content_type: 'image/png')
alize.save!

file = File.open("app/assets/images/antje.png")
antje = User.create!(name: "antje", address: "Sollentunavägen 163, 191 47 Sollentuna, Sweden", bio: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", email: "antje@antje.com", nickname: "antje", password: "123456")
antje.photo.attach(io: file, filename: 'antje.png', content_type: 'image/png')
antje.save!

file = File.open("app/assets/images/toni.jpeg")
toni = User.create!(name: "toni", address: "Rudi-Dutschke-Straße 26, 10969 Berlin", bio: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?", email: "toni@toni.com", nickname: "toni", password: "123456")
toni.photo.attach(io: file, filename: 'toni.jpeg', content_type: 'image/jpeg')
toni.save!



puts "creating items"

file = File.open("app/assets/images/books.jpg")
books = Item.new(name: "Old books", category: "Collectibles & Hobbies", description: "Old books in weird language. Maybe from a different planet.", user_id: martin.id)
books.photos.attach(io: file, filename: 'books.jpg', content_type: 'image/jpg')
books.save!

file = File.open("app/assets/images/plant.jpg")
plant = Item.new(name: "A plant", category: "Others", description: "Plant", user_id: alize.id)
plant.photos.attach(io: file, filename: 'plant.jpg', content_type: 'image/jpg')
plant.save!

file = File.open("app/assets/images/chair.jpg")
chair = Item.new(name: "A chair", category: "Furniture", description: "A chair", user_id: j.id)
chair.photos.attach(io: file, filename: 'chair.jpg', content_type: 'image/jpg')
chair.save!

file = File.open("app/assets/images/lamp.jpg")
lamp = Item.new(name: "A lamp", category: "Furniture", description: "A lamp", user_id: antje.id)
lamp.photos.attach(io: file, filename: 'lamp.jpg', content_type: 'image/jpg')
lamp.save!

file = File.open("app/assets/images/bread.jpg")
bread = Item.new(name: "Bread", category: "Others", description: "new baked bread from this morning. lovely", user_id: antje.id)
bread.photos.attach(io: file, filename: 'bread.jpg', content_type: 'image/jpg')
bread.save!

file = File.open("app/assets/images/husband.jpg")
husband = Item.new(name: "My husband", category: "Collectibles & Hobbies", description: "my annoying husband. We have been married for 25 years and now I'm tired of him ", user_id: antje.id)
husband.photos.attach(io: file, filename: 'husband.jpg', content_type: 'image/jpg')
husband.save!

file = File.open("app/assets/images/wateringcan.jpg")
watering_can = Item.new(name: "Watering Can", category: "Collectibles & Hobbies", description: "Beutiful watering can from a famous designer, I dont remember who. ", user_id: antje.id)
watering_can.photos.attach(io: file, filename: 'wateringcan.jpg"', content_type: 'image/jpg')
watering_can.save!

file = File.open("app/assets/images/guitar.jpg")
guitar = Item.new(name: "Pink guitar", category: "Collectibles & Hobbies", description: "I'm selling my guitar. Now I play only heavy metal. I don't use it. ", user_id: j.id)
guitar.photos.attach(io: file, filename: 'guitar.jpg"', content_type: 'image/jpg')
guitar.save!

file = File.open("app/assets/images/couch1.jpg")
couch1 = Item.new(name: "Blue couch", category: "Furniture", description: "My dog puked on my chouch so I'm selling it. ", user_id: alize.id)
couch1.photos.attach(io: file, filename: 'couch1.jpg"', content_type: 'image/jpg')
couch1.save!

file = File.open("app/assets/images/couch2.jpg")
couch2 = Item.new(name: "Green couch", category: "Furniture", description: "I found this couch on the attic.", user_id: antje.id)
couch2.photos.attach(io: file, filename: 'couch2.jpg"', content_type: 'image/jpg')
couch2.save!

file = File.open("app/assets/images/chair2.jpg")
chair2 = Item.new(name: "A chair for chilren", category: "Furniture", description: "My child is too big for it. It's in a good state.", user_id: alize.id)
chair2.photos.attach(io: file, filename: 'chair2.jpg"', content_type: 'image/jpg')
chair2.save!

file = File.open("app/assets/images/chair3.jpg")
chair3 = Item.new(name: "Comfortable armchair", category: "Furniture", description: "I would gladly exchange it for some booze.", user_id: martin.id)
chair3.photos.attach(io: file, filename: 'chair3.jpg"', content_type: 'image/jpg')
chair3.save!

file = File.open("app/assets/images/chair4.jpg")
chair4 = Item.new(name: "Oldschool chair", category: "Furniture", description: "I'm selling this oldchair. Smells funny. I bought some Ikea.", user_id: j.id)
chair4.photos.attach(io: file, filename: 'chair4.jpg"', content_type: 'image/jpg')
chair4.save!

file = File.open("app/assets/images/chair5.jpg")
chair5 = Item.new(name: "Chair for a 'real lady'", category: "Furniture", description: "It's a chair for a 'real lady'. Like a queen or something.", user_id: alize.id)
chair5.photos.attach(io: file, filename: 'chair5.jpg"', content_type: 'image/jpg')
chair5.save!

file = File.open("app/assets/images/oscar.jpg")
oscar = Item.new(name: "Oscar award", category: "Collectibles & Hobbies", description: "I'm selling my oscar don't need it anymore.", user_id: j.id)
oscar.photos.attach(io: file, filename: 'oscar.jpg"', content_type: 'image/jpg')
oscar.save!

file = File.open("app/assets/images/hanger.jpg")
hanger = Item.new(name: "Weird hat hanger", category: "Furniture", description: "I've found it on the street. It looks like a hander for hats or coats.", user_id: j.id)
hanger.photos.attach(io: file, filename: 'hanger.jpg"', content_type: 'image/jpg')
hanger.save!

file = File.open("app/assets/images/cape.jpg")
cape = Item.new(name: "Superman cape", category: "Clothes", description: "Cape for children.", user_id: alize.id)
cape.photos.attach(io: file, filename: 'cape.jpg"', content_type: 'image/jpg')
cape.save!

puts "creating comments"

Comment.create(content: "Can I eat it?", user_id: antje.id, item: chair)
Comment.create(content: "I wouldn't recommend it.", user_id: j.id, item: chair)
Comment.create(content: "Do you have more photos?", user_id: martin.id, item: bread)
Comment.create(content: "Do you have different colors?", user_id: alize.id, item: lamp)
Comment.create(content: "How big is it?", user_id: j.id, item: bread)



puts "creating offers"

offer1 = Offer.new(user_id: j.id, original_item: plant, my_item: chair )
offer1.save

offer2 = Offer.new(user_id: martin.id, original_item: lamp, my_item: books )
offer1.save

offer3 = Offer.new(user_id: alize.id, original_item: books, my_item: plant )
offer3.save

offer4 = Offer.new(user_id: martin.id, original_item: husband, my_item: books )
offer4.save

offer5 = Offer.new(user_id: alize.id, original_item: chair, my_item: plant )
offer5.save

offer6 = Offer.new(user_id: toni.id, original_item: chair, my_item: watering_can )
offer6.save


