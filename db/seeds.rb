# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#♥️

Business.create(name: "Black Flag Apparel", city: "Staten Island", state: "NY", industry: "Fashion", summary: "Black Flag: Never Give Up", tags: "clothes, urban, black flag", website: "BFNGU.com", twitter: "Twitter/NGU", facebook: string, phone: string, email: string)
Business.create(name: "Jaded Faces", city: "Staten Island", state: "NY", industry: "Beauty", summary: "Black Flag: Never Give Up", tags: "clothes, urban, black flag", website: "BFNGU.com", twitter: "Twitter/NGU", facebook: string, phone: string, email: string)
Business.create(name: "Panama Pleasures", city: "Bronx", state: "NY", industry: "Adult", summary: "Black Flag: Never Give Up", tags: "clothes, urban, black flag", website: "BFNGU.com", twitter: "Twitter/NGU", facebook: string, phone: string, email: string)
User.creaate(name: "Anthony Holder", username: "TripleP", website: "LOA.com", password: "cash1")
UserBiz.create(user_id:1, business_id:1)
