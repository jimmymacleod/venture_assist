Bucket.destroy_all

a1 = Bucket.create name:"Active Portfolio"

a2 = Bucket.create name:"Opportunities"

a3 = Bucket.create name:"Kicked Into Touch"

puts "Created #{Bucket.all.length} buckets."

Business.destroy_all

b1 = Business.create  name:'Amazing Co', description:"Party organisation and co-ordination", location:'Melbourne', dropbox:"https://www.dropbox.com/", website:'https://www.amazingco.me/', logo: nil

b2 = Business.create  name:'Mon Purse', description:"Leather goods ecommerce store and personalisation", location:"Melbourne", dropbox: 'https://www.dropbox.com/', website:'https://www.monpurse.com/', logo: nil

puts "Created #{Business.all.length} businesses."

Industry.destroy_all

c1 = Industry.create name:"Entertainment"

c2 = Industry.create name:"Hospitality"

puts "Create #{Industry.all.length} industries."

Player.destroy_all

d1 = Player.create name:"Cleo Morley", linkedin:"https://linkedin.com"

d2 = Player.create name:"Glen Branson", linkedin:"https://linkedin.com"

puts "Created #{Player.all.length} players"

Article.destroy_all

e1 = Article.create name:"Amazingco making amazing moves.", publisher:"The New York Times", link:"https://google.com", date:"01/01/2011" , image:nil

e2 = Article.create name:"Amazingco party brings down the house.", publisher:"Techcrunch", link:"https://google.com", date:"02/01/2011" , image:nil

puts "Created #{Article.all.length} articles."
