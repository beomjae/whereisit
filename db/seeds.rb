# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email:"admin@scloudy.com", password:"admin")

user.categories.create(
    [
        {name:'Public Toilet'},
        {name:'Cafe'},
        {name:'Parking lot'},
        {name:'Market'},
        {name:'Public Library'}
    ]
)

category1 = Category.find_by({name: 'Cafe'})

category1.items.create(
     [
         {name: '몽상드애월', latitude: 33.462887, longitude: 126.309132, user_id:1 },
         {name: '모드락', latitude: 33.516127, longitude: 126.508950, user_id:1  },
         {name: '커피동굴', latitude: 33.514560, longitude: 126.539192, user_id:1  }
     ]
)