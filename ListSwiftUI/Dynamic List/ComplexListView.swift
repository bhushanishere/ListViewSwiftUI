//
//  ComplexListView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 18/04/24.
//

import SwiftUI

struct ComplexListView: View {
    
    @State private var foods = Food.preview()
    @State private var healthyFoods = [Food(name: "Pizza", icon: "🍕", isFavorite: false), Food(name: "Burgur", icon: "🍔", isFavorite: false)]
    
    var body: some View {
        List{
            ForEach(foods) { food in
                /*@START_MENU_TOKEN@*/Text(food.name)/*@END_MENU_TOKEN@*/
            }
            
            ForEach(healthyFoods) { food in
                /*@START_MENU_TOKEN@*/Text(food.name)/*@END_MENU_TOKEN@*/
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
    ComplexListView()
}
