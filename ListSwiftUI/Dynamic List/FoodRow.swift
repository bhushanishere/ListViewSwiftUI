//
//  FoodRow.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 19/04/24.
//

import SwiftUI

struct FoodRow: View {
    let food: Food
    
    var body: some View {
        HStack {
            Text(food.icon)
            Text(food.name)
            Spacer()
            Image(systemName: food.isFavorite ? "heart.fill" : "heart")

        }
    }
}
#Preview {
    FoodRow(food: Food(name: "Pizza", icon: "🍕", isFavorite: false))
        .padding()
}
