//
//  SectionFoodListView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 19/04/24.
//

import SwiftUI

struct SectionFoodListView: View {
    @State private var foods = Food.preview()
    @State private var healthyFoods = [Food(name: "Pizza", icon: "🍕", isFavorite: false), Food(name: "Burgur", icon: "🍔", isFavorite: false)]
    
    var body: some View {
        List{
            Section {
                ForEach(foods) { food in
                    FoodRow(food: food)
                }
            } header: {
                Text("Healty Foods")
            }
            
            Section {
                DisclosureGroup("Unhealty Foods") {
                    ForEach(healthyFoods) { food in
                        FoodRow(food: food)
                    }
                }
                .font(.title3)
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
    SectionFoodListView()
}
