# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create(email: "admin@store.com", password: "password", password_confirmation: "password")
[{name: "Bread", description: "Baked Fresh every day.", price: "3.50"},
 {name: "Eggs", description: "Dozen of the best eggs on the market.", price: "2.99"},
 {name: "Chicken Breast", description: "Sliced daily at your local butcher", price: "10.00"},
 {name: "Bananas", description: "Taken from the ripest trees in your area.", price: "1.99"},
 {name: "After Shave", description: "5.1-fluid ounce bottle of shave cream", price: "7.86"},
 {name: "Wooden Brush", description: "Brush Made With 100% Natural Badger Hair, It Can Generate Rich and Warm Lather", price: "17.99"},
 {name: "Viking Blade", description: "Premium high-end heavy duty Swedish materials & SUPERB quality control, not cheap metals like other identical knockoffs (Same-same BUT different). A SUPERIOR, MANLY Shaving Weapon without burning your pocket.", price: "36.97"},
 {name: "Nature Valley Bars", description: "100% all natural. 10 gram of protein. Pack of 26", price: "16.92"},
 {name: "KIND Healthy Bars", description: "Can't choose between all our flavors? You don't have to. The KIND Healthy Grains Bar Variety Pack includes Maple Pumpkin Seeds with Sea Salt, Double Dark Chocolate Chunk, and Peanut Butter Dark Chocolate assortments in one mixed case.", price: "9.49"},
 {name: "Bare Natural Coconut Chips", description: "Real coconuts, baked 'til they're crave-ably crunchy. Snacks gone simple. Pack of 2", price: "27.26"},
 {name: "Dang Gluten Free Coconut Chips", description: "Contains 12 - 1.43 Ounce Bags", price: "18.04"},
 {name: "Tanka Bar Buffalo Meat with Cranberries", description: "Made from tart-sweet cranberries and prairie-raised buffalo", price: "33.09"},
 {name: "TASTY Grass-Fed Beef Bars", description: "MADE WITH 100% GRASS-FED BEEF. NO SUGAR! Only the good stuff in these Grass Fed Beef Bars. The ultimate protein bar! These are actually epic bars in the real sense of the word!", price: "18.95"},
 {name: "Larabar Gluten Free Bar", description: "WHOLESOME FOOD: Tasty snack bars that are Food Made From Food", price: "15.17"},
 {name: "AmazonBasics 6-Sheet Shredder", description: "Cross-cut paper shredder with 6-sheet capacity; destroys credit cards (one at a time)", price: "29.99"},
 {name: "TI-84 Plus Graphics Calculator", description: "Large LCD display for plotting out graphs and equations, up to 10 rectangular functions, 6 parametric expressions, 6 polar expressions and 3 recursively-defined sequences.", price: "104.50"},
 {name: "DYMO LabelManager", description: "Type text quickly on the computer-style QWERTY keyboard, edit with one-touch fast-formatting keys and print for perfect, professional labels every time", price: "14.97"},
 {name: "Pendaflex Letter Size File Folders", description: "Durable 11 pt. covers in assorted colors: violet, blue, yellow, red, bright green; darker color exterior and lighter interior prevents misfiling", price: "7.34"},
 {name: "Pilot G2 Premium Pen", description: "G2 writes longer than the average of the top branded gel ink pens", price: "10.75"},
 {name: "Sharpie Pocket Highlighters", description: "Bright, easy-to-see colors make your highlighted text easy to read", price: "6.18"},
].each do |hash|
	u.products.create(hash)
end