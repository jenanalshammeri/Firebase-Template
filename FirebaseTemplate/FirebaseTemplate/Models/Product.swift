//
//  Product.swift
//  MA'WA
//
//  Created by Jenan Alshammeri on 7/15/20.
//  Copyright © 2020 JenanAlshammeri. All rights reserved.
//

import Foundation

struct Product {
    var name : String
    var brand : String
    var price : String
    var description : String?
}

var productData : [Product] = [
    Product(name: "Acana Adult Large", brand: "Acana", price: "KD 25.500", description: "ACANA Adult Large Breed is loaded with free-run chicken, wild-caught flounder, and cage-free eggs in nourishing WholePrey ratios."),
    Product(name: "#1 Amp It Up for Dogs and Cats", brand: "#1 All Systems", price: "KD 6.950", description: "The NEW hair cream / paste that is formulated to produce an amplified, defined, volumized, texturized style. Use to sculpt and mold the coat into desired shape."),
    Product(name: "EzyDog Chest Plate Harness", brand: "EzyDog", price: "KD 7.000", description: "Simplicity, ease, comfort, and safety. The adjustable, sturdy, and ergonomic dog control harness by EzyDog is the best dog control harness out there and is a harness that makes walking your dog easy."),
    Product(name: "Gimdog Adjustable Collar", brand: "GimDog", price: "KD 6.560", description: "Made from woven nylon, in six rich solid colors. Features strong bar-tack stitching."),
    Product(name: "GimCat Sticks Turkey & Rabbit Cat Treats", brand: "GimCat", price: "KD 0.500", description: "Have a high meat content and contain lots of calcium. Calcium is important for development of the bones, muscles and teeth. GimCat Kitten Sticks – the perfect chewing and gnawing fun for between meals"),
    Product(name: "Happy Pet Fruity Mineral Grape", brand: "Happy Pet", price: "KD 0.500", description: "Tasty, fruit flavoured Brands/Minerals for small animal health. This funky Fruity Mineral snack will ensure that your small animal receives all the salt essential for keeping them healthy."),
    Product(name: "Groomer's Goop Shampoo", brand: "Goop", price: "KD 3.500", description: "Not only does it gently clean your pet's coat, but it also uses Aloe Vera, Vitamin E, honey, coconut and almond oils to detangle and leave your pet's skin and coat fully moisturized."),
    Product(name: "GimDog Sport Snacks", brand: "GimDog", price: "KD 1.000", description: "GimDog Sport Snacks are tasty treats for dogs taking part in sport activities. The snacks are grain free and contain L-carnitine; an active ingredient which enhances performance.")]
