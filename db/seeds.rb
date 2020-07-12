# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#♥️

Business.create!(name: "Black Flag Apparel", city: "Staten Island", state: "NY", industry: "Fashion", summary: "Black Flag: Never Give Up", tags: "clothes, urban, black flag", website: "BFNGU.com", twitter: "Twitter/NGU",image_url:"https://cdn.dribbble.com/users/908023/screenshots/7195388/media/da178ba79a307d5fb608e6307507c2cc.png",hearts:0)
Business.create!(name: "Jaded Faces", city: "Staten Island", state: "NY", industry: "Beauty", summary: "Skin care , Lash and beaty asthetic work", tags: "makeup, lashes, beauty", website: "JF.com", twitter: "Twitter/JadaG",image_url:"https://blackgirlish.files.wordpress.com/2015/05/d80076c65d952bb3e4bc6aca4d6a9404.jpg",hearts:0)
Business.create!(name: "Panama Pleasures", city: "Bronx", state: "NY", industry: "Adult", summary: "Real Bitch Shit", tags: "rap, dimes, panama", website: "PANAMADIMES.com", twitter: "Twitter/PanamaDimes",image_url:"https://media1.tenor.com/images/c52553d13a8d83fa19ccc0bb0a5a2c0f/tenor.gif?itemid=4716149",hearts:0)

User.create!(name: "Anthony Holder", username: "TripleP", website: "LOA.com", password: "cash1")
User.create!(name: "Jada Gordon", username: "JadaG", website: "JF.com", password: "cash2")
User.create!(name: "Diamond Clark", username: "Panama", website: "PP.com", password: "cash3")

UserBiz.create!(user_id:1, business_id:1)
UserBiz.create!(user_id:2, business_id:2)
UserBiz.create!(user_id:3, business_id:3)