//
//  FoodCustomCellView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 18/04/24.
//

import SwiftUI

struct FoodCustomCellView: View {
    @State private var foods = Food.preview()
    @State private var healthyFoods = [Food(name: "Pizza", icon: "🍕", isFavorite: false), Food(name: "Burgur", icon: "🍔", isFavorite: false)]
    
    var body: some View {
        List{
            ForEach(foods) { food in
                FoodRow(food: food)
            }
            
            ForEach(healthyFoods) { food in
                FoodRow(food: food)
            }
            
            Button{
                let newFood = Food(name: "New", icon: "\(foods.count)", isFavorite: false)
                withAnimation {
                    foods.append(newFood)
                    
                }
            } label: {
                Label("Add", systemImage: "plus")
            }
        }
    }
}

#Preview {
    FoodCustomCellView()
}

//struct FoodRow: View {
//    let food: Food
//    
//    var body: some View {
//        HStack {
//            Text(food.icon)
//            Text(food.name)
//            Spacer()
//            Image(systemName: food.isFavorite ? "heart.fill" : "heart")
//
//        }
//    }
//}
