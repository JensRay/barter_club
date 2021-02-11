puts "destroying all"

Chatroom.destroy_all
Comment.destroy_all

Offer.destroy_all
Item.destroy_all
User.destroy_all
Message.destroy_all
Review.destroy_all

puts "destroyed all"


puts "creating users"

file = File.open("app/assets/images/martin.png")
martin = User.create!(name: "Martin", address: "Läroverksvägen 3, 181 42 Stockholm, Sweden", bio: "32 years old, living together with my 5 cats in Stockholm. I play the harmonica and love nature.", email: "martin@martin.com", nickname: "martin", password: "123456")
martin.photo.attach(io: file, filename: 'martin.png', content_type: 'image/png')
martin.save!

file = File.open("app/assets/images/j.jpg")
jedrzej = User.create!(name: "Jedrzej", address: "Stationsgatan 12,  753 75 Uppsala", bio: "Musician, composer, saxophone player living in Uppsala. I want to learn programming to create something different than music.", email: "j@j.com", nickname: "jedrzej", password: "123456")
jedrzej.photo.attach(io: file, filename: 'j.png', content_type: 'image/jpg')
jedrzej.save!

file = File.open("app/assets/images/alize.png")
alize = User.create!(name: "Alize", address: "Götgatan 65, 116 21 Stockholm, Sweden", bio: "Born and raised in South Korea but I live in Stockholm now. When I'm not working as a UX designer, I like to spend my time with reading a good book and listening to some good music.", email: "alize@alize.com", nickname: "alize", password: "123456")
alize.photo.attach(io: file, filename: 'alize.png', content_type: 'image/png')
alize.save!

file = File.open("app/assets/images/antje.png")
antje = User.create!(name: "Antje", address: "Sollentunavägen 163, 191 47 Sollentuna, Sweden", bio: "Originally from Germany but now living in Sweden. Married 15 years ago, 6 children, 3 dogs and I drive a Ferrari.", email: "antje@antje.com", nickname: "antje", password: "123456")
antje.photo.attach(io: file, filename: 'antje.png', content_type: 'image/png')
antje.save!

file = File.open("app/assets/images/toni.jpeg")
toni = User.create!(name: "Toni", address: "Ulvsundavägen 185, 168 67, Bromma", bio: "I live in Stockholm, working as a teacher for brillant students and mentally disabled children. I love Techno.", email: "toni@toni.com", nickname: "toni", password: "123456")
toni.photo.attach(io: file, filename: 'toni.jpeg', content_type: 'image/jpeg')
toni.save!



puts "creating items"

file = File.open("app/assets/images/hanger.jpg")
hanger = Item.new(name: "Weird hat hanger", category: "Furniture", description: "I've found it on the street. It looks like a hander for hats or coats.", user_id: jedrzej.id)
hanger.photos.attach(io: file, filename: 'hanger.jpg"', content_type: 'image/jpg')
hanger.save!

file = File.open("app/assets/images/cape.jpg")
cape = Item.new(name: "Superman cape", category: "Clothes", description: "Cape for children.", user_id: alize.id)
cape.photos.attach(io: file, filename: 'cape.jpg"', content_type: 'image/jpg')
cape.save!

file = File.open("app/assets/images/books.jpg")
books = Item.new(name: "Old books", category: "Collectibles & Hobbies", description: "Old books in weird languages. Maybe from a different planet.", user_id: martin.id)
books.photos.attach(io: file, filename: 'books.jpg', content_type: 'image/jpg')
books.save!

file = File.open("app/assets/images/plant.jpg")
plant = Item.new(name: " A plant", category: "Others", description: "A very unique plant from South America", user_id: alize.id)
plant.photos.attach(io: file, filename: 'plant.jpg', content_type: 'image/jpg')
plant.save!

file = File.open("app/assets/images/chair.jpg")
chair = Item.new(name: "A chair", category: "Furniture", description: "A very cool chair. Bought it from a flea market in Denmark", user_id: jedrzej.id)
chair.photos.attach(io: file, filename: 'chair.jpg', content_type: 'image/jpg')
chair.save!

file = File.open("app/assets/images/lamp.jpg")
lamp = Item.new(name: "A lamp", category: "Furniture", description: "Beautiful lamp from an unknown designer", user_id: antje.id)
lamp.photos.attach(io: file, filename: 'lamp.jpg', content_type: 'image/jpg')
lamp.save!

file = File.open("app/assets/images/bread.jpg")
bread = Item.new(name: "Bread", category: "Others", description: "New baked bread from this morning. lovely", user_id: antje.id)
bread.photos.attach(io: file, filename: 'bread.jpg', content_type: 'image/jpg')
bread.save!

file = File.open("app/assets/images/husband.jpg")
husband = Item.new(name: "My husband", category: "Collectibles & Hobbies", description: "My annoying husband. We have been married for 25 years and now I'm tired of him ", user_id: antje.id)
husband.photos.attach(io: file, filename: 'husband.jpg', content_type: 'image/jpg')
husband.save!

