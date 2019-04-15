# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale = 'en-GB'

# User.destroy_all
# Category.destroy_all

# u1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)
# u2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)
# u3 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)
# u4 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)
# u5 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)
# u6 = User.create(name: Faker::Name.name, email: Faker::Internet.email, profile_img_url: Faker::Avatar.image)

# c1 = Category.create(name: "Vehicles", icon: "car")
# c2 = Category.create(name: "Home and Garden", icon: "home")
# c3 = Category.create(name: "Housing", icon: "hotel")
# c4 = Category.create(name: "Entertainment", icon: "game")
# c5 = Category.create(name: "Clothing and Accessories", icon: "male")
# c6 = Category.create(name: "Family", icon: "heart")
# c7 = Category.create(name: "Electronics", icon: "mobile alternate")
# c8 = Category.create(name: "Hobbies", icon: "quidditch")
# c9 = Category.create(name: "Classifieds", icon: "user secret")


Product.destroy_all
ProductImage.destroy_all

p1 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p2 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p3 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p4 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p5 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p6 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p7 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p8 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p9 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p10 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p11 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p12 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p13 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p14 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p15 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p16 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p17 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p18 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p19 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))
p20 = Product.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph, price: Faker::Commerce.price, location: Faker::Address.county, user_id: Faker::Number.between(1, 6), category_id: Faker::Number.between(1, 9))

ProductImage.create(url: "http://lorempixel.com/480/640/technics/1", product_id: p1.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/2", product_id: p2.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/3", product_id: p3.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/4", product_id: p4.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/5", product_id: p5.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/6", product_id: p6.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/7", product_id: p7.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/8", product_id: p8.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/9", product_id: p9.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/10", product_id: p10.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/1", product_id: p11.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/2", product_id: p12.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/3", product_id: p13.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/4", product_id: p14.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/5", product_id: p15.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/6", product_id: p16.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/7", product_id: p17.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/8", product_id: p18.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/9", product_id: p19.id)
ProductImage.create(url: "http://lorempixel.com/480/640/technics/10", product_id: p20.id)
1