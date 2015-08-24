user = User.create(full_name: "Administrator",
            username: "admin",
            email: "admin@valdivian.com",
            role: "admin",
            password: "adminpass",
            password_confirmation: "adminpass")

user.cart = Cart.create

# Electronics
Item.create(name: "MacBook",
            price: 199999,
            description: "Apple laptop",
            category: "Electronics",
            user_id: 1)

Item.create(name: "iPhone",
            price: 79999,
            description: "Apple smartphone",
            category: "Electronics",
            user_id: 1)

Item.create(name: "iPad",
            price: 99999,
            description: "Apple tablet",
            category: "Electronics",
            user_id: 1)

Item.create(name: "Android Phone",
            price: 69999,
            description: "Google's Smartphone",
            category: "Electronics",
            user_id: 1)

Item.create(name: "Windows Phone",
            price: 9999,
            description: "Microsoft Smartphone",
            category: "Electronics",
            user_id: 1)

Item.create(name: "TV",
            price: 59999,
            description: "Watch netflix for 10 hours",
            category: "Electronics",
            user_id: 1)

Item.create(name: "Roku",
            price: 4999,
            description: "Streaming box",
            category: "Electronics",
            user_id: 1)

Item.create(name: "Dell Monitor",
            price: 14999,
            description: "Swivels everywhere",
            category: "Electronics",
            user_id: 1)

Item.create(name: "1TB Hard Drive",
            price: 9999,
            description: "Will probably die when you need it most",
            category: "Electronics",
            user_id: 1)

Item.create(name: "XBox",
            price: 49999,
            description: "Halo machine",
            category: "Electronics",
            user_id: 1)

# Outdoor Equipment
Item.create(name: "Football Helmet",
            price: 4999,
            description: "Protective head gear for football",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Baseball Bat",
            price: 3999,
            description: "Aluminum bat with a premium rubber grip",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Roller Skates",
            price: 4499,
            description: "2.5in wheels",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Tent",
            price: 9999,
            description: "Hide from bears",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Grill",
            price: 39999,
            description: "Burn a bunch of steaks at your family reunion",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Fire Pit",
            price: 7999,
            description: "Hopefully you were a boy scout",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Volleyball Net",
            price: 2999,
            description: "Show everyone you can't play volleyball",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Frisbee",
            price: 1299,
            description: "Caleb is awesome at ultimate frisbee",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Tiki Torch",
            price: 2299,
            description: "Accidentally get caught on fire",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Bocce Ball",
            price: 8499,
            description: "Professional Bocce ball set",
            category: "Outdoor Equipment",
            user_id: 1)

# Clothing and Accessories
Item.create(name: "T-Shirt",
            price: 1999,
            description: "Plain white t-shirt",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Slacks",
            price: 7999,
            description: "No-iron slacks with pin stripes",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Neck Tie",
            price: 4499,
            description: "Slim plaid tie",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Sweater",
            price: 2499,
            description: "Destroy your friends in an ugly sweater contest",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Jeans",
            price: 3999,
            description: "Very tight jeans",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Converse",
            price: 4499,
            description: "Caleb's feet",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Socks",
            price: 999,
            description: "Foot warmers",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Cardigan",
            price: 1999,
            description: "Hopped off the plane at LAX, with a dream and a...",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Scarf",
            price: 999,
            description: "Look awesome and feel awesome",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Beanie",
            price: 799,
            description: "All year long",
            category: "Clothing and Accessories",
            user_id: 1)

# Music Equipment
Item.create(name: "Guitar",
            price: 89999,
            description: "Whip it out at parties",
            category: "Music Equipment",
            user_id: 1)

Item.create(name: "Drums",
            price: 99999,
            description: "Annoy your neighbors",
            category: "Music Equipment",
            user_id: 1)

Item.create(name: "Ukulele",
            price: 8499,
            description: "Secrely awesome",
            category: "Music Equipment",
            user_id: 1)

Item.create(name: "Microphone",
            price: 9999,
            description: "Check check check",
            category: "Music Equipment",
            user_id: 1)

Item.create(name: "Bass Guitar",
            price: 79999,
            description: "5-string or go home",
            category: "Music Equipment",
            user_id: 1)

Item.create(name: "Studio Monitors",
            price: 29999,
            description: "Watch youtube videos really loud",
            category: "Music Equipement",
            user_id: 1)

Item.create(name: "Distortion Pedal",
            price: 9999,
            description: "Not a substitute for good amp distortion",
            category: "Music Equipement",
            user_id: 1)

Item.create(name: "Recording Interface",
            price: 39999,
            description: "Home recording studios are awesome",
            category: "Music Equipement",
            user_id: 1)

Item.create(name: "Guitar Cable",
            price: 2999,
            description: "Just buy a good one",
            category: "Music Equipement",
            user_id: 1)

Item.create(name: "Tuner",
            price: 1499,
            description: "Good",
            category: "Music Equipement",
            user_id: 1)

# Food
Item.create(name: "Burrito",
            price: 799,
            description: "Gives you the poops",
            category: "Food",
            user_id: 1)

Item.create(name: "Cheetos",
            price: 99,
            description: "Orange poops",
            category: "Food",
            user_id: 1)

Item.create(name: "Tofu",
            price: 499,
            description: "For Danny :)",
            category: "Food",
            user_id: 1)

Item.create(name: "Pizza",
            price: 1499,
            description: "Caleb's life for the last 7 years",
            category: "Food",
            user_id: 1)

Item.create(name: "Ramen",
            price: 199,
            description: "College food",
            category: "Food",
            user_id: 1)

Item.create(name: "Spaghetti",
            price: 399,
            description: "Make a mess on your clothes",
            category: "Food",
            user_id: 1)

Item.create(name: "Water",
            price: 0.00,
            description: "Don't buy bottled water. It's just filtered tap water",
            category: "Food",
            user_id: 1)

Item.create(name: "Hamburger",
            price: 899,
            description: "3 patties, minimum",
            category: "Food",
            user_id: 1)

Item.create(name: "French Fries",
            price: 199,
            description: "'belongs_to :hamburger'",
            category: "Food",
            user_id: 1)

Item.create(name: "Soda",
            price: 199,
            description: "Slowly killing you",
            category: "Food",
            user_id: 1)

# Home Decor
Item.create(name: "Couch",
            price: 19999,
            description: "For Pete",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Bed",
            price: 49999,
            description: "For sleeps",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Curtains",
            price: 2499,
            description: "Sleep in longer",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Dining Table",
            price: 14999,
            description: "Covered with junk so you can't eat there",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Coffee Table",
            price: 8999,
            description: "For everything but coffee",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Book Shelf",
            price: 9999,
            description: "For all of Danny's crazy books",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Picture Frames",
            price: 999,
            description: "The stock photo is better than yours",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Wall Clock",
            price: 999,
            description: "About 2 minutes slow",
            category: "Home Decor",
            user_id: 1)

Item.create(name: "Salt Lamp",
            price: 2999,
            description: "Freakin' awesome. Look it up.",
            category: "Food",
            user_id: 1)

Item.create(name: "Chandelier",
            price: 199,
            description: "I'm gonna swing from the..",
            category: "Home Decor",
            user_id: 1)
