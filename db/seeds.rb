User.create(full_name: "Administrator",
            username: "admin",
            email: "admin@valdivian.com",
            password: "adminpass",
            password_confirmation: "adminpass")

Item.create(name: "MacBook",
            price: "200000",
            description: "Apple laptop",
            category: "Electronics",
            user_id: 1)

Item.create(name: "iPhone",
            price: "80000",
            description: "Apple smartphone",
            category: "Electronics",
            user_id: 1)

Item.create(name: "iPad",
            price: "100000",
            description: "Apple tablet",
            category: "Electronics",
            user_id: 1)

Item.create(name: "Football Helmet",
            price: "5000",
            description: "Protective head gear for football",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Baseball Bat",
            price: "5000",
            description: "Aluminum bat with a premium rubber grip",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "Roller Skates",
            price: "4500",
            description: "2.5in wheels",
            category: "Outdoor Equipment",
            user_id: 1)

Item.create(name: "T-Shirt",
            price: "2000",
            description: "Plain white t-shirt",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Slacks",
            price: "8000",
            description: "No-iron slacks with pin stripes",
            category: "Clothing and Accessories",
            user_id: 1)

Item.create(name: "Neck Tie",
            price: "4500",
            description: "Slim plaid tie",
            category: "Clothing and Accessories",
            user_id: 1)