file = File.open("app/assets/images/wateringcan.jpg")
watering_can = Item.new(name: "Watering Can", category: "Collectibles & Hobbies", description: "Beautiful watering can from a famous designer, I dont remember who. ", user_id: antje.id)
watering_can.photos.attach(io: file, filename: 'wateringcan.jpg"', content_type: 'image/jpg')
watering_can.save!

file = File.open("app/assets/images/guitar.jpg")
guitar = Item.new(name: "Pink guitar", category: "Collectibles & Hobbies", description: "I'm selling my guitar. Now I play only heavy metal. I don't use it. ", user_id: jedrzej.id)
guitar.photos.attach(io: file, filename: 'guitar.jpg"', content_type: 'image/jpg')
guitar.save!

file = File.open("app/assets/images/couch1.jpg")
couch1 = Item.new(name: "Blue couch", category: "Furniture", description: "My dog puked on my couch so I'm selling it. ", user_id: alize.id)
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
chair3 = Item.new(name: "Cool armchair", category: "Furniture", description: "I would gladly exchange it for some booze.", user_id: martin.id)
chair3.photos.attach(io: file, filename: 'chair3.jpg"', content_type: 'image/jpg')
chair3.save!

file = File.open("app/assets/images/chair4.jpg")
chair4 = Item.new(name: "Oldschool chair", category: "Furniture", description: "I'm selling this old chair. Smells funny. I bought Ikea furniture.", user_id: jedrzej.id)
chair4.photos.attach(io: file, filename: 'chair4.jpg"', content_type: 'image/jpg')
chair4.save!

file = File.open("app/assets/images/watch.jpg")
watch = Item.new(name: "GPS Watch", category: "Collectibles & Hobbies", description: "I want to trade my Garmin GPS watch for runnning. ", user_id: antje.id)
watch.photos.attach(io: file, filename: 'watch.jpg"', content_type: 'image/jpg')
watch.save!

file = File.open("app/assets/images/chair5.jpg")
chair5 = Item.new(name: "Chair for a queen", category: "Furniture", description: "It's a chair for a 'real lady'. Like a queen or something.", user_id: alize.id)
chair5.photos.attach(io: file, filename: 'chair5.jpg"', content_type: 'image/jpg')
chair5.save!

file = File.open("app/assets/images/oscar.jpg")
oscar = Item.new(name: "Oscar award", category: "Collectibles & Hobbies", description: "I'm selling my Oscar don't need it anymore.", user_id: jedrzej.id)
oscar.photos.attach(io: file, filename: 'oscar.jpg"', content_type: 'image/jpg')
oscar.save!

file = File.open("app/assets/images/rug.jpg")
rug = Item.new(name: "Turkish rug", category: "Furniture", description: "I want to trade my Turkish rug, bought it in Istanbul 2014.", user_id: toni.id)
rug.photos.attach(io: file, filename: 'rug.jpg"', content_type: 'image/jpg')
rug.save!



puts "creating comments"

Comment.create(content: "Can I have it outdoors?", user_id: antje.id, item: chair)
Comment.create(content: "I wouldn't recommend it.", user_id: jedrzej.id, item: chair)
Comment.create(content: "Do you have more photos?", user_id: martin.id, item: bread)
Comment.create(content: "Do you have different colors?", user_id: alize.id, item: lamp)
Comment.create(content: "How big is it?", user_id: jedrzej.id, item: bread)



puts "creating offers"

offer1 = Offer.new(user_id: jedrzej.id, original_item: plant, my_item: chair )
offer1.save

offer2 = Offer.new(user_id: martin.id, original_item: lamp, my_item: books )
offer2.save

# offer4 = Offer.new(user_id: martin.id, original_item: husband, my_item: books )
# offer4.save

offer5 = Offer.new(user_id: alize.id, original_item: chair, my_item: plant )
offer5.save

offer6 = Offer.new(user_id: toni.id, original_item: chair, my_item: watering_can )
offer6.save

offer7 = Offer.new(user_id: toni.id, original_item: chair3, my_item: rug, status: "accept" )
offer7.save

puts "creating chatrooms"

chatroom1 = Chatroom.new(offer_id: offer7.id)
chatroom1.save

puts "creating messages"

Message.create(content: "Where and when can we meet up?", chatroom_id: chatroom1.id, user_id: toni.id)
Message.create(content: "I live in Lidingö and I am availible tomorrow at noon", chatroom_id: chatroom1.id, user_id: martin.id)
Message.create(content: "Great, I live in Bromma. I'll take a taxi  tomorrow", chatroom_id: chatroom1.id, user_id: toni.id)
Message.create(content: "ok?", chatroom_id: chatroom1.id, user_id: toni.id)
Message.create(content: "Perfect! ", chatroom_id: chatroom1.id, user_id: martin.id)
Message.create(content: "Looking forward to meeting you!", chatroom_id: chatroom1.id, user_id: toni.id)
Message.create(content: "me too! ", chatroom_id: chatroom1.id, user_id: martin.id)

puts "creating reviews"
Review.create( rating: 5,  content:"Awesome guy!", user_id: toni.id, offer_id: offer6.id )
Review.create( rating: 5,  content:"I love Jedrzej!", user_id: alize.id, offer_id: offer6.id )
Review.create( rating: 5,  content:"Best person ever.", user_id: antje.id, offer_id: offer6.id )




