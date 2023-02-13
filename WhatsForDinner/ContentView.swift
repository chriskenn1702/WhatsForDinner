//
//  ContentView.swift
//  WhatsForDinner
//
//  Created by Christopher Kennedy on 2/13/23.
//

import SwiftUI

struct ContentView: View {
    @State var foodName = ""
    private let foods = ["Burgers", "Burritos", "Cobb Salad", "Pepperoni Pizza", "Sushi"]
    var body: some View {
        VStack {
            Text("Whats For Dinner?")
                .font(.largeTitle)
                .fontWeight(.black)
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(.teal)
            
            Spacer()
            
            Image(foodName)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 300)
                .animation(.easeInOut(duration: 0.25), value: foodName)
            
            Text(foodName)
                .font(.largeTitle)
                .fontWeight(.thin)
                .animation(.easeInOut(duration: 0.25), value: foodName)
            
            Spacer()
            
            Button(){
                var newMeal: String
                repeat{
                    newMeal = foods.randomElement()!
                }while newMeal == foodName
                foodName = newMeal

            }label: {
                Image(systemName: "fork.knife.circle")
                Text("Whats For Dinner?")
    
            }
            .buttonStyle(.borderedProminent)
            .tint(.teal)
            .font(.largeTitle)
            .padding()

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
