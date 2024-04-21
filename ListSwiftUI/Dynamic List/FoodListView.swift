//
//  FoodListView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 18/04/24.
//

import SwiftUI

struct FoodListView: View {
    @State private var foods = Food.preview()
    
    var body: some View {
        NavigationView {
            List(foods) { food in
                HStack{
                    Text(food.icon)
                    Text(food.name)
                }
            }
            .toolbar{
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
}

#Preview {
    FoodListView()
}
