//
//  CardView.swift
//  Memorize
//
//  Created by João Victor Garcia on 29/10/22.
//

import SwiftUI


struct CardView: View{
    @State var isShowingFace: Bool = true
    var content: String

    var body: some View {
        
    return ZStack(alignment: .center) {
        let shape = RoundedRectangle(cornerRadius: 20)
        
        if (isShowingFace) {
          shape.fill().foregroundColor(Color.white)
          shape.stroke(lineWidth: 3.0).foregroundColor(Color.purple)
          Text(content).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.black)
        } else {
            shape.fill().foregroundColor(Color.purple)
         }
       }.onTapGesture {
           isShowingFace = !isShowingFace
     }
                      
   }
}
