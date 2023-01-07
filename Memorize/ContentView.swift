//
//  ContentView.swift
//  Memorize
//
//  Created by João Victor Garcia on 26/10/22.
//

import SwiftUI

struct ContentView: View {
        
    
    @State var index: Int = 0;
    
    @State var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I","J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "X", "W", "Y", "Z"]
    @State var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"]
    @State var vehicles = ["🚗", "🚌", "🚎", "🏎", "🚑", "🛵", "✈️", "🚁", "🚀", "⛵️", "🛶", "⛴"]

    
    
     var body: some View {
          VStack{
           Text("MEMORIZE!").font(.title).fontWeight(.bold).padding(.horizontal, 50.0)

           ScrollView{
               LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 65))],
                content: {
                 if index == 0 {
                 ForEach(letters, id: \.self) {letter in CardView(content: letter).aspectRatio(2/3,contentMode: .fit)}
                 } else if (index == 1) {
                 ForEach(numbers, id: \.self) {number in CardView(content: number).aspectRatio(2/3,contentMode: .fit)}
                 } else {
                 ForEach(vehicles, id: \.self) {vehicle in CardView(content: vehicle).aspectRatio(2/3,contentMode: .fit)}
                 }
                }
               )
              }
              
              
          Spacer(minLength: 20.0)
          
          HStack{
           Button(
            action: {
            letters.shuffle()
            index = 0
            },
            label: {
             VStack{
             Image(systemName: "a.circle")
             Text("Letters")
             }
            }
           ).foregroundColor(Color.purple)

           Spacer(minLength: 20.0)

              
           Button(
            action: {
            numbers.shuffle()
            index = 1
            },
            label: {
             VStack{
             Image(systemName: "1.circle")
             Text("Numbers")
             }
            }
           ).foregroundColor(Color.purple)
              
          Spacer(minLength: 20.0)
              
          Button(
            action: {
             vehicles.shuffle()
             index = 2
          },
            label: {
             VStack{
             Image(systemName: "car")
             Text("Vehicles")
            }
          }
         ).foregroundColor(Color.purple)
              
        }.font(.title3)
       }.padding(/*@START_MENU_TOKEN@*/.all, 25.0/*@END_MENU_TOKEN@*/)
   }
 }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

