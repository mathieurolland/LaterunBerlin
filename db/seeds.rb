
#Users
loan = User.create( email: "loan@gmail.com", password: "azeaze", first_name: "Loan", last_name: "Robert" )
math = User.create( email: "math@gmail.com", password: "azeaze", first_name: "math", last_name: "Robert")
jo = User.create( email: "jo@gmail.com", password: "azeaze", first_name: "jo", last_name: "Robert" )
paul = User.create( email: "paul@gmail.com", password: "azeaze", first_name: "paul", last_name: "Robert" )
claire = User.create( email: "claire@gmail.com", password: "azeaze", first_name: "claire", last_name: "Robert" )
zach = User.create( email: "zach@gmail.com", password: "azeaze", first_name: "zach", last_name: "Robert" )
fred = User.create( email: "fred@gmail.com", password: "azeaze", first_name: "fred", last_name: "Robert" )
toto = User.create( email: "toto@gmail.com", password: "azeaze", first_name: "toto", last_name: "Robert" )
#Races
Race.create( name:"Marathon de Bordeaux", date: DateTime.now, adress: "Place de la bourse, Bordeaux", race_distance: 42, race_type: "route" )
Race.create( name:"Course Marseille Cassis", date: DateTime.now, adress: "Marseille", race_distance: 21, race_type: "route" )
Race.create( name:"Trail de Saint Emilion", date: DateTime.now, adress: "Saint Emilion", race_distance: 10, race_type: "trail" )
Race.create( name:"Trail de Sainte-lyon", date: DateTime.now, adress: "Lyon", race_distance: 70, race_type: "trail" )
Race.create( name:"Fun Run Toulouse", date: DateTime.now, adress: "Toulouse", race_distance: 9, race_type: "course fun" )
Race.create( name:"Orientation day Nice", date: DateTime.now, adress: "Nice", race_distance: 15, race_type: "orientation" )
#Favorite Race
User.all.each do |user|
  Race.all.shuffle[0..3].each do |race|
    FavoriteRace.create(race_id: race.id, user_id: user.id)
  end
end
#Bib
Bib.create( bought_price: 22, selling_price: 15, race_id: 2, seller_id: 1, status: "pay")
Bib.create( bought_price: 34, selling_price: 26, race_id: 3, seller_id: 2, status: "pay")
Bib.create( bought_price: 45, selling_price: 38, race_id: 4, seller_id: 3, status: "pay")
Bib.create( bought_price: 12, selling_price: 7, race_id: 5, seller_id: 4, status: "pay")
Bib.create( bought_price: 34, selling_price: 26, race_id: 1, seller_id: 5, status: "pay")
Bib.create( bought_price: 65, selling_price: 54, race_id: 3, seller_id: 2, status: "pay")
Bib.create( bought_price: 10, selling_price: 6, race_id: 2, seller_id: 2, status: "pay")
Bib.create( bought_price: 13, selling_price: 8, race_id: 5, seller_id: 2, status: "pay")
Bib.create( bought_price: 31, selling_price: 23, race_id: 6, seller_id: 5, status: "pay")
Bib.create( bought_price: 29, selling_price: 24, race_id: 3, seller_id: 6, status: "pay")
Bib.create( bought_price: 32, selling_price: 21, race_id: 4, seller_id: 7, status: "pay")
#Order
Order.create( buyer_id: 1, bib_id: 3)
Order.create( buyer_id: 2, bib_id: 4)
Order.create( buyer_id: 3, bib_id: 5)
Order.create( buyer_id: 4, bib_id: 6)
Order.create( buyer_id: 5, bib_id: 7)
Order.create( buyer_id: 6, bib_id: 8)
Order.create( buyer_id: 6, bib_id: 9)
Order.create( buyer_id: 3, bib_id: 10)
Order.create( buyer_id: 3, bib_id: 1)
Order.create( buyer_id: 3, bib_id: 2)
Order.create( buyer_id: 5, bib_id: 2)
#Message
Message.create( content: "aaaaa", user_id: 1, order_id: 1)
Message.create( content: "aaaaa", user_id: 2, order_id: 2)
Message.create( content: "aaaaa", user_id: 3, order_id: 3)
Message.create( content: "aaaaa", user_id: 4, order_id: 4)
Message.create( content: "aaaaa", user_id: 3, order_id: 1)
Message.create( content: "aaaaa", user_id: 6, order_id: 6)
Message.create( content: "aaaaa", user_id: 8, order_id: 6)
Message.create( content: "aaaaa", user_id: 6, order_id: 6)
#Reviews
Review.create( rating: 5, content: "aaeaeaeaeaea", user_id: 1, race_id: 1)
Review.create( rating: 3, content: "aaeaeaeaeaea", user_id: 2, race_id: 1)
Review.create( rating: 4, content: "aaeaeaeaeaea", user_id: 3, race_id: 2)
Review.create( rating: 2, content: "aaeaeaeaeaea", user_id: 4, race_id: 2)
Review.create( rating: 4, content: "aaeaeaeaeaea", user_id: 3, race_id: 3)
Review.create( rating: 5, content: "aaeaeaeaeaea", user_id: 2, race_id: 3)
Review.create( rating: 1, content: "aaeaeaeaeaea", user_id: 6, race_id: 1)
