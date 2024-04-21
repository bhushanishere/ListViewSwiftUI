//
//  Food.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 18/04/24.
//

import Foundation

struct Food: Identifiable {
    var name: String
    var icon: String
    var isFavorite: Bool
    var id = UUID()
    
    static func preview() -> [Food] {
        [Food(name: "Apple", icon: "🍎", isFavorite: true),
         Food(name: "Banana", icon: "🍌", isFavorite: false),
         Food(name: "Cherry", icon: "🍒", isFavorite: false),
         Food(name: "Mango", icon: "🥭", isFavorite: false),
         Food(name: "Kiwi", icon: "🥝", isFavorite: false),
         Food(name: "Strawberry", icon: "🍓", isFavorite: false),
         Food(name: "Grapes", icon: "🍇", isFavorite: false)
        ]
    }
}
