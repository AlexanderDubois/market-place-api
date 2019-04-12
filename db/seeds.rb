# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "sander", email: "sander.dubois@gmail.com", profile_img_url: "https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-1/c0.14.160.160a/p160x160/21314382_1645765828788964_3443909986466353549_n.jpg?_nc_cat=107&_nc_ht=scontent-lht6-1.xx&oh=f917982c19d742397ca801bd7cbd804c&oe=5D4899C9")
cat1 = Category.create(name: "Electronics")

u2 = User.create(name: "Stu", email: "stu@gmail.com", profile_img_url: "https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-1/c0.14.160.160a/p160x160/21314382_1645765828788964_3443909986466353549_n.jpg?_nc_cat=107&_nc_ht=scontent-lht6-1.xx&oh=f917982c19d742397ca801bd7cbd804c&oe=5D4899C9")
cat2 = Category.create(name: "Cars")



