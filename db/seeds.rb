# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#♥️

Business.create!(name: "Black Flag Apparel", city: "Staten Island", state: "NY", summary: "Black Flag: Never Give Up 🏴", categories: "Coaching,Fashion,Non Profit", website: "BFNGU.com", twitter:"https://twitter.com/N_everG_iveU_p",image_url:"https://cdn.dribbble.com/users/908023/screenshots/7195388/media/da178ba79a307d5fb608e6307507c2cc.png",hearts:0)
Business.create!(name: "Jaded Faces", city: "Staten Island", state: "NY", summary: "Skin care , Lash and beauty asthetic work. Yee", categories: "Fashion,Beauty & Hair", website: "JF.com", twitter:"https://twitter.com/N_everG_iveU_p",image_url:"https://blackgirlish.files.wordpress.com/2015/05/d80076c65d952bb3e4bc6aca4d6a9404.jpg",hearts:0)
Business.create!(name: "Panama Pleasures", city: "Bronx", state: "NY", summary: "Real Bitch Shit🇵🇦", categories: "Music,Recreation", website: "PANAMADIMES.com", twitter:"https://twitter.com/N_everG_iveU_p",image_url:"https://media1.tenor.com/images/c52553d13a8d83fa19ccc0bb0a5a2c0f/tenor.gif?itemid=4716149",hearts:0)

User.create!(name: "Anthony Holder", username: "TripleP", website: "LOA.com", img_url:"https://image.freepik.com/free-photo/burning-wood-night_149066-1410.jpg", password: "cash1", email:"yo@gmail.com")
User.create!(name: "Jada Gordon", username: "JadaG", website: "JF.com", img_url:"https://thelearnedfangirl.com/wp-content/uploads/2014/06/Michiko-to-Hatchin-michiko-to-hatchin-32569498-1280-720.jpg", password: "cash2", email:"yerrr@gmail.com")
User.create!(name: "Diamond Clark", username: "Panama", website: "PP.com", img_url:"https://images.fineartamerica.com/images-medium-large-5/panama-flag-vintage-distressed-finish-design-turnpike.jpg", password: "cash3", email:"ayeee@gmail.com")

UserBiz.create!(user_id:1, business_id:1)
UserBiz.create!(user_id:2, business_id:2)
UserBiz.create!(user_id:3, business_id:3)

Comment.create!(user_id:1, business_id:1, content:"test1")
Comment.create!(user_id:2, business_id:2, content:"test2")
Comment.create!(user_id:3, business_id:3, content:"test3")
Comment.create!(user_id:1, business_id:1, content:"test4")